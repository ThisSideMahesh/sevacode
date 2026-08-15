package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.ColorAnimationValue;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;

/* JADX INFO: loaded from: classes.dex */
public class ColorDrawer extends BaseDrawer {
    public ColorDrawer(Paint paint, Indicator indicator) {
        super(paint, indicator);
    }

    public void draw(Canvas canvas, Value value, int i, int i2, int i3) {
        if (value instanceof ColorAnimationValue) {
            ColorAnimationValue colorAnimationValue = (ColorAnimationValue) value;
            float radius = this.indicator.getRadius();
            int selectedColor = this.indicator.getSelectedColor();
            int selectedPosition = this.indicator.getSelectedPosition();
            int selectingPosition = this.indicator.getSelectingPosition();
            int lastSelectedPosition = this.indicator.getLastSelectedPosition();
            if (this.indicator.isInteractiveAnimation()) {
                if (i == selectingPosition) {
                    selectedColor = colorAnimationValue.getColor();
                } else if (i == selectedPosition) {
                    selectedColor = colorAnimationValue.getColorReverse();
                }
            } else if (i == selectedPosition) {
                selectedColor = colorAnimationValue.getColor();
            } else if (i == lastSelectedPosition) {
                selectedColor = colorAnimationValue.getColorReverse();
            }
            this.paint.setColor(selectedColor);
            canvas.drawCircle(i2, i3, radius, this.paint);
        }
    }
}
