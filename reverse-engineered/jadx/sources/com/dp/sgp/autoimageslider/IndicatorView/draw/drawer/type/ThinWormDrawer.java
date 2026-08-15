package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.ThinWormAnimationValue;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;

/* JADX INFO: loaded from: classes.dex */
public class ThinWormDrawer extends WormDrawer {
    public ThinWormDrawer(Paint paint, Indicator indicator) {
        super(paint, indicator);
    }

    @Override // com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.WormDrawer
    public void draw(Canvas canvas, Value value, int i, int i2) {
        if (value instanceof ThinWormAnimationValue) {
            ThinWormAnimationValue thinWormAnimationValue = (ThinWormAnimationValue) value;
            int rectStart = thinWormAnimationValue.getRectStart();
            int rectEnd = thinWormAnimationValue.getRectEnd();
            int height = thinWormAnimationValue.getHeight() / 2;
            int radius = this.indicator.getRadius();
            int unselectedColor = this.indicator.getUnselectedColor();
            int selectedColor = this.indicator.getSelectedColor();
            if (this.indicator.getOrientation() == Orientation.HORIZONTAL) {
                this.rect.left = rectStart;
                this.rect.right = rectEnd;
                this.rect.top = i2 - height;
                this.rect.bottom = height + i2;
            } else {
                this.rect.left = i - height;
                this.rect.right = height + i;
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
