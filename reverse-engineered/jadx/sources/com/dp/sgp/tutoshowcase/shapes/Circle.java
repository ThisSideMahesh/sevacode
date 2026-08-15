package com.dp.sgp.tutoshowcase.shapes;

import android.graphics.Canvas;

/* JADX INFO: loaded from: classes.dex */
public class Circle extends Shape {
    private int radius;
    private int x;
    private int y;

    public Circle(int i, int i2, int i3) {
        this.x = i;
        this.y = i2;
        this.radius = i3;
    }

    public int getX() {
        return this.x;
    }

    public void setX(int i) {
        this.x = i;
    }

    public int getY() {
        return this.y;
    }

    public void setY(int i) {
        this.y = i;
    }

    public int getRadius() {
        return this.radius;
    }

    public void setRadius(int i) {
        this.radius = i;
    }

    @Override // com.dp.sgp.tutoshowcase.shapes.Shape
    public void drawOn(Canvas canvas) {
        if (isDisplayBorder()) {
            canvas.drawCircle(getX(), getY(), getRadius() * 1.2f, getBorderPaint());
        }
        canvas.drawCircle(getX(), getY(), getRadius(), getPaint());
    }
}
