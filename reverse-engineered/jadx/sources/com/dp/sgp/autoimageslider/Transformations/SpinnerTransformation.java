package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class SpinnerTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setTranslationX((-f) * view.getWidth());
        view.setCameraDistance(12000.0f);
        double d = f;
        if (d < 0.5d && d > -0.5d) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 0.0f) {
            view.setAlpha(1.0f);
            view.setRotationY(((1.0f - Math.abs(f)) + 1.0f) * 900.0f);
        } else if (f <= 1.0f) {
            view.setAlpha(1.0f);
            view.setRotationY(((1.0f - Math.abs(f)) + 1.0f) * (-900.0f));
        } else {
            view.setAlpha(0.0f);
        }
    }
}
