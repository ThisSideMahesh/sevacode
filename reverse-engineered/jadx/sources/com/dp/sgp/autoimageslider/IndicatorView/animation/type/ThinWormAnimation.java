package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.ThinWormAnimationValue;

/* JADX INFO: loaded from: classes.dex */
public class ThinWormAnimation extends WormAnimation {
    private ThinWormAnimationValue value;

    public ThinWormAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.value = new ThinWormAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.WormAnimation, com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ThinWormAnimation duration(long j) {
        super.duration(j);
        return this;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.WormAnimation
    public WormAnimation with(int i, int i2, int i3, boolean z) {
        if (hasChanges(i, i2, i3, z)) {
            this.animator = createAnimator();
            this.coordinateStart = i;
            this.coordinateEnd = i2;
            this.radius = i3;
            this.isRightSide = z;
            int i4 = i3 * 2;
            this.rectLeftEdge = i - i3;
            this.rectRightEdge = i + i3;
            this.value.setRectStart(this.rectLeftEdge);
            this.value.setRectEnd(this.rectRightEdge);
            this.value.setHeight(i4);
            WormAnimation.RectValues rectValuesCreateRectValues = createRectValues(z);
            double d = this.animationDuration;
            Double.isNaN(d);
            long j = (long) (d * 0.8d);
            double d2 = this.animationDuration;
            Double.isNaN(d2);
            long j2 = (long) (d2 * 0.2d);
            double d3 = this.animationDuration;
            Double.isNaN(d3);
            long j3 = (long) (d3 * 0.5d);
            double d4 = this.animationDuration;
            Double.isNaN(d4);
            long j4 = (long) (d4 * 0.5d);
            ValueAnimator valueAnimatorCreateWormAnimator = createWormAnimator(rectValuesCreateRectValues.fromX, rectValuesCreateRectValues.toX, j, false, this.value);
            ValueAnimator valueAnimatorCreateWormAnimator2 = createWormAnimator(rectValuesCreateRectValues.reverseFromX, rectValuesCreateRectValues.reverseToX, j, true, this.value);
            valueAnimatorCreateWormAnimator2.setStartDelay(j2);
            ValueAnimator valueAnimatorCreateHeightAnimator = createHeightAnimator(i4, i3, j3);
            ValueAnimator valueAnimatorCreateHeightAnimator2 = createHeightAnimator(i3, i4, j3);
            valueAnimatorCreateHeightAnimator2.setStartDelay(j4);
            ((AnimatorSet) this.animator).playTogether(valueAnimatorCreateWormAnimator, valueAnimatorCreateWormAnimator2, valueAnimatorCreateHeightAnimator, valueAnimatorCreateHeightAnimator2);
        }
        return this;
    }

    private ValueAnimator createHeightAnimator(int i, int i2, long j) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(j);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.ThinWormAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ThinWormAnimation.this.onAnimateUpdated(valueAnimator);
            }
        });
        return valueAnimatorOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateUpdated(ValueAnimator valueAnimator) {
        this.value.setHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
        if (this.listener != null) {
            this.listener.onValueUpdated(this.value);
        }
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.WormAnimation, com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ThinWormAnimation progress(float f) {
        if (this.animator != 0) {
            long j = (long) (f * this.animationDuration);
            int size = ((AnimatorSet) this.animator).getChildAnimations().size();
            for (int i = 0; i < size; i++) {
                ValueAnimator valueAnimator = (ValueAnimator) ((AnimatorSet) this.animator).getChildAnimations().get(i);
                long startDelay = j - valueAnimator.getStartDelay();
                long duration = valueAnimator.getDuration();
                if (startDelay > duration) {
                    startDelay = duration;
                } else if (startDelay < 0) {
                    startDelay = 0;
                }
                if ((i != size - 1 || startDelay > 0) && valueAnimator.getValues() != null && valueAnimator.getValues().length > 0) {
                    valueAnimator.setCurrentPlayTime(startDelay);
                }
            }
        }
        return this;
    }
}
