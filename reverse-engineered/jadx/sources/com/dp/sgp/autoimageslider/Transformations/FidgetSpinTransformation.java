package com.dp.sgp.autoimageslider.Transformations;

import android.view.View;
import com.dp.sgp.autoimageslider.SliderPager;

/* JADX INFO: loaded from: classes.dex */
public class FidgetSpinTransformation implements SliderPager.PageTransformer {
    @Override // com.dp.sgp.autoimageslider.SliderPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setTranslationX((-f) * view.getWidth());
        if (Math.abs(f) < 0.5d) {
            view.setVisibility(0);
            view.setScaleX(1.0f - Math.abs(f));
            view.setScaleY(1.0f - Math.abs(f));
        } else if (Math.abs(f) > 0.5d) {
            view.setVisibility(8);
        }
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 0.0f) {
            view.setAlpha(1.0f);
            view.setRotation(Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * 36000.0f);
        } else if (f <= 1.0f) {
            view.setAlpha(1.0f);
            view.setRotation(Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * Math.abs(f) * (-36000.0f));
        } else {
            view.setAlpha(0.0f);
        }
    }
}
