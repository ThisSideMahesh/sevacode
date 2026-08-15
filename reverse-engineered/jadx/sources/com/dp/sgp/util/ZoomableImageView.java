package com.dp.sgp.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class ZoomableImageView extends AppCompatImageView {
    static final int CLICK = 3;
    static final int DRAG = 1;
    static final int NONE = 0;
    static final int ZOOM = 2;
    float bmHeight;
    float bmWidth;
    float bottom;
    Context context;
    float height;
    PointF last;
    float[] m;
    ScaleGestureDetector mScaleDetector;
    Matrix matrix;
    float maxScale;
    float minScale;
    int mode;
    float origHeight;
    float origWidth;
    float redundantXSpace;
    float redundantYSpace;
    float right;
    float saveScale;
    PointF start;
    float width;

    public ZoomableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.matrix = new Matrix();
        this.mode = 0;
        this.last = new PointF();
        this.start = new PointF();
        this.minScale = 1.0f;
        this.maxScale = 4.0f;
        this.saveScale = 1.0f;
        super.setClickable(true);
        this.context = context;
        this.mScaleDetector = new ScaleGestureDetector(context, new ScaleListener());
        this.matrix.setTranslate(1.0f, 1.0f);
        this.m = new float[9];
        setImageMatrix(this.matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.dp.sgp.util.ZoomableImageView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ZoomableImageView.this.mScaleDetector.onTouchEvent(motionEvent);
                ZoomableImageView.this.matrix.getValues(ZoomableImageView.this.m);
                float f = ZoomableImageView.this.m[2];
                float f2 = ZoomableImageView.this.m[5];
                PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
                int action = motionEvent.getAction();
                if (action == 0) {
                    ZoomableImageView.this.last.set(motionEvent.getX(), motionEvent.getY());
                    ZoomableImageView.this.start.set(ZoomableImageView.this.last);
                    ZoomableImageView.this.mode = 1;
                } else if (action == 1) {
                    ZoomableImageView.this.mode = 0;
                    int iAbs = (int) Math.abs(pointF.x - ZoomableImageView.this.start.x);
                    int iAbs2 = (int) Math.abs(pointF.y - ZoomableImageView.this.start.y);
                    if (iAbs < 3 && iAbs2 < 3) {
                        ZoomableImageView.this.performClick();
                    }
                } else if (action != 2) {
                    if (action == 5) {
                        ZoomableImageView.this.last.set(motionEvent.getX(), motionEvent.getY());
                        ZoomableImageView.this.start.set(ZoomableImageView.this.last);
                        ZoomableImageView.this.mode = 2;
                    } else if (action == 6) {
                        ZoomableImageView.this.mode = 0;
                    }
                } else if (ZoomableImageView.this.mode == 2 || (ZoomableImageView.this.mode == 1 && ZoomableImageView.this.saveScale > ZoomableImageView.this.minScale)) {
                    float f3 = pointF.x - ZoomableImageView.this.last.x;
                    float f4 = pointF.y - ZoomableImageView.this.last.y;
                    float fRound = Math.round(ZoomableImageView.this.origWidth * ZoomableImageView.this.saveScale);
                    float fRound2 = Math.round(ZoomableImageView.this.origHeight * ZoomableImageView.this.saveScale);
                    if (fRound < ZoomableImageView.this.width) {
                        float f5 = f2 + f4;
                        if (f5 > 0.0f) {
                            f4 = -f2;
                        } else if (f5 < (-ZoomableImageView.this.bottom)) {
                            f2 += ZoomableImageView.this.bottom;
                            f4 = -f2;
                        }
                        f3 = 0.0f;
                    } else if (fRound2 < ZoomableImageView.this.height) {
                        float f6 = f + f3;
                        if (f6 > 0.0f) {
                            f3 = -f;
                        } else if (f6 < (-ZoomableImageView.this.right)) {
                            f += ZoomableImageView.this.right;
                            f3 = -f;
                        }
                        f4 = 0.0f;
                    } else {
                        float f7 = f + f3;
                        if (f7 > 0.0f) {
                            f3 = -f;
                        } else if (f7 < (-ZoomableImageView.this.right)) {
                            f += ZoomableImageView.this.right;
                            f3 = -f;
                        }
                        float f8 = f2 + f4;
                        if (f8 > 0.0f) {
                            f4 = -f2;
                        } else if (f8 < (-ZoomableImageView.this.bottom)) {
                            f2 += ZoomableImageView.this.bottom;
                            f4 = -f2;
                        }
                    }
                    ZoomableImageView.this.matrix.postTranslate(f3, f4);
                    ZoomableImageView.this.last.set(pointF.x, pointF.y);
                }
                ZoomableImageView zoomableImageView = ZoomableImageView.this;
                zoomableImageView.setImageMatrix(zoomableImageView.matrix);
                ZoomableImageView.this.invalidate();
                return true;
            }
        });
    }

    @Override // android.support.v7.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.bmWidth = bitmap.getWidth();
        this.bmHeight = bitmap.getHeight();
    }

    public void setMaxZoom(float f) {
        this.maxScale = f;
    }

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            ZoomableImageView.this.mode = 2;
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:30:0x012f  */
        /* JADX WARN: Code duplicated, block: B:32:0x014a  */
        /* JADX WARN: Code duplicated, block: B:34:0x0161  */
        /* JADX WARN: Code duplicated, block: B:36:0x016a  */
        /* JADX WARN: Code duplicated, block: B:37:0x0178  */
        /* JADX WARN: Code duplicated, block: B:39:0x017c  */
        /* JADX WARN: Code duplicated, block: B:40:0x0185  */
        /* JADX WARN: Code duplicated, block: B:42:0x018e  */
        /* JADX WARN: Code duplicated, block: B:43:0x019c  */
        /* JADX WARN: Code duplicated, block: B:45:0x01a0  */
        /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float f;
            float f2;
            float f3;
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            float f4 = ZoomableImageView.this.saveScale;
            ZoomableImageView.this.saveScale *= scaleFactor;
            if (ZoomableImageView.this.saveScale > ZoomableImageView.this.maxScale) {
                ZoomableImageView zoomableImageView = ZoomableImageView.this;
                zoomableImageView.saveScale = zoomableImageView.maxScale;
                f = ZoomableImageView.this.maxScale;
            } else {
                if (ZoomableImageView.this.saveScale < ZoomableImageView.this.minScale) {
                    ZoomableImageView zoomableImageView2 = ZoomableImageView.this;
                    zoomableImageView2.saveScale = zoomableImageView2.minScale;
                    f = ZoomableImageView.this.minScale;
                }
                ZoomableImageView zoomableImageView3 = ZoomableImageView.this;
                zoomableImageView3.right = ((zoomableImageView3.width * ZoomableImageView.this.saveScale) - ZoomableImageView.this.width) - ((ZoomableImageView.this.redundantXSpace * 2.0f) * ZoomableImageView.this.saveScale);
                ZoomableImageView zoomableImageView4 = ZoomableImageView.this;
                zoomableImageView4.bottom = ((zoomableImageView4.height * ZoomableImageView.this.saveScale) - ZoomableImageView.this.height) - ((ZoomableImageView.this.redundantYSpace * 2.0f) * ZoomableImageView.this.saveScale);
                if (ZoomableImageView.this.origWidth * ZoomableImageView.this.saveScale > ZoomableImageView.this.width || ZoomableImageView.this.origHeight * ZoomableImageView.this.saveScale <= ZoomableImageView.this.height) {
                    ZoomableImageView.this.matrix.postScale(scaleFactor, scaleFactor, ZoomableImageView.this.width / 2.0f, ZoomableImageView.this.height / 2.0f);
                    if (scaleFactor < 1.0f) {
                        return true;
                    }
                    ZoomableImageView.this.matrix.getValues(ZoomableImageView.this.m);
                    f2 = ZoomableImageView.this.m[2];
                    f3 = ZoomableImageView.this.m[5];
                    if (scaleFactor < 1.0f) {
                        return true;
                    }
                    if (Math.round(ZoomableImageView.this.origWidth * ZoomableImageView.this.saveScale) < ZoomableImageView.this.width) {
                        if (f3 < (-ZoomableImageView.this.bottom)) {
                            ZoomableImageView.this.matrix.postTranslate(0.0f, -(f3 + ZoomableImageView.this.bottom));
                            return true;
                        }
                        if (f3 > 0.0f) {
                            return true;
                        }
                        ZoomableImageView.this.matrix.postTranslate(0.0f, -f3);
                        return true;
                    }
                    if (f2 < (-ZoomableImageView.this.right)) {
                        ZoomableImageView.this.matrix.postTranslate(-(f2 + ZoomableImageView.this.right), 0.0f);
                        return true;
                    }
                    if (f2 > 0.0f) {
                        return true;
                    }
                    ZoomableImageView.this.matrix.postTranslate(-f2, 0.0f);
                    return true;
                }
                ZoomableImageView.this.matrix.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                ZoomableImageView.this.matrix.getValues(ZoomableImageView.this.m);
                float f5 = ZoomableImageView.this.m[2];
                float f6 = ZoomableImageView.this.m[5];
                if (scaleFactor >= 1.0f) {
                    return true;
                }
                if (f5 < (-ZoomableImageView.this.right)) {
                    ZoomableImageView.this.matrix.postTranslate(-(f5 + ZoomableImageView.this.right), 0.0f);
                } else if (f5 > 0.0f) {
                    ZoomableImageView.this.matrix.postTranslate(-f5, 0.0f);
                }
                if (f6 < (-ZoomableImageView.this.bottom)) {
                    ZoomableImageView.this.matrix.postTranslate(0.0f, -(f6 + ZoomableImageView.this.bottom));
                    return true;
                }
                if (f6 <= 0.0f) {
                    return true;
                }
                ZoomableImageView.this.matrix.postTranslate(0.0f, -f6);
                return true;
            }
            scaleFactor = f / f4;
            ZoomableImageView zoomableImageView5 = ZoomableImageView.this;
            zoomableImageView5.right = ((zoomableImageView5.width * ZoomableImageView.this.saveScale) - ZoomableImageView.this.width) - ((ZoomableImageView.this.redundantXSpace * 2.0f) * ZoomableImageView.this.saveScale);
            ZoomableImageView zoomableImageView6 = ZoomableImageView.this;
            zoomableImageView6.bottom = ((zoomableImageView6.height * ZoomableImageView.this.saveScale) - ZoomableImageView.this.height) - ((ZoomableImageView.this.redundantYSpace * 2.0f) * ZoomableImageView.this.saveScale);
            if (ZoomableImageView.this.origWidth * ZoomableImageView.this.saveScale > ZoomableImageView.this.width) {
            }
            ZoomableImageView.this.matrix.postScale(scaleFactor, scaleFactor, ZoomableImageView.this.width / 2.0f, ZoomableImageView.this.height / 2.0f);
            if (scaleFactor < 1.0f) {
                return true;
            }
            ZoomableImageView.this.matrix.getValues(ZoomableImageView.this.m);
            f2 = ZoomableImageView.this.m[2];
            f3 = ZoomableImageView.this.m[5];
            if (scaleFactor < 1.0f) {
                return true;
            }
            if (Math.round(ZoomableImageView.this.origWidth * ZoomableImageView.this.saveScale) < ZoomableImageView.this.width) {
                if (f3 < (-ZoomableImageView.this.bottom)) {
                    ZoomableImageView.this.matrix.postTranslate(0.0f, -(f3 + ZoomableImageView.this.bottom));
                    return true;
                }
                if (f3 > 0.0f) {
                    return true;
                }
                ZoomableImageView.this.matrix.postTranslate(0.0f, -f3);
                return true;
            }
            if (f2 < (-ZoomableImageView.this.right)) {
                ZoomableImageView.this.matrix.postTranslate(-(f2 + ZoomableImageView.this.right), 0.0f);
                return true;
            }
            if (f2 > 0.0f) {
                return true;
            }
            ZoomableImageView.this.matrix.postTranslate(-f2, 0.0f);
            return true;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.width = View.MeasureSpec.getSize(i);
        float size = View.MeasureSpec.getSize(i2);
        this.height = size;
        float fMin = Math.min(this.width / this.bmWidth, size / this.bmHeight);
        this.matrix.setScale(fMin, fMin);
        setImageMatrix(this.matrix);
        this.saveScale = 1.0f;
        float f = this.height - (this.bmHeight * fMin);
        this.redundantYSpace = f;
        float f2 = this.width - (fMin * this.bmWidth);
        this.redundantXSpace = f2;
        float f3 = f / 2.0f;
        this.redundantYSpace = f3;
        float f4 = f2 / 2.0f;
        this.redundantXSpace = f4;
        this.matrix.postTranslate(f4, f3);
        float f5 = this.width;
        float f6 = this.redundantXSpace;
        this.origWidth = f5 - (f6 * 2.0f);
        float f7 = this.height;
        float f8 = this.redundantYSpace;
        this.origHeight = f7 - (f8 * 2.0f);
        float f9 = this.saveScale;
        this.right = ((f5 * f9) - f5) - ((f6 * 2.0f) * f9);
        this.bottom = ((f7 * f9) - f7) - ((f8 * 2.0f) * f9);
        setImageMatrix(this.matrix);
    }
}
