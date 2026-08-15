package com.dp.sgp.viewpagertransformer;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class RotateDownTransformer extends BaseTransformer {
    private static final float ROT_MOD = -15.0f;

    @Override // com.dp.sgp.viewpagertransformer.BaseTransformer
    protected boolean isPagingEnabled() {
        return true;
    }

    @Override // com.dp.sgp.viewpagertransformer.BaseTransformer
    protected void onTransform(View view, float f) {
        float width = view.getWidth();
        float height = view.getHeight();
        float f2 = f * ROT_MOD * (-1.25f);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height);
        view.setRotation(f2);
    }
}
