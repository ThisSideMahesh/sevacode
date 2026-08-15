package com.dp.sgp.compactcalendarview;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes.dex */
class CollapsingAnimation extends Animation {
    private CompactCalendarController compactCalendarController;
    private final boolean down;
    private int targetGrowRadius;
    private final int targetHeight;
    private final CompactCalendarView view;

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }

    public CollapsingAnimation(CompactCalendarView compactCalendarView, CompactCalendarController compactCalendarController, int i, int i2, boolean z) {
        this.view = compactCalendarView;
        this.compactCalendarController = compactCalendarController;
        this.targetHeight = i;
        this.targetGrowRadius = i2;
        this.down = z;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        int i;
        float f2;
        if (this.down) {
            i = (int) (this.targetHeight * f);
            f2 = f * this.targetGrowRadius * 2;
        } else {
            float f3 = 1.0f - f;
            int i2 = (int) (this.targetHeight * f3);
            float f4 = f3 * this.targetGrowRadius * 2;
            i = i2;
            f2 = f4;
        }
        this.compactCalendarController.setGrowProgress(f2);
        this.view.getLayoutParams().height = i;
        this.view.requestLayout();
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
    }
}
