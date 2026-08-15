package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.ScaleAnimationValue;

/* JADX INFO: loaded from: classes.dex */
public class ScaleAnimation extends ColorAnimation {
    static final String ANIMATION_SCALE = "ANIMATION_SCALE";
    static final String ANIMATION_SCALE_REVERSE = "ANIMATION_SCALE_REVERSE";
    public static final float DEFAULT_SCALE_FACTOR = 0.7f;
    public static final float MAX_SCALE_FACTOR = 1.0f;
    public static final float MIN_SCALE_FACTOR = 0.3f;
    int radius;
    float scaleFactor;
    private ScaleAnimationValue value;

    public ScaleAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.value = new ScaleAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.ColorAnimation, com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ValueAnimator createAnimator() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(350L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.ScaleAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ScaleAnimation.this.onAnimateUpdated(valueAnimator2);
            }
        });
        return valueAnimator;
    }

    public ScaleAnimation with(int i, int i2, int i3, float f) {
        if (this.animator != 0 && hasChanges(i, i2, i3, f)) {
            this.colorStart = i;
            this.colorEnd = i2;
            this.radius = i3;
            this.scaleFactor = f;
            ((ValueAnimator) this.animator).setValues(createColorPropertyHolder(false), createColorPropertyHolder(true), createScalePropertyHolder(false), createScalePropertyHolder(true));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateUpdated(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR")).intValue();
        int iIntValue2 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR_REVERSE")).intValue();
        int iIntValue3 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_SCALE)).intValue();
        int iIntValue4 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_SCALE_REVERSE)).intValue();
        this.value.setColor(iIntValue);
        this.value.setColorReverse(iIntValue2);
        this.value.setRadius(iIntValue3);
        this.value.setRadiusReverse(iIntValue4);
        if (this.listener != null) {
            this.listener.onValueUpdated(this.value);
        }
    }

    protected PropertyValuesHolder createScalePropertyHolder(boolean z) {
        int i;
        int i2;
        String str;
        if (z) {
            i2 = this.radius;
            i = (int) (i2 * this.scaleFactor);
            str = ANIMATION_SCALE_REVERSE;
        } else {
            i = this.radius;
            i2 = (int) (i * this.scaleFactor);
            str = ANIMATION_SCALE;
        }
        PropertyValuesHolder propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i2, i);
        propertyValuesHolderOfInt.setEvaluator(new IntEvaluator());
        return propertyValuesHolderOfInt;
    }

    private boolean hasChanges(int i, int i2, int i3, float f) {
        return (this.colorStart == i && this.colorEnd == i2 && this.radius == i3 && this.scaleFactor == f) ? false : true;
    }
}
