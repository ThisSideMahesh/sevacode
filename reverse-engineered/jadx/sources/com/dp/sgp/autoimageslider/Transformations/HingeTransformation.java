package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class HingeTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setTranslationX((-f) * view.getWidth());
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 0.0f) {
            view.setRotation(Math.abs(f) * 90.0f);
            view.setAlpha(1.0f - Math.abs(f));
        } else if (f <= 1.0f) {
            view.setRotation(0.0f);
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(0.0f);
        }
    }
}
