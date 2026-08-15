package com.dp.sgp.tutoshowcase.shapes;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;

/* JADX INFO: loaded from: classes.dex */
public abstract class Shape {
    private Paint borderPaint;
    protected Paint paint;
    private int color = Color.argb(0, 0, 0, 0);
    private int borderColor = Color.parseColor("#AA999999");
    private boolean displayBorder = false;

    public abstract void drawOn(Canvas canvas);

    public Shape() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setColor(getColor());
        this.paint.setAntiAlias(true);
        this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
        Paint paint2 = new Paint();
        this.borderPaint = paint2;
        paint2.setAntiAlias(true);
        this.borderPaint.setColor(this.borderColor);
    }

    public void setColor(int i) {
        this.color = i;
        this.paint.setColor(i);
    }

    public int getColor() {
        return this.color;
    }

    public Paint getPaint() {
        return this.paint;
    }

    public int getBorderColor() {
        return this.borderColor;
    }

    public boolean isDisplayBorder() {
        return this.displayBorder;
    }

    public void setDisplayBorder(boolean z) {
        this.displayBorder = z;
    }

    public void setBorderColor(int i) {
        this.borderColor = i;
        this.paint.setColor(i);
    }

    public Paint getBorderPaint() {
        return this.borderPaint;
    }
}
