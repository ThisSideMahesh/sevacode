package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class TossTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setTranslationX((-f) * view.getWidth());
        view.setCameraDistance(20000.0f);
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
            view.setScaleX(Math.max(0.4f, 1.0f - Math.abs(f)));
            view.setScaleY(Math.max(0.4f, 1.0f - Math.abs(f)));
            view.setRotationX(((1.0f - Math.abs(f)) + 1.0f) * 1080.0f);
            view.setTranslationY(Math.abs(f) * (-1000.0f));
            return;
        }
        if (f <= 1.0f) {
            view.setAlpha(1.0f);
            view.setScaleX(Math.max(0.4f, 1.0f - Math.abs(f)));
            view.setScaleY(Math.max(0.4f, 1.0f - Math.abs(f)));
            view.setRotationX(((1.0f - Math.abs(f)) + 1.0f) * (-1080.0f));
            view.setTranslationY(Math.abs(f) * (-1000.0f));
            return;
        }
        view.setAlpha(0.0f);
    }
}
