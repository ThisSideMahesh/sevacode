package com.dp.sgp.tutoshowcase.shapes;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public class RoundRect extends Shape {
    public static final int BORDER_PADDING = 30;
    private int height;
    private int width;
    private int x;
    private int y;

    public RoundRect(int i, int i2, int i3, int i4) {
        this.x = i;
        this.y = i2;
        this.width = i3;
        this.height = i4;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    @Override // com.dp.sgp.tutoshowcase.shapes.Shape
    public void drawOn(Canvas canvas) {
        if (isDisplayBorder()) {
            drawRoundedRect(canvas, getX() - 30, getY() - 30, getX() + getWidth() + 30, getY() + getHeight() + 30, getBorderPaint());
        }
        drawRoundedRect(canvas, getX(), getY(), getX() + getWidth(), getY() + getHeight(), this.paint);
    }

    private static void drawRoundedRect(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        float f5 = (f4 - f2) / 2.0f;
        canvas.drawRoundRect(new RectF(f, f2, f3, f4), f5, f5, paint);
    }
}
