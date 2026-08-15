package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type;

import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;

/* JADX INFO: loaded from: classes.dex */
class BaseDrawer {
    Indicator indicator;
    Paint paint;

    BaseDrawer(Paint paint, Indicator indicator) {
        this.paint = paint;
        this.indicator = indicator;
    }
}
