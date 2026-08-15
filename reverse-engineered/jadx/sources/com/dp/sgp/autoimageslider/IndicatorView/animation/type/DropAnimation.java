package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.DropAnimationValue;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DropAnimation extends BaseAnimation<AnimatorSet> {
    private int heightEnd;
    private int heightStart;
    private int radius;
    private DropAnimationValue value;
    private int widthEnd;
    private int widthStart;

    private enum AnimationType {
        Width,
        Height,
        Radius
    }

    public DropAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.value = new DropAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public AnimatorSet createAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        return animatorSet;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public DropAnimation progress(float f) {
        if (this.animator != 0) {
            long j = (long) (f * this.animationDuration);
            boolean z = false;
            Iterator<Animator> it = ((AnimatorSet) this.animator).getChildAnimations().iterator();
            while (it.hasNext()) {
                ValueAnimator valueAnimator = (ValueAnimator) it.next();
                long duration = valueAnimator.getDuration();
                long j2 = z ? j - duration : j;
                if (j2 >= 0) {
                    if (j2 >= duration) {
                        j2 = duration;
                    }
                    if (valueAnimator.getValues() != null && valueAnimator.getValues().length > 0) {
                        valueAnimator.setCurrentPlayTime(j2);
                    }
                    if (!z && duration >= this.animationDuration) {
                        z = true;
                    }
                }
            }
        }
        return this;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public DropAnimation duration(long j) {
        super.duration(j);
        return this;
    }

    public DropAnimation with(int i, int i2, int i3, int i4, int i5) {
        if (hasChanges(i, i2, i3, i4, i5)) {
            this.animator = createAnimator();
            this.widthStart = i;
            this.widthEnd = i2;
            this.heightStart = i3;
            this.heightEnd = i4;
            this.radius = i5;
            double d = i5;
            Double.isNaN(d);
            int i6 = (int) (d / 1.5d);
            long j = this.animationDuration / 2;
            ValueAnimator valueAnimatorCreateValueAnimation = createValueAnimation(i, i2, this.animationDuration, AnimationType.Width);
            ValueAnimator valueAnimatorCreateValueAnimation2 = createValueAnimation(i3, i4, j, AnimationType.Height);
            ValueAnimator valueAnimatorCreateValueAnimation3 = createValueAnimation(i5, i6, j, AnimationType.Radius);
            ((AnimatorSet) this.animator).play(valueAnimatorCreateValueAnimation2).with(valueAnimatorCreateValueAnimation3).with(valueAnimatorCreateValueAnimation).before(createValueAnimation(i4, i3, j, AnimationType.Height)).before(createValueAnimation(i6, i5, j, AnimationType.Radius));
        }
        return this;
    }

    private ValueAnimator createValueAnimation(int i, int i2, long j, final AnimationType animationType) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(j);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.DropAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DropAnimation.this.onAnimatorUpdate(valueAnimator, animationType);
            }
        });
        return valueAnimatorOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimatorUpdate(ValueAnimator valueAnimator, AnimationType animationType) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        int i = AnonymousClass2.$SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$DropAnimation$AnimationType[animationType.ordinal()];
        if (i == 1) {
            this.value.setWidth(iIntValue);
        } else if (i == 2) {
            this.value.setHeight(iIntValue);
        } else if (i == 3) {
            this.value.setRadius(iIntValue);
        }
        if (this.listener != null) {
            this.listener.onValueUpdated(this.value);
        }
    }

    /* JADX INFO: renamed from: com.dp.sgp.autoimageslider.IndicatorView.animation.type.DropAnimation$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$DropAnimation$AnimationType;

        static {
            int[] iArr = new int[AnimationType.values().length];
            $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$DropAnimation$AnimationType = iArr;
            try {
                iArr[AnimationType.Width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$DropAnimation$AnimationType[AnimationType.Height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$dp$sgp$autoimageslider$IndicatorView$animation$type$DropAnimation$AnimationType[AnimationType.Radius.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private boolean hasChanges(int i, int i2, int i3, int i4, int i5) {
        return (this.widthStart == i && this.widthEnd == i2 && this.heightStart == i3 && this.heightEnd == i4 && this.radius == i5) ? false : true;
    }
}
