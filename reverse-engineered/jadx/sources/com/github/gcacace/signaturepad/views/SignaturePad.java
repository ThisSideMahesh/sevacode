package com.github.gcacace.signaturepad.views;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import com.github.gcacace.signaturepad.R;
import com.github.gcacace.signaturepad.utils.Bezier;
import com.github.gcacace.signaturepad.utils.ControlTimedPoints;
import com.github.gcacace.signaturepad.utils.SvgBuilder;
import com.github.gcacace.signaturepad.utils.TimedPoint;
import com.github.gcacace.signaturepad.view.ViewTreeObserverCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SignaturePad extends View {
    private static final int DOUBLE_CLICK_DELAY_MS = 200;
    private final boolean DEFAULT_ATTR_CLEAR_ON_DOUBLE_CLICK;
    private final int DEFAULT_ATTR_PEN_COLOR;
    private final int DEFAULT_ATTR_PEN_MAX_WIDTH_PX;
    private final int DEFAULT_ATTR_PEN_MIN_WIDTH_PX;
    private final float DEFAULT_ATTR_VELOCITY_FILTER_WEIGHT;
    private Bezier mBezierCached;
    private boolean mClearOnDoubleClick;
    private ControlTimedPoints mControlTimedPointsCached;
    private int mCountClick;
    private RectF mDirtyRect;
    private long mFirstClick;
    private boolean mIsEmpty;
    private float mLastTouchX;
    private float mLastTouchY;
    private float mLastVelocity;
    private float mLastWidth;
    private int mMaxWidth;
    private int mMinWidth;
    private OnSignedListener mOnSignedListener;
    private Paint mPaint;
    private List<TimedPoint> mPoints;
    private List<TimedPoint> mPointsCache;
    private Bitmap mSignatureBitmap;
    private Canvas mSignatureBitmapCanvas;
    private final SvgBuilder mSvgBuilder;
    private float mVelocityFilterWeight;

    public interface OnSignedListener {
        void onClear();

        void onSigned();

        void onStartSigning();
    }

    public SignaturePad(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSvgBuilder = new SvgBuilder();
        this.mPointsCache = new ArrayList();
        this.mControlTimedPointsCached = new ControlTimedPoints();
        this.mBezierCached = new Bezier();
        this.DEFAULT_ATTR_PEN_MIN_WIDTH_PX = 3;
        this.DEFAULT_ATTR_PEN_MAX_WIDTH_PX = 7;
        this.DEFAULT_ATTR_PEN_COLOR = ViewCompat.MEASURED_STATE_MASK;
        this.DEFAULT_ATTR_VELOCITY_FILTER_WEIGHT = 0.9f;
        this.DEFAULT_ATTR_CLEAR_ON_DOUBLE_CLICK = false;
        this.mPaint = new Paint();
        this.mSignatureBitmap = null;
        this.mSignatureBitmapCanvas = null;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SignaturePad, 0, 0);
        try {
            this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SignaturePad_penMinWidth, convertDpToPx(3.0f));
            this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SignaturePad_penMaxWidth, convertDpToPx(7.0f));
            this.mPaint.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SignaturePad_penColor, ViewCompat.MEASURED_STATE_MASK));
            this.mVelocityFilterWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.SignaturePad_velocityFilterWeight, 0.9f);
            this.mClearOnDoubleClick = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SignaturePad_clearOnDoubleClick, false);
            typedArrayObtainStyledAttributes.recycle();
            this.mPaint.setAntiAlias(true);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeCap(Paint.Cap.ROUND);
            this.mPaint.setStrokeJoin(Paint.Join.ROUND);
            this.mDirtyRect = new RectF();
            clear();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setPenColorRes(int i) {
        try {
            setPenColor(getResources().getColor(i));
        } catch (Resources.NotFoundException unused) {
            setPenColor(Color.parseColor("#000000"));
        }
    }

    public void setPenColor(int i) {
        this.mPaint.setColor(i);
    }

    public void setMinWidth(float f) {
        this.mMinWidth = convertDpToPx(f);
    }

    public void setMaxWidth(float f) {
        this.mMaxWidth = convertDpToPx(f);
    }

    public void setVelocityFilterWeight(float f) {
        this.mVelocityFilterWeight = f;
    }

    public void clear() {
        this.mSvgBuilder.clear();
        this.mPoints = new ArrayList();
        this.mLastVelocity = 0.0f;
        this.mLastWidth = (this.mMinWidth + this.mMaxWidth) / 2;
        if (this.mSignatureBitmap != null) {
            this.mSignatureBitmap = null;
            ensureSignatureBitmap();
        }
        setIsEmpty(true);
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            this.mPoints.clear();
            if (!isDoubleClick()) {
                this.mLastTouchX = x;
                this.mLastTouchY = y;
                addPoint(getNewPoint(x, y));
                OnSignedListener onSignedListener = this.mOnSignedListener;
                if (onSignedListener != null) {
                    onSignedListener.onStartSigning();
                }
                resetDirtyRect(x, y);
                addPoint(getNewPoint(x, y));
            }
        } else if (action != 1) {
            if (action != 2) {
                return false;
            }
            resetDirtyRect(x, y);
            addPoint(getNewPoint(x, y));
        } else {
            resetDirtyRect(x, y);
            addPoint(getNewPoint(x, y));
            getParent().requestDisallowInterceptTouchEvent(true);
            setIsEmpty(false);
        }
        invalidate((int) (this.mDirtyRect.left - this.mMaxWidth), (int) (this.mDirtyRect.top - this.mMaxWidth), (int) (this.mDirtyRect.right + this.mMaxWidth), (int) (this.mDirtyRect.bottom + this.mMaxWidth));
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap = this.mSignatureBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.mPaint);
        }
    }

    public void setOnSignedListener(OnSignedListener onSignedListener) {
        this.mOnSignedListener = onSignedListener;
    }

    public boolean isEmpty() {
        return this.mIsEmpty;
    }

    public String getSignatureSvg() {
        return this.mSvgBuilder.build(getTransparentSignatureBitmap().getWidth(), getTransparentSignatureBitmap().getHeight());
    }

    public Bitmap getSignatureBitmap() {
        Bitmap transparentSignatureBitmap = getTransparentSignatureBitmap();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(transparentSignatureBitmap.getWidth(), transparentSignatureBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(-1);
        canvas.drawBitmap(transparentSignatureBitmap, 0.0f, 0.0f, (Paint) null);
        return bitmapCreateBitmap;
    }

    public void setSignatureBitmap(final Bitmap bitmap) {
        if (com.github.gcacace.signaturepad.view.ViewCompat.isLaidOut(this)) {
            clear();
            ensureSignatureBitmap();
            RectF rectF = new RectF();
            RectF rectF2 = new RectF();
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int width2 = getWidth();
            int height2 = getHeight();
            rectF.set(0.0f, 0.0f, width, height);
            rectF2.set(0.0f, 0.0f, width2, height2);
            Matrix matrix = new Matrix();
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            new Canvas(this.mSignatureBitmap).drawBitmap(bitmap, matrix, null);
            setIsEmpty(false);
            invalidate();
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.github.gcacace.signaturepad.views.SignaturePad.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ViewTreeObserverCompat.removeOnGlobalLayoutListener(SignaturePad.this.getViewTreeObserver(), this);
                SignaturePad.this.setSignatureBitmap(bitmap);
            }
        });
    }

    public Bitmap getTransparentSignatureBitmap() {
        ensureSignatureBitmap();
        return this.mSignatureBitmap;
    }

    public Bitmap getTransparentSignatureBitmap(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (!z) {
            return getTransparentSignatureBitmap();
        }
        ensureSignatureBitmap();
        int height = this.mSignatureBitmap.getHeight();
        int width = this.mSignatureBitmap.getWidth();
        int i = Integer.MAX_VALUE;
        boolean z6 = false;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < width; i3++) {
            int i4 = 0;
            while (true) {
                if (i4 >= height) {
                    z5 = false;
                    break;
                }
                if (this.mSignatureBitmap.getPixel(i3, i4) != 0) {
                    i2 = i3;
                    z6 = true;
                    z5 = true;
                    break;
                }
                i4++;
            }
            if (z5) {
                break;
            }
        }
        if (!z6) {
            return null;
        }
        for (int i5 = 0; i5 < height; i5++) {
            int i6 = i2;
            while (true) {
                if (i6 >= width) {
                    z4 = false;
                    break;
                }
                if (this.mSignatureBitmap.getPixel(i6, i5) != 0) {
                    i = i5;
                    z4 = true;
                    break;
                }
                i6++;
            }
            if (z4) {
                break;
            }
        }
        int i7 = Integer.MIN_VALUE;
        int i8 = Integer.MIN_VALUE;
        for (int i9 = width - 1; i9 >= i2; i9--) {
            int i10 = i;
            while (true) {
                if (i10 >= height) {
                    z3 = false;
                    break;
                }
                if (this.mSignatureBitmap.getPixel(i9, i10) != 0) {
                    i8 = i9;
                    z3 = true;
                    break;
                }
                i10++;
            }
            if (z3) {
                break;
            }
        }
        for (int i11 = height - 1; i11 >= i; i11--) {
            int i12 = i2;
            while (true) {
                if (i12 > i8) {
                    z2 = false;
                    break;
                }
                if (this.mSignatureBitmap.getPixel(i12, i11) != 0) {
                    i7 = i11;
                    z2 = true;
                    break;
                }
                i12++;
            }
            if (z2) {
                break;
            }
        }
        return Bitmap.createBitmap(this.mSignatureBitmap, i2, i, i8 - i2, i7 - i);
    }

    private boolean isDoubleClick() {
        if (this.mClearOnDoubleClick) {
            if (this.mFirstClick != 0 && System.currentTimeMillis() - this.mFirstClick > 200) {
                this.mCountClick = 0;
            }
            int i = this.mCountClick + 1;
            this.mCountClick = i;
            if (i == 1) {
                this.mFirstClick = System.currentTimeMillis();
            } else if (i == 2 && System.currentTimeMillis() - this.mFirstClick < 200) {
                clear();
                return true;
            }
        }
        return false;
    }

    private TimedPoint getNewPoint(float f, float f2) {
        TimedPoint timedPointRemove;
        int size = this.mPointsCache.size();
        if (size == 0) {
            timedPointRemove = new TimedPoint();
        } else {
            timedPointRemove = this.mPointsCache.remove(size - 1);
        }
        return timedPointRemove.set(f, f2);
    }

    private void recyclePoint(TimedPoint timedPoint) {
        this.mPointsCache.add(timedPoint);
    }

    private void addPoint(TimedPoint timedPoint) {
        this.mPoints.add(timedPoint);
        int size = this.mPoints.size();
        if (size <= 3) {
            if (size == 1) {
                TimedPoint timedPoint2 = this.mPoints.get(0);
                this.mPoints.add(getNewPoint(timedPoint2.x, timedPoint2.y));
                return;
            }
            return;
        }
        ControlTimedPoints controlTimedPointsCalculateCurveControlPoints = calculateCurveControlPoints(this.mPoints.get(0), this.mPoints.get(1), this.mPoints.get(2));
        TimedPoint timedPoint3 = controlTimedPointsCalculateCurveControlPoints.c2;
        recyclePoint(controlTimedPointsCalculateCurveControlPoints.c1);
        ControlTimedPoints controlTimedPointsCalculateCurveControlPoints2 = calculateCurveControlPoints(this.mPoints.get(1), this.mPoints.get(2), this.mPoints.get(3));
        TimedPoint timedPoint4 = controlTimedPointsCalculateCurveControlPoints2.c1;
        recyclePoint(controlTimedPointsCalculateCurveControlPoints2.c2);
        Bezier bezier = this.mBezierCached.set(this.mPoints.get(1), timedPoint3, timedPoint4, this.mPoints.get(2));
        float fVelocityFrom = bezier.endPoint.velocityFrom(bezier.startPoint);
        if (Float.isNaN(fVelocityFrom)) {
            fVelocityFrom = 0.0f;
        }
        float f = this.mVelocityFilterWeight;
        float f2 = (fVelocityFrom * f) + ((1.0f - f) * this.mLastVelocity);
        float fStrokeWidth = strokeWidth(f2);
        addBezier(bezier, this.mLastWidth, fStrokeWidth);
        this.mLastVelocity = f2;
        this.mLastWidth = fStrokeWidth;
        recyclePoint(this.mPoints.remove(0));
        recyclePoint(timedPoint3);
        recyclePoint(timedPoint4);
    }

    private void addBezier(Bezier bezier, float f, float f2) {
        this.mSvgBuilder.append(bezier, (f + f2) / 2.0f);
        ensureSignatureBitmap();
        float strokeWidth = this.mPaint.getStrokeWidth();
        float f3 = f2 - f;
        float fFloor = (float) Math.floor(bezier.length());
        int i = 0;
        while (true) {
            float f4 = i;
            if (f4 < fFloor) {
                float f5 = f4 / fFloor;
                float f6 = f5 * f5;
                float f7 = f6 * f5;
                float f8 = 1.0f - f5;
                float f9 = f8 * f8;
                float f10 = f9 * f8;
                float f11 = f9 * 3.0f * f5;
                float f12 = f8 * 3.0f * f6;
                float f13 = (bezier.startPoint.x * f10) + (bezier.control1.x * f11) + (bezier.control2.x * f12) + (bezier.endPoint.x * f7);
                float f14 = (f10 * bezier.startPoint.y) + (f11 * bezier.control1.y) + (f12 * bezier.control2.y) + (bezier.endPoint.y * f7);
                this.mPaint.setStrokeWidth((f7 * f3) + f);
                this.mSignatureBitmapCanvas.drawPoint(f13, f14, this.mPaint);
                expandDirtyRect(f13, f14);
                i++;
            } else {
                this.mPaint.setStrokeWidth(strokeWidth);
                return;
            }
        }
    }

    private ControlTimedPoints calculateCurveControlPoints(TimedPoint timedPoint, TimedPoint timedPoint2, TimedPoint timedPoint3) {
        float f = timedPoint.x - timedPoint2.x;
        float f2 = timedPoint.y - timedPoint2.y;
        float f3 = timedPoint2.x - timedPoint3.x;
        float f4 = timedPoint2.y - timedPoint3.y;
        float f5 = (timedPoint.x + timedPoint2.x) / 2.0f;
        float f6 = (timedPoint.y + timedPoint2.y) / 2.0f;
        float f7 = (timedPoint2.x + timedPoint3.x) / 2.0f;
        float f8 = (timedPoint2.y + timedPoint3.y) / 2.0f;
        float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        float fSqrt2 = (float) Math.sqrt((f3 * f3) + (f4 * f4));
        float f9 = f5 - f7;
        float f10 = f6 - f8;
        float f11 = fSqrt2 / (fSqrt + fSqrt2);
        if (Float.isNaN(f11)) {
            f11 = 0.0f;
        }
        float f12 = timedPoint2.x - ((f9 * f11) + f7);
        float f13 = timedPoint2.y - ((f10 * f11) + f8);
        return this.mControlTimedPointsCached.set(getNewPoint(f5 + f12, f6 + f13), getNewPoint(f7 + f12, f8 + f13));
    }

    private float strokeWidth(float f) {
        return Math.max(this.mMaxWidth / (f + 1.0f), this.mMinWidth);
    }

    private void expandDirtyRect(float f, float f2) {
        if (f < this.mDirtyRect.left) {
            this.mDirtyRect.left = f;
        } else if (f > this.mDirtyRect.right) {
            this.mDirtyRect.right = f;
        }
        if (f2 < this.mDirtyRect.top) {
            this.mDirtyRect.top = f2;
        } else if (f2 > this.mDirtyRect.bottom) {
            this.mDirtyRect.bottom = f2;
        }
    }

    private void resetDirtyRect(float f, float f2) {
        this.mDirtyRect.left = Math.min(this.mLastTouchX, f);
        this.mDirtyRect.right = Math.max(this.mLastTouchX, f);
        this.mDirtyRect.top = Math.min(this.mLastTouchY, f2);
        this.mDirtyRect.bottom = Math.max(this.mLastTouchY, f2);
    }

    private void setIsEmpty(boolean z) {
        this.mIsEmpty = z;
        OnSignedListener onSignedListener = this.mOnSignedListener;
        if (onSignedListener != null) {
            if (z) {
                onSignedListener.onClear();
            } else {
                onSignedListener.onSigned();
            }
        }
    }

    private void ensureSignatureBitmap() {
        if (this.mSignatureBitmap == null) {
            this.mSignatureBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            this.mSignatureBitmapCanvas = new Canvas(this.mSignatureBitmap);
        }
    }

    private int convertDpToPx(float f) {
        return Math.round(getContext().getResources().getDisplayMetrics().density * f);
    }
}
