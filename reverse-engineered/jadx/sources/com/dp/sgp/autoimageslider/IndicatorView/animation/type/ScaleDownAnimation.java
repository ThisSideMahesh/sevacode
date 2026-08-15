package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;

/* JADX INFO: loaded from: classes.dex */
public class ScaleDownAnimation extends ScaleAnimation {
    public ScaleDownAnimation(ValueController.UpdateListener updateListener) {
        super(updateListener);
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.type.ScaleAnimation
    protected PropertyValuesHolder createScalePropertyHolder(boolean z) {
        int i;
        int i2;
        String str;
        if (z) {
            i = (int) (this.radius * this.scaleFactor);
            i2 = this.radius;
            str = "ANIMATION_SCALE_REVERSE";
        } else {
            i = this.radius;
            i2 = (int) (this.radius * this.scaleFactor);
            str = "ANIMATION_SCALE";
        }
        PropertyValuesHolder propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i, i2);
        propertyValuesHolderOfInt.setEvaluator(new IntEvaluator());
        return propertyValuesHolderOfInt;
    }
}
