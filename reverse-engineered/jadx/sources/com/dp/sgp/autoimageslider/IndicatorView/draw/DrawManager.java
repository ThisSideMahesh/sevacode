package com.dp.sgp.autoimageslider.IndicatorView.draw;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.AttributeController;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.DrawController;
import com.dp.sgp.autoimageslider.IndicatorView.draw.controller.MeasureController;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;

/* JADX INFO: loaded from: classes.dex */
public class DrawManager {
    private Indicator indicator = new Indicator();
    private DrawController drawController = new DrawController(this.indicator);
    private MeasureController measureController = new MeasureController();
    private AttributeController attributeController = new AttributeController(this.indicator);

    public Indicator indicator() {
        if (this.indicator == null) {
            this.indicator = new Indicator();
        }
        return this.indicator;
    }

    public void setClickListener(DrawController.ClickListener clickListener) {
        this.drawController.setClickListener(clickListener);
    }

    public void touch(MotionEvent motionEvent) {
        this.drawController.touch(motionEvent);
    }

    public void updateValue(Value value) {
        this.drawController.updateValue(value);
    }

    public void draw(Canvas canvas) {
        this.drawController.draw(canvas);
    }

    public Pair<Integer, Integer> measureViewSize(int i, int i2) {
        return this.measureController.measureViewSize(this.indicator, i, i2);
    }

    public void initAttributes(Context context, AttributeSet attributeSet) {
        this.attributeController.init(context, attributeSet);
    }
}
