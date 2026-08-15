package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class FanTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setTranslationX((-f) * view.getWidth());
        view.setPivotX(0.0f);
        view.setPivotY(view.getHeight() / 2);
        view.setCameraDistance(20000.0f);
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 0.0f) {
            view.setAlpha(1.0f);
            view.setRotationY(Math.abs(f) * (-120.0f));
        } else if (f <= 1.0f) {
            view.setAlpha(1.0f);
            view.setRotationY(Math.abs(f) * 120.0f);
        } else {
            view.setAlpha(0.0f);
        }
    }
}
