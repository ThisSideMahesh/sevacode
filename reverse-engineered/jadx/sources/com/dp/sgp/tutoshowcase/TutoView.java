package com.dp.sgp.tutoshowcase;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import com.dp.sgp.tutoshowcase.shapes.Circle;
import com.dp.sgp.tutoshowcase.shapes.RoundRect;
import com.dp.sgp.tutoshowcase.shapes.Shape;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class TutoView extends View {
    static final int DEFAULT_ALPHA_COLOR = 200;
    int backgroundOverlayColor;
    List<Shape> shapes;

    public TutoView(Context context) {
        super(context);
        this.backgroundOverlayColor = Color.argb(200, 0, 0, 0);
        initialize();
    }

    public TutoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.backgroundOverlayColor = Color.argb(200, 0, 0, 0);
        initialize();
    }

    public TutoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.backgroundOverlayColor = Color.argb(200, 0, 0, 0);
        initialize();
    }

    public void addCircle(Circle circle) {
        this.shapes.add(circle);
    }

    public void addRoundRect(RoundRect roundRect) {
        this.shapes.add(roundRect);
    }

    public int getBackgroundOverlayColor() {
        return this.backgroundOverlayColor;
    }

    public void setBackgroundOverlayColor(int i) {
        this.backgroundOverlayColor = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawColor(this.backgroundOverlayColor);
        Iterator<Shape> it = this.shapes.iterator();
        while (it.hasNext()) {
            it.next().drawOn(canvas);
        }
    }

    private void initialize() {
        this.shapes = new ArrayList();
        setDrawingCacheEnabled(true);
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }
}
