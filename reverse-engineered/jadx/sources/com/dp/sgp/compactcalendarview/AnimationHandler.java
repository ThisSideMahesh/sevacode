package com.dp.sgp.compactcalendarview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.OvershootInterpolator;

/* JADX INFO: loaded from: classes.dex */
class AnimationHandler {
    private static final int HEIGHT_ANIM_DURATION_MILLIS = 650;
    private static final int INDICATOR_ANIM_DURATION_MILLIS = 600;
    private CompactCalendarView.CompactCalendarAnimationListener compactCalendarAnimationListener;
    private CompactCalendarController compactCalendarController;
    private CompactCalendarView compactCalendarView;
    private boolean isAnimating = false;

    AnimationHandler(CompactCalendarController compactCalendarController, CompactCalendarView compactCalendarView) {
        this.compactCalendarController = compactCalendarController;
        this.compactCalendarView = compactCalendarView;
    }

    void setCompactCalendarAnimationListener(CompactCalendarView.CompactCalendarAnimationListener compactCalendarAnimationListener) {
        this.compactCalendarAnimationListener = compactCalendarAnimationListener;
    }

    void openCalendar() {
        if (this.isAnimating) {
            return;
        }
        this.isAnimating = true;
        Animation collapsingAnimation = getCollapsingAnimation(true);
        collapsingAnimation.setDuration(650L);
        collapsingAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        this.compactCalendarController.setAnimationStatus(2);
        setUpAnimationLisForOpen(collapsingAnimation);
        this.compactCalendarView.getLayoutParams().height = 0;
        this.compactCalendarView.requestLayout();
        this.compactCalendarView.startAnimation(collapsingAnimation);
    }

    void closeCalendar() {
        if (this.isAnimating) {
            return;
        }
        this.isAnimating = true;
        Animation collapsingAnimation = getCollapsingAnimation(false);
        collapsingAnimation.setDuration(650L);
        collapsingAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        setUpAnimationLisForClose(collapsingAnimation);
        this.compactCalendarController.setAnimationStatus(2);
        this.compactCalendarView.getLayoutParams().height = this.compactCalendarView.getHeight();
        this.compactCalendarView.requestLayout();
        this.compactCalendarView.startAnimation(collapsingAnimation);
    }

    void openCalendarWithAnimation() {
        if (this.isAnimating) {
            return;
        }
        this.isAnimating = true;
        Animator indicatorAnimator = getIndicatorAnimator(1.0f, this.compactCalendarController.getDayIndicatorRadius());
        Animation exposeCollapsingAnimation = getExposeCollapsingAnimation(true);
        this.compactCalendarView.getLayoutParams().height = 0;
        this.compactCalendarView.requestLayout();
        setUpAnimationLisForExposeOpen(indicatorAnimator, exposeCollapsingAnimation);
        this.compactCalendarView.startAnimation(exposeCollapsingAnimation);
    }

    void closeCalendarWithAnimation() {
        if (this.isAnimating) {
            return;
        }
        this.isAnimating = true;
        Animator indicatorAnimator = getIndicatorAnimator(this.compactCalendarController.getDayIndicatorRadius(), 1.0f);
        Animation exposeCollapsingAnimation = getExposeCollapsingAnimation(false);
        this.compactCalendarView.getLayoutParams().height = this.compactCalendarView.getHeight();
        this.compactCalendarView.requestLayout();
        setUpAnimationLisForExposeClose(indicatorAnimator, exposeCollapsingAnimation);
        this.compactCalendarView.startAnimation(exposeCollapsingAnimation);
    }

