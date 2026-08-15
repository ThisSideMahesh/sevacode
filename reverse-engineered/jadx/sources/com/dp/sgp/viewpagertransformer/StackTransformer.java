package com.dp.sgp.viewpagertransformer;

import android.support.v4.view.ViewPager;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class StackTransformer extends BaseTransformer implements ViewPager.PageTransformer {
    @Override // com.dp.sgp.viewpagertransformer.BaseTransformer
    protected void onTransform(View view, float f) {
        view.setTranslationX(f >= 0.0f ? (-view.getWidth()) * f : 0.0f);
    }
}
