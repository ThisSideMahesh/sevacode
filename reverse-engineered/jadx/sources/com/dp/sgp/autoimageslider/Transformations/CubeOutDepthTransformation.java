package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class CubeOutDepthTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        if (f < -1.0f) {
            view.setAlpha(0.0f);
        } else if (f <= 0.0f) {
            view.setAlpha(1.0f);
            view.setPivotX(view.getWidth());
            view.setRotationY(Math.abs(f) * (-90.0f));
        } else if (f <= 1.0f) {
            view.setAlpha(1.0f);
            view.setPivotX(0.0f);
            view.setRotationY(Math.abs(f) * 90.0f);
        } else {
            view.setAlpha(0.0f);
        }
        if (Math.abs(f) <= 0.5d) {
            view.setScaleY(Math.max(0.4f, 1.0f - Math.abs(f)));
        } else if (Math.abs(f) <= 1.0f) {
            view.setScaleY(Math.max(0.4f, 1.0f - Math.abs(f)));
        }
    }
}
