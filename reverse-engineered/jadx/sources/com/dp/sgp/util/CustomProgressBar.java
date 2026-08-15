package com.dp.sgp.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.SeekBar;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CustomProgressBar extends SeekBar {
    private ArrayList<ProgressItem> mProgressItemsList;

    public CustomProgressBar(Context context) {
        super(context);
        this.mProgressItemsList = new ArrayList<>();
    }

    public CustomProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void initData(ArrayList<ProgressItem> arrayList) {
        this.mProgressItemsList = arrayList;
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mProgressItemsList.size() > 0) {
            int width = getWidth();
            int height = getHeight();
            int thumbOffset = getThumbOffset();
            int i = 0;
            int i2 = 0;
            while (i < this.mProgressItemsList.size()) {
                ProgressItem progressItem = this.mProgressItemsList.get(i);
                Paint paint = new Paint();
                paint.setColor(getResources().getColor(progressItem.color));
                int i3 = ((int) ((progressItem.progressItemPercentage * width) / 100.0f)) + i2;
                if (i == this.mProgressItemsList.size() - 1 && i3 != width) {
                    i3 = width;
                }
                Rect rect = new Rect();
                int i4 = thumbOffset / 2;
                rect.set(i2, i4, i3, height - i4);
                canvas.drawRect(rect, paint);
                i++;
                i2 = i3;
            }
            super.onDraw(canvas);
        }
    }
}
