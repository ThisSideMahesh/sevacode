package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;

/* JADX INFO: loaded from: classes.dex */
public class BasicDrawer extends BaseDrawer {
    private Paint strokePaint;

    public BasicDrawer(Paint paint, Indicator indicator) {
        super(paint, indicator);
        Paint paint2 = new Paint();
        this.strokePaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.strokePaint.setAntiAlias(true);
        this.strokePaint.setStrokeWidth(indicator.getStroke());
    }

    public void draw(Canvas canvas, int i, boolean z, int i2, int i3) {
        Paint paint;
        float radius = this.indicator.getRadius();
        int stroke = this.indicator.getStroke();
        float scaleFactor = this.indicator.getScaleFactor();
        int selectedColor = this.indicator.getSelectedColor();
        int unselectedColor = this.indicator.getUnselectedColor();
        int selectedPosition = this.indicator.getSelectedPosition();
        IndicatorAnimationType animationType = this.indicator.getAnimationType();
        if ((animationType == IndicatorAnimationType.SCALE && !z) || (animationType == IndicatorAnimationType.SCALE_DOWN && z)) {
            radius *= scaleFactor;
        }
        if (i != selectedPosition) {
            selectedColor = unselectedColor;
        }
        if (animationType == IndicatorAnimationType.FILL && i != selectedPosition) {
            paint = this.strokePaint;
            paint.setStrokeWidth(stroke);
        } else {
            paint = this.paint;
        }
        paint.setColor(selectedColor);
        canvas.drawCircle(i2, i3, radius, paint);
    }
}
