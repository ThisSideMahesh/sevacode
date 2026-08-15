package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.SwapAnimationValue;

/* JADX INFO: loaded from: classes.dex */
public class SwapAnimation extends BaseAnimation<ValueAnimator> {
    private static final String ANIMATION_COORDINATE = "ANIMATION_COORDINATE";
    private static final String ANIMATION_COORDINATE_REVERSE = "ANIMATION_COORDINATE_REVERSE";
    private static final int COORDINATE_NONE = -1;
    private int coordinateEnd;
    private int coordinateStart;
    private SwapAnimationValue value;

    public SwapAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.coordinateStart = -1;
        this.coordinateEnd = -1;
        this.value = new SwapAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ValueAnimator createAnimator() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(350L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.SwapAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                SwapAnimation.this.onAnimateUpdated(valueAnimator2);
            }
        });
        return valueAnimator;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public SwapAnimation progress(float f) {
        if (this.animator != 0) {
            long j = (long) (f * this.animationDuration);
            if (((ValueAnimator) this.animator).getValues() != null && ((ValueAnimator) this.animator).getValues().length > 0) {
                ((ValueAnimator) this.animator).setCurrentPlayTime(j);
            }
        }
        return this;
    }

    public SwapAnimation with(int i, int i2) {
        if (this.animator != 0 && hasChanges(i, i2)) {
            this.coordinateStart = i;
            this.coordinateEnd = i2;
            ((ValueAnimator) this.animator).setValues(createColorPropertyHolder(ANIMATION_COORDINATE, i, i2), createColorPropertyHolder(ANIMATION_COORDINATE_REVERSE, i2, i));
        }
        return this;
    }

    private PropertyValuesHolder createColorPropertyHolder(String str, int i, int i2) {
        PropertyValuesHolder propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i, i2);
        propertyValuesHolderOfInt.setEvaluator(new IntEvaluator());
        return propertyValuesHolderOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateUpdated(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_COORDINATE)).intValue();
        int iIntValue2 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_COORDINATE_REVERSE)).intValue();
        this.value.setCoordinate(iIntValue);
        this.value.setCoordinateReverse(iIntValue2);
        if (this.listener != null) {
            this.listener.onValueUpdated(this.value);
        }
    }

    private boolean hasChanges(int i, int i2) {
        return (this.coordinateStart == i && this.coordinateEnd == i2) ? false : true;
    }
}
