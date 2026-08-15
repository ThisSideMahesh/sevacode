package com.dp.sgp.autoimageslider.IndicatorView.animation;

import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.AnimationController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;

/* JADX INFO: loaded from: classes.dex */
public class AnimationManager {
    private AnimationController animationController;

    public AnimationManager(Indicator indicator, ValueController.UpdateListener updateListener) {
        this.animationController = new AnimationController(indicator, updateListener);
    }

    public void basic() {
        AnimationController animationController = this.animationController;
        if (animationController != null) {
            animationController.end();
            this.animationController.basic();
        }
    }

    public void interactive(float f) {
        AnimationController animationController = this.animationController;
        if (animationController != null) {
            animationController.interactive(f);
        }
    }

    public void end() {
        AnimationController animationController = this.animationController;
        if (animationController != null) {
            animationController.end();
        }
    }
}
