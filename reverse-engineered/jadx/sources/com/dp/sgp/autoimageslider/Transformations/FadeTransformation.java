package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class FadeTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setTranslationX((-f) * view.getWidth());
        if (f < -1.0f || f > 1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 0.0f || f <= 1.0f) {
            view.setAlpha(f <= 0.0f ? f + 1.0f : 1.0f - f);
        } else if (f == 0.0f) {
            view.setAlpha(1.0f);
        }
    }
}
