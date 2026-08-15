package com.dp.sgp.autoimageslider.IndicatorView;

import com.dp.sgp.autoimageslider.IndicatorView.animation.AnimationManager;
import com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.draw.DrawManager;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;

/* JADX INFO: loaded from: classes.dex */
public class IndicatorManager implements ValueController.UpdateListener {
    private Listener listener;
    private DrawManager drawManager = new DrawManager();
    private AnimationManager animationManager = new AnimationManager(this.drawManager.indicator(), this);

    interface Listener {
        void onIndicatorUpdated();
    }

    IndicatorManager(Listener listener) {
        this.listener = listener;
    }

    public AnimationManager animate() {
        return this.animationManager;
    }

    public Indicator indicator() {
        return this.drawManager.indicator();
    }

    public DrawManager drawer() {
        return this.drawManager;
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.animation.controller.ValueController.UpdateListener
    public void onValueUpdated(Value value) {
        this.drawManager.updateValue(value);
        Listener listener = this.listener;
        if (listener != null) {
            listener.onIndicatorUpdated();
        }
    }
}
