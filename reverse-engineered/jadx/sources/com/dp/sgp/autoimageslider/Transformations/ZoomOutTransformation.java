package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class ZoomOutTransformation implements SliderPager.PageTransformer {
    private static final float MIN_ALPHA = 0.3f;
    private static final float MIN_SCALE = 0.65f;

    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        if (f < -1.0f) {
            view.setAlpha(0.0f);
        } else {
            if (f <= 1.0f) {
                view.setScaleX(Math.max(MIN_SCALE, 1.0f - Math.abs(f)));
                view.setScaleY(Math.max(MIN_SCALE, 1.0f - Math.abs(f)));
                view.setAlpha(Math.max(0.3f, 1.0f - Math.abs(f)));
                return;
            }
            view.setAlpha(0.0f);
        }
    }
}
