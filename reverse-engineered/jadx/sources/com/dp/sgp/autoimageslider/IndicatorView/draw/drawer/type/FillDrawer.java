package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.FillAnimationValue;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;

/* JADX INFO: loaded from: classes.dex */
public class FillDrawer extends BaseDrawer {
    private Paint strokePaint;

    public FillDrawer(Paint paint, Indicator indicator) {
        super(paint, indicator);
        Paint paint2 = new Paint();
        this.strokePaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.strokePaint.setAntiAlias(true);
    }

    public void draw(Canvas canvas, Value value, int i, int i2, int i3) {
        if (value instanceof FillAnimationValue) {
            FillAnimationValue fillAnimationValue = (FillAnimationValue) value;
            int unselectedColor = this.indicator.getUnselectedColor();
            float radius = this.indicator.getRadius();
            int stroke = this.indicator.getStroke();
            int selectedPosition = this.indicator.getSelectedPosition();
            int selectingPosition = this.indicator.getSelectingPosition();
            int lastSelectedPosition = this.indicator.getLastSelectedPosition();
            if (this.indicator.isInteractiveAnimation()) {
                if (i == selectingPosition) {
                    unselectedColor = fillAnimationValue.getColor();
                    radius = fillAnimationValue.getRadius();
                    stroke = fillAnimationValue.getStroke();
                } else if (i == selectedPosition) {
                    unselectedColor = fillAnimationValue.getColorReverse();
                    radius = fillAnimationValue.getRadiusReverse();
                    stroke = fillAnimationValue.getStrokeReverse();
                }
            } else if (i == selectedPosition) {
                unselectedColor = fillAnimationValue.getColor();
                radius = fillAnimationValue.getRadius();
                stroke = fillAnimationValue.getStroke();
            } else if (i == lastSelectedPosition) {
                unselectedColor = fillAnimationValue.getColorReverse();
                radius = fillAnimationValue.getRadiusReverse();
                stroke = fillAnimationValue.getStrokeReverse();
            }
            this.strokePaint.setColor(unselectedColor);
            this.strokePaint.setStrokeWidth(this.indicator.getStroke());
            float f = i2;
            float f2 = i3;
            canvas.drawCircle(f, f2, this.indicator.getRadius(), this.strokePaint);
            this.strokePaint.setStrokeWidth(stroke);
            canvas.drawCircle(f, f2, radius, this.strokePaint);
        }
    }
}
