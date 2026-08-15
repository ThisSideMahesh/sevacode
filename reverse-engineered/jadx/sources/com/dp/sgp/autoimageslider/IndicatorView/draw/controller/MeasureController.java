package com.dp.sgp.autoimageslider.IndicatorView.draw.controller;

import android.util.Pair;
import android.view.View;
import com.dp.sgp.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Orientation;

/* JADX INFO: loaded from: classes.dex */
public class MeasureController {
    public Pair<Integer, Integer> measureViewSize(Indicator indicator, int i, int i2) {
        int i3;
        int i4;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int count = indicator.getCount();
        int radius = indicator.getRadius();
        int stroke = indicator.getStroke();
        int padding = indicator.getPadding();
        int paddingLeft = indicator.getPaddingLeft();
        int paddingTop = indicator.getPaddingTop();
        int paddingRight = indicator.getPaddingRight();
        int paddingBottom = indicator.getPaddingBottom();
        int i5 = radius * 2;
        Orientation orientation = indicator.getOrientation();
        if (count != 0) {
            i4 = (i5 * count) + (stroke * 2 * count) + (padding * (count - 1));
            i3 = i5 + stroke;
            if (orientation != Orientation.HORIZONTAL) {
                i4 = i3;
                i3 = i4;
            }
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (indicator.getAnimationType() == IndicatorAnimationType.DROP) {
            if (orientation == Orientation.HORIZONTAL) {
                i3 *= 2;
            } else {
                i4 *= 2;
            }
        }
        Orientation orientation2 = Orientation.HORIZONTAL;
        int i6 = i4 + paddingLeft + paddingRight;
        int i7 = i3 + paddingTop + paddingBottom;
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(i6, size) : i6;
        }
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(i7, size2) : i7;
        }
        if (size < 0) {
            size = 0;
        }
        int i8 = size2 >= 0 ? size2 : 0;
        indicator.setWidth(size);
        indicator.setHeight(i8);
        return new Pair<>(Integer.valueOf(size), Integer.valueOf(i8));
    }
}
