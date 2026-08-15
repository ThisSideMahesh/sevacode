package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.ArgbEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.ColorAnimationValue;

/* JADX INFO: loaded from: classes.dex */
public class ColorAnimation extends BaseAnimation<ValueAnimator> {
    static final String ANIMATION_COLOR = "ANIMATION_COLOR";
    static final String ANIMATION_COLOR_REVERSE = "ANIMATION_COLOR_REVERSE";
    public static final String DEFAULT_SELECTED_COLOR = "#ffffff";
    public static final String DEFAULT_UNSELECTED_COLOR = "#33ffffff";
    int colorEnd;
    int colorStart;
    private ColorAnimationValue value;

    public ColorAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.value = new ColorAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ValueAnimator createAnimator() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(350L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.ColorAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ColorAnimation.this.onAnimateUpdated(valueAnimator2);
            }
        });
        return valueAnimator;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ColorAnimation progress(float f) {
        if (this.animator != 0) {
            long j = (long) (f * this.animationDuration);
            if (((ValueAnimator) this.animator).getValues() != null && ((ValueAnimator) this.animator).getValues().length > 0) {
                ((ValueAnimator) this.animator).setCurrentPlayTime(j);
            }
        }
        return this;
    }

    public ColorAnimation with(int i, int i2) {
        if (this.animator != 0 && hasChanges(i, i2)) {
            this.colorStart = i;
            this.colorEnd = i2;
            ((ValueAnimator) this.animator).setValues(createColorPropertyHolder(false), createColorPropertyHolder(true));
        }
        return this;
    }

    PropertyValuesHolder createColorPropertyHolder(boolean z) {
        int i;
        int i2;
        String str;
        if (z) {
            i = this.colorEnd;
            i2 = this.colorStart;
            str = ANIMATION_COLOR_REVERSE;
        } else {
            i = this.colorStart;
            i2 = this.colorEnd;
            str = ANIMATION_COLOR;
        }
        PropertyValuesHolder propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i, i2);
        propertyValuesHolderOfInt.setEvaluator(new ArgbEvaluator());
        return propertyValuesHolderOfInt;
    }

    private boolean hasChanges(int i, int i2) {
        return (this.colorStart == i && this.colorEnd == i2) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateUpdated(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_COLOR)).intValue();
        int iIntValue2 = ((Integer) valueAnimator.getAnimatedValue(ANIMATION_COLOR_REVERSE)).intValue();
        this.value.setColor(iIntValue);
        this.value.setColorReverse(iIntValue2);
        if (this.listener != null) {
            this.listener.onValueUpdated(this.value);
        }
    }
}
