package com.dp.sgp.viewpagertransformer;

import android.support.v4.view.ViewPager;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class DrawFromBackTransformer implements ViewPager.PageTransformer {
    private static final float MIN_SCALE = 0.75f;

    @Override // android.support.v4.view.ViewPager.PageTransformer
    public void transformPage(View view, float f) {
        int width = view.getWidth();
        if (f < -1.0f || f > 1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 0.0f) {
            view.setAlpha(f + 1.0f);
            view.setTranslationX(width * (-f));
            float fAbs = ((1.0f - Math.abs(f)) * 0.25f) + MIN_SCALE;
            view.setScaleX(fAbs);
            view.setScaleY(fAbs);
            return;
        }
        double d = f;
        if (d > 0.5d && f <= 1.0f) {
            view.setAlpha(0.0f);
            view.setTranslationX(width * (-f));
            return;
        }
        if (d > 0.3d && d <= 0.5d) {
            view.setAlpha(1.0f);
            view.setTranslationX(width * f);
            view.setScaleX(MIN_SCALE);
            view.setScaleY(MIN_SCALE);
            return;
        }
        if (d <= 0.3d) {
            view.setAlpha(1.0f);
            view.setTranslationX(width * f);
            Double.isNaN(d);
            float f2 = (float) (0.3d - d);
            float f3 = (f2 < 0.25f ? f2 : 0.25f) + MIN_SCALE;
            view.setScaleX(f3);
            view.setScaleY(f3);
        }
    }
}
