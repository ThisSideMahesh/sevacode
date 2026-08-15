package com.dp.sgp.autoimageslider.IndicatorView.animation.type;

import android.animation.Animator;
import android.animation.ValueAnimator;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAnimation<T extends Animator> {
    public static final int DEFAULT_ANIMATION_TIME = 350;
    protected long animationDuration = 350;
    protected T animator = (T) createAnimator();
    protected ValueController.UpdateListener listener;

    public abstract T createAnimator();

    public abstract BaseAnimation progress(float f);

    public BaseAnimation(ValueController.UpdateListener updateListener) {
        this.listener = updateListener;
    }

    public BaseAnimation duration(long j) {
        this.animationDuration = j;
        T t = this.animator;
        if (t instanceof ValueAnimator) {
            t.setDuration(j);
        }
        return this;
    }

    public void start() {
        T t = this.animator;
        if (t == null || t.isRunning()) {
            return;
        }
        this.animator.start();
    }

    public void end() {
        T t = this.animator;
        if (t == null || !t.isStarted()) {
            return;
        }
        this.animator.end();
    }
}