    private void setUpAnimationLisForExposeOpen(final Animator animator, Animation animation) {
        animation.setAnimationListener(new AnimationListener() { // from class: com.dp.sgp.compactcalendarview.AnimationHandler.1
            @Override // com.dp.sgp.compactcalendarview.AnimationListener, android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
                AnimationHandler.this.compactCalendarController.setAnimationStatus(1);
            }

            @Override // com.dp.sgp.compactcalendarview.AnimationListener, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                animator.start();
            }
        });
        animator.addListener(new AnimatorListener() { // from class: com.dp.sgp.compactcalendarview.AnimationHandler.2
            @Override // com.dp.sgp.compactcalendarview.AnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                AnimationHandler.this.compactCalendarController.setAnimationStatus(3);
            }

            @Override // com.dp.sgp.compactcalendarview.AnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                AnimationHandler.this.compactCalendarController.setAnimationStatus(0);
                AnimationHandler.this.onOpen();
                AnimationHandler.this.isAnimating = false;
            }
        });
    }

    private void setUpAnimationLisForExposeClose(final Animator animator, Animation animation) {
        animation.setAnimationListener(new AnimationListener() { // from class: com.dp.sgp.compactcalendarview.AnimationHandler.3
            @Override // com.dp.sgp.compactcalendarview.AnimationListener, android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
                AnimationHandler.this.compactCalendarController.setAnimationStatus(1);
                animator.start();
            }

            @Override // com.dp.sgp.compactcalendarview.AnimationListener, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                AnimationHandler.this.compactCalendarController.setAnimationStatus(0);
                AnimationHandler.this.onClose();
                AnimationHandler.this.isAnimating = false;
            }
        });
        animator.addListener(new AnimatorListener() { // from class: com.dp.sgp.compactcalendarview.AnimationHandler.4
            @Override // com.dp.sgp.compactcalendarview.AnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
            }

            @Override // com.dp.sgp.compactcalendarview.AnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                AnimationHandler.this.compactCalendarController.setAnimationStatus(3);
            }
        });
    }

    private Animation getExposeCollapsingAnimation(boolean z) {
        Animation collapsingAnimation = getCollapsingAnimation(z);
        collapsingAnimation.setDuration(650L);
        collapsingAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        return collapsingAnimation;
    }

    private Animation getCollapsingAnimation(boolean z) {
        CompactCalendarView compactCalendarView = this.compactCalendarView;
        CompactCalendarController compactCalendarController = this.compactCalendarController;
        return new CollapsingAnimation(compactCalendarView, compactCalendarController, compactCalendarController.getTargetHeight(), getTargetGrowRadius(), z);
    }

    private Animator getIndicatorAnimator(float f, float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        valueAnimatorOfFloat.setDuration(600L);
        valueAnimatorOfFloat.setInterpolator(new OvershootInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.compactcalendarview.AnimationHandler.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimationHandler.this.compactCalendarController.setGrowFactorIndicator(((Float) valueAnimator.getAnimatedValue()).floatValue());
                AnimationHandler.this.compactCalendarView.invalidate();
            }
        });
        return valueAnimatorOfFloat;
    }

    private int getTargetGrowRadius() {
        return (int) (Math.sqrt((this.compactCalendarController.getTargetHeight() * this.compactCalendarController.getTargetHeight()) + (this.compactCalendarController.getWidth() * this.compactCalendarController.getWidth())) * 0.5d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOpen() {
        CompactCalendarView.CompactCalendarAnimationListener compactCalendarAnimationListener = this.compactCalendarAnimationListener;
        if (compactCalendarAnimationListener != null) {
            compactCalendarAnimationListener.onOpened();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClose() {
        CompactCalendarView.CompactCalendarAnimationListener compactCalendarAnimationListener = this.compactCalendarAnimationListener;
        if (compactCalendarAnimationListener != null) {
            compactCalendarAnimationListener.onClosed();
        }
    }

    private void setUpAnimationLisForOpen(Animation animation) {
        animation.setAnimationListener(new AnimationListener() { // from class: com.dp.sgp.compactcalendarview.AnimationHandler.6
            @Override // com.dp.sgp.compactcalendarview.AnimationListener, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                super.onAnimationEnd(animation2);
                AnimationHandler.this.onOpen();
                AnimationHandler.this.isAnimating = false;
            }
        });
    }

    private void setUpAnimationLisForClose(Animation animation) {
        animation.setAnimationListener(new AnimationListener() { // from class: com.dp.sgp.compactcalendarview.AnimationHandler.7
            @Override // com.dp.sgp.compactcalendarview.AnimationListener, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                super.onAnimationEnd(animation2);
                AnimationHandler.this.onClose();
                AnimationHandler.this.isAnimating = false;
            }
        });
    }

    public boolean isAnimating() {
        return this.isAnimating;
    }
}
