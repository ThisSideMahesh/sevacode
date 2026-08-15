package com.dp.sgp.viewpagertransformer;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class CubeOutTransformer extends BaseTransformer {
    @Override // com.dp.sgp.viewpagertransformer.BaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.dp.sgp.viewpagertransformer.BaseTransformer
    protected void onTransform(View view, float f) {
        view.setPivotX(f < 0.0f ? view.getWidth() : 0.0f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationY(f * 90.0f);
    }
}
