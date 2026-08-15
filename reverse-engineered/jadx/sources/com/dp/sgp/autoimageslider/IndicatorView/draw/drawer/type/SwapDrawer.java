package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.type.SwapAnimationValue;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;

/* JADX INFO: loaded from: classes.dex */
public class SwapDrawer extends BaseDrawer {
    public SwapDrawer(Paint paint, Indicator indicator) {
        super(paint, indicator);
    }

    public void draw(Canvas canvas, Value value, int i, int i2, int i3) {
        if (value instanceof SwapAnimationValue) {
            SwapAnimationValue swapAnimationValue = (SwapAnimationValue) value;
            int selectedColor = this.indicator.getSelectedColor();
            int unselectedColor = this.indicator.getUnselectedColor();
            int radius = this.indicator.getRadius();
            int selectedPosition = this.indicator.getSelectedPosition();
            int selectingPosition = this.indicator.getSelectingPosition();
            int lastSelectedPosition = this.indicator.getLastSelectedPosition();
            int coordinate = swapAnimationValue.getCoordinate();
            if (this.indicator.isInteractiveAnimation()) {
                if (i == selectingPosition) {
                    coordinate = swapAnimationValue.getCoordinate();
                } else {
                    if (i == selectedPosition) {
                        coordinate = swapAnimationValue.getCoordinateReverse();
                    }
                    selectedColor = unselectedColor;
                }
            } else if (i == lastSelectedPosition) {
                coordinate = swapAnimationValue.getCoordinate();
            } else {
                if (i == selectedPosition) {
                    coordinate = swapAnimationValue.getCoordinateReverse();
                }
                selectedColor = unselectedColor;
            }
            this.paint.setColor(selectedColor);
            if (this.indicator.getOrientation() == Orientation.HORIZONTAL) {
                canvas.drawCircle(coordinate, i3, radius, this.paint);
            } else {
                canvas.drawCircle(i2, coordinate, radius, this.paint);
            }
        }
    }
}
