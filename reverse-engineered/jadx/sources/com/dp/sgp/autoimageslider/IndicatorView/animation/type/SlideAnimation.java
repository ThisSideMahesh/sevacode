package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.SlideAnimationValue;

/* JADX INFO: loaded from: classes.dex */
public class SlideAnimation extends BaseAnimation<ValueAnimator> {
    private static final String ANIMATION_COORDINATE = "ANIMATION_COORDINATE";
    private static final int COORDINATE_NONE = -1;
    private int coordinateEnd;
    private int coordinateStart;
    private SlideAnimationValue value;

    public SlideAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
        this.coordinateStart = -1;
        this.coordinateEnd = -1;
        this.value = new SlideAnimationValue();
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public ValueAnimator createAnimator() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(350L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.dp.sgp.autoimageslider.IndicatorView.animation.type.SlideAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                SlideAnimation.this.onAnimateUpdated(valueAnimator2);
            }
        });
        return valueAnimator;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.BaseAnimation
    public SlideAnimation progress(float f) {
        if (this.animator != 0) {
            long j = (long) (f * this.animationDuration);
            if (((ValueAnimator) this.animator).getValues() != null && ((ValueAnimator) this.animator).getValues().length > 0) {
                ((ValueAnimator) this.animator).setCurrentPlayTime(j);
            }
        }
        return this;
    }

    public SlideAnimation with(int i, int i2) {
        if (this.animator != 0 && hasChanges(i, i2)) {
            this.coordinateStart = i;
            this.coordinateEnd = i2;
            ((ValueAnimator) this.animator).setValues(createSlidePropertyHolder());
        }
        return this;
    }

    private PropertyValuesHolder createSlidePropertyHolder() {
        PropertyValuesHolder propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(ANIMATION_COORDINATE, this.coordinateStart, this.coordinateEnd);
        propertyValuesHolderOfInt.setEvaluator(new IntEvaluator());
        return propertyValuesHolderOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimateUpdated(ValueAnimator valueAnimator) {
        this.value.setCoordinate(((Integer) valueAnimator.getAnimatedValue(ANIMATION_COORDINATE)).intValue());
        if (this.listener != null) {
            this.listener.onValueUpdated(this.value);
        }
    }

    private boolean hasChanges(int i, int i2) {
        return (this.coordinateStart == i && this.coordinateEnd == i2) ? false : true;
    }
}
