package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.FillAnimationValue;

/* JADX INFO: loaded from: classes.dex */
public class FillAnimation extends ColorAnimation {
    private static final String ANIMATION_RADIUS = "ANIMATION_RADIUS";
    private static final String ANIMATION_RADIUS_REVERSE = "ANIMATION_RADIUS_REVERSE";
    private static final String ANIMATION_STROKE = "ANIMATION_STROKE";
    private static final String ANIMATION_STROKE_REVERSE = "ANIMATION_STROKE_REVERSE";
    public static final int DEFAULT_STROKE_DP = 1;
    private int radius;
    private int stroke;
    private FillAnimationValue value;

    public FillAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.value = new FillAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.ColorAnimation, com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ValueAnimator createAnimator() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(350L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.FillAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                FillAnimation.this.onAnimateUpdated(valueAnimator2);
            }
        });
        return valueAnimator;
    }

    public FillAnimation with(int i, int i2, int i3, int i4) {
        if (this.animator != 0 && hasChanges(i, i2, i3, i4)) {
            this.colorStart = i;
            this.colorEnd = i2;
            this.radius = i3;
            this.stroke = i4;
            ((ValueAnimator) this.animator).setValues(createColorPropertyHolder(false), createColorPropertyHolder(true), createRadiusPropertyHolder(false), createRadiusPropertyHolder(true), createStrokePropertyHolder(false), createStrokePropertyHolder(true));
        }
        return this;
    }

    private PropertyValuesHolder createRadiusPropertyHolder(boolean z) {
        int i;
        int i2;
        String str;
        if (z) {
            i2 = this.radius;
            i = i2 / 2;
            str = ANIMATION_RADIUS_REVERSE;
        } else {
            i = this.radius;
            i2 = i / 2;
            str = ANIMATION_RADIUS;
        }
        PropertyValuesHolder propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i, i2);
        propertyValuesHolderOfInt.setEvaluator(new IntEvaluator());
        return propertyValuesHolderOfInt;
    }

    private PropertyValuesHolder createStrokePropertyHolder(boolean z) {
        String str;
        int i;
        int i2;
        if (z) {
            i2 = this.radius;
            str = ANIMATION_STROKE_REVERSE;
            i = 0;
        } else {
            int i3 = this.radius;
            str = ANIMATION_STROKE;
            i = i3;
            i2 = 0;
        }
        PropertyValuesHolder propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i2, i);
        propertyValuesHolderOfInt.setEvaluator(new IntEvaluator());
        return propertyValuesHolderOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateUpdated(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR")).intValue();
        int iIntValue2 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR_REVERSE")).intValue();
        int iIntValue3 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_RADIUS)).intValue();
        int iIntValue4 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_RADIUS_REVERSE)).intValue();
        int iIntValue5 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_STROKE)).intValue();
        int iIntValue6 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_STROKE_REVERSE)).intValue();
        this.value.setColor(iIntValue);
        this.value.setColorReverse(iIntValue2);
        this.value.setRadius(iIntValue3);
        this.value.setRadiusReverse(iIntValue4);
        this.value.setStroke(iIntValue5);
        this.value.setStrokeReverse(iIntValue6);
        if (this.listener != null) {
            this.listener.onValueUpdated(this.value);
        }
    }

    private boolean hasChanges(int i, int i2, int i3, int i4) {
        return (this.colorStart == i && this.colorEnd == i2 && this.radius == i3 && this.stroke == i4) ? false : true;
    }
}
