package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.WormAnimationValue;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class WormAnimation extends BaseAnimation<AnimatorSet> {
    int coordinateEnd;
    int coordinateStart;
    boolean isRightSide;
    int radius;
    int rectLeftEdge;
    int rectRightEdge;
    private WormAnimationValue value;

    public WormAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.value = new WormAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public AnimatorSet createAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        return animatorSet;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public WormAnimation duration(long j) {
        super.duration(j);
        return this;
    }

    public WormAnimation with(int i, int i2, int i3, boolean z) {
        if (hasChanges(i, i2, i3, z)) {
            this.animator = createAnimator();
            this.coordinateStart = i;
            this.coordinateEnd = i2;
            this.radius = i3;
            this.isRightSide = z;
            int i4 = i - i3;
            this.rectLeftEdge = i4;
            this.rectRightEdge = i + i3;
            this.value.setRectStart(i4);
            this.value.setRectEnd(this.rectRightEdge);
            RectValues rectValuesCreateRectValues = createRectValues(z);
            long j = this.animationDuration / 2;
            ((AnimatorSet) this.animator).playSequentially(createWormAnimator(rectValuesCreateRectValues.fromX, rectValuesCreateRectValues.toX, j, false, this.value), createWormAnimator(rectValuesCreateRectValues.reverseFromX, rectValuesCreateRectValues.reverseToX, j, true, this.value));
        }
        return this;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public WormAnimation progress(float f) {
        if (this.animator == 0) {
            return this;
        }
        long j = (long) (f * this.animationDuration);
        Iterator<Animator> it = ((AnimatorSet) this.animator).getChildAnimations().iterator();
        while (it.hasNext()) {
            ValueAnimator valueAnimator = (ValueAnimator) it.next();
            long duration = valueAnimator.getDuration();
            if (j <= duration) {
                duration = j;
            }
            valueAnimator.setCurrentPlayTime(duration);
            j -= duration;
        }
        return this;
    }

    ValueAnimator createWormAnimator(int i, int i2, long j, final boolean z, final WormAnimationValue wormAnimationValue) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(j);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.WormAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                WormAnimation.this.onAnimateUpdated(wormAnimationValue, valueAnimator, z);
            }
        });
        return valueAnimatorOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateUpdated(WormAnimationValue wormAnimationValue, ValueAnimator valueAnimator, boolean z) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (this.isRightSide) {
            if (!z) {
                wormAnimationValue.setRectEnd(iIntValue);
            } else {
                wormAnimationValue.setRectStart(iIntValue);
            }
        } else if (!z) {
            wormAnimationValue.setRectStart(iIntValue);
        } else {
            wormAnimationValue.setRectEnd(iIntValue);
        }
        if (this.listener != null) {
            this.listener.onValueUpdated(wormAnimationValue);
        }
    }

    boolean hasChanges(int i, int i2, int i3, boolean z) {
        return (this.coordinateStart == i && this.coordinateEnd == i2 && this.radius == i3 && this.isRightSide == z) ? false : true;
    }

    RectValues createRectValues(boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        if (z) {
            int i5 = this.coordinateStart;
            int i6 = this.radius;
            i = i5 + i6;
            int i7 = this.coordinateEnd;
            i2 = i7 + i6;
            i3 = i5 - i6;
            i4 = i7 - i6;
        } else {
            int i8 = this.coordinateStart;
            int i9 = this.radius;
            i = i8 - i9;
            int i10 = this.coordinateEnd;
            i2 = i10 - i9;
            i3 = i8 + i9;
            i4 = i10 + i9;
        }
        return new RectValues(i, i2, i3, i4);
    }

    class RectValues {
        final int fromX;
        final int reverseFromX;
        final int reverseToX;
        final int toX;

        RectValues(int i, int i2, int i3, int i4) {
            this.fromX = i;
            this.toX = i2;
            this.reverseFromX = i3;
            this.reverseToX = i4;
        }
    }
}
