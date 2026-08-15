package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.WormAnimationValue;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;

/* JADX INFO: loaded from: classes.dex */
public class WormDrawer extends BaseDrawer {
    public RectF rect;

    public WormDrawer(Paint paint, Indicator indicator) {
        super(paint, indicator);
        this.rect = new RectF();
    }

    public void draw(Canvas canvas, Value value, int i, int i2) {
        if (value instanceof WormAnimationValue) {
            WormAnimationValue wormAnimationValue = (WormAnimationValue) value;
            int rectStart = wormAnimationValue.getRectStart();
            int rectEnd = wormAnimationValue.getRectEnd();
            int radius = this.indicator.getRadius();
            int unselectedColor = this.indicator.getUnselectedColor();
            int selectedColor = this.indicator.getSelectedColor();
            if (this.indicator.getOrientation() == Orientation.HORIZONTAL) {
                this.rect.left = rectStart;
                this.rect.right = rectEnd;
                this.rect.top = i2 - radius;
                this.rect.bottom = i2 + radius;
            } else {
                this.rect.left = i - radius;
                this.rect.right = i + radius;
                this.rect.top = rectStart;
                this.rect.bottom = rectEnd;
            }
            this.paint.setColor(unselectedColor);
            float f = i;
            float f2 = i2;
            float f3 = radius;
            canvas.drawCircle(f, f2, f3, this.paint);
            this.paint.setColor(selectedColor);
            canvas.drawRoundRect(this.rect, f3, f3, this.paint);
        }
    }
}
