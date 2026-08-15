package com.dp.sgp.autoimageslider.IndicatorView.draw.drawer;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.dp.sgp.autoimageslider.IndicatorView.animation.data.Value;
import com.dp.sgp.autoimageslider.IndicatorView.draw.data.Indicator;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.BasicDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.ColorDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.DropDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.FillDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.ScaleDownDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.ScaleDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.SlideDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.SwapDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.ThinWormDrawer;
import com.dp.sgp.autoimageslider.IndicatorView.draw.drawer.type.WormDrawer;

/* JADX INFO: loaded from: classes.dex */
public class Drawer {
    private BasicDrawer basicDrawer;
    private ColorDrawer colorDrawer;
    private int coordinateX;
    private int coordinateY;
    private DropDrawer dropDrawer;
    private FillDrawer fillDrawer;
    private int position;
    private ScaleDownDrawer scaleDownDrawer;
    private ScaleDrawer scaleDrawer;
    private SlideDrawer slideDrawer;
    private SwapDrawer swapDrawer;
    private ThinWormDrawer thinWormDrawer;
    private WormDrawer wormDrawer;

    public Drawer(Indicator indicator) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        this.basicDrawer = new BasicDrawer(paint, indicator);
        this.colorDrawer = new ColorDrawer(paint, indicator);
        this.scaleDrawer = new ScaleDrawer(paint, indicator);
        this.wormDrawer = new WormDrawer(paint, indicator);
        this.slideDrawer = new SlideDrawer(paint, indicator);
        this.fillDrawer = new FillDrawer(paint, indicator);
        this.thinWormDrawer = new ThinWormDrawer(paint, indicator);
        this.dropDrawer = new DropDrawer(paint, indicator);
        this.swapDrawer = new SwapDrawer(paint, indicator);
        this.scaleDownDrawer = new ScaleDownDrawer(paint, indicator);
    }

    public void setup(int i, int i2, int i3) {
        this.position = i;
        this.coordinateX = i2;
        this.coordinateY = i3;
    }

    public void drawBasic(Canvas canvas, boolean z) {
        if (this.colorDrawer != null) {
            this.basicDrawer.draw(canvas, this.position, z, this.coordinateX, this.coordinateY);
        }
    }

    public void drawColor(Canvas canvas, Value value) {
        ColorDrawer colorDrawer = this.colorDrawer;
        if (colorDrawer != null) {
            colorDrawer.draw(canvas, value, this.position, this.coordinateX, this.coordinateY);
        }
    }

    public void drawScale(Canvas canvas, Value value) {
        ScaleDrawer scaleDrawer = this.scaleDrawer;
        if (scaleDrawer != null) {
            scaleDrawer.draw(canvas, value, this.position, this.coordinateX, this.coordinateY);
        }
    }

    public void drawWorm(Canvas canvas, Value value) {
        WormDrawer wormDrawer = this.wormDrawer;
        if (wormDrawer != null) {
            wormDrawer.draw(canvas, value, this.coordinateX, this.coordinateY);
        }
    }

    public void drawSlide(Canvas canvas, Value value) {
        SlideDrawer slideDrawer = this.slideDrawer;
        if (slideDrawer != null) {
            slideDrawer.draw(canvas, value, this.coordinateX, this.coordinateY);
        }
    }

    public void drawFill(Canvas canvas, Value value) {
        FillDrawer fillDrawer = this.fillDrawer;
        if (fillDrawer != null) {
            fillDrawer.draw(canvas, value, this.position, this.coordinateX, this.coordinateY);
        }
    }

    public void drawThinWorm(Canvas canvas, Value value) {
        ThinWormDrawer thinWormDrawer = this.thinWormDrawer;
        if (thinWormDrawer != null) {
            thinWormDrawer.draw(canvas, value, this.coordinateX, this.coordinateY);
        }
    }

    public void drawDrop(Canvas canvas, Value value) {
        DropDrawer dropDrawer = this.dropDrawer;
        if (dropDrawer != null) {
            dropDrawer.draw(canvas, value, this.coordinateX, this.coordinateY);
        }
    }

    public void drawSwap(Canvas canvas, Value value) {
        SwapDrawer swapDrawer = this.swapDrawer;
        if (swapDrawer != null) {
            swapDrawer.draw(canvas, value, this.position, this.coordinateX, this.coordinateY);
        }
    }

    public void drawScaleDown(Canvas canvas, Value value) {
        ScaleDownDrawer scaleDownDrawer = this.scaleDownDrawer;
        if (scaleDownDrawer != null) {
            scaleDownDrawer.draw(canvas, value, this.position, this.coordinateX, this.coordinateY);
        }
    }
}
