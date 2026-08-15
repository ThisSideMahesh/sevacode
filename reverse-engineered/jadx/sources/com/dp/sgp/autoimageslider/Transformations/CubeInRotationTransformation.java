package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class CubeInRotationTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setCameraDistance(20000.0f);
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 0.0f) {
            view.setAlpha(1.0f);
            view.setPivotX(view.getWidth());
            view.setRotationY(Math.abs(f) * 90.0f);
        } else {
            if (f <= 1.0f) {
                view.setAlpha(1.0f);
                view.setPivotX(0.0f);
                view.setRotationY(Math.abs(f) * (-90.0f));
                return;
            }
            view.setAlpha(0.0f);
        }
    }
}
