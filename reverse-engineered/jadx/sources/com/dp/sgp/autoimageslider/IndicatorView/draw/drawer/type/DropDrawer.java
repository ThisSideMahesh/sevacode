package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.DropAnimationValue;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;

/* JADX INFO: loaded from: classes.dex */
public class DropDrawer extends BaseDrawer {
    public DropDrawer(Paint paint, Indicator indicator) {
        super(paint, indicator);
    }

    public void draw(Canvas canvas, Value value, int i, int i2) {
        if (value instanceof DropAnimationValue) {
            DropAnimationValue dropAnimationValue = (DropAnimationValue) value;
            int unselectedColor = this.indicator.getUnselectedColor();
            int selectedColor = this.indicator.getSelectedColor();
            float radius = this.indicator.getRadius();
            this.paint.setColor(unselectedColor);
            canvas.drawCircle(i, i2, radius, this.paint);
            this.paint.setColor(selectedColor);
            if (this.indicator.getOrientation() == Orientation.HORIZONTAL) {
                canvas.drawCircle(dropAnimationValue.getWidth(), dropAnimationValue.getHeight(), dropAnimationValue.getRadius(), this.paint);
            } else {
                canvas.drawCircle(dropAnimationValue.getHeight(), dropAnimationValue.getWidth(), dropAnimationValue.getRadius(), this.paint);
            }
        }
    }
}
