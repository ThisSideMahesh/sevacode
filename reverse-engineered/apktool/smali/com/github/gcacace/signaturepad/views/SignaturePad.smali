.class public Lcom/github/gcacace/signaturepad/views/SignaturePad;
.super Landroid/view/View;
.source "SignaturePad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_DELAY_MS:I = 0xc8


# instance fields
.field private final DEFAULT_ATTR_CLEAR_ON_DOUBLE_CLICK:Z

.field private final DEFAULT_ATTR_PEN_COLOR:I

.field private final DEFAULT_ATTR_PEN_MAX_WIDTH_PX:I

.field private final DEFAULT_ATTR_PEN_MIN_WIDTH_PX:I

.field private final DEFAULT_ATTR_VELOCITY_FILTER_WEIGHT:F

.field private mBezierCached:Lcom/github/gcacace/signaturepad/utils/Bezier;

.field private mClearOnDoubleClick:Z

.field private mControlTimedPointsCached:Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;

.field private mCountClick:I

.field private mDirtyRect:Landroid/graphics/RectF;

.field private mFirstClick:J

.field private mIsEmpty:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVelocity:F

.field private mLastWidth:F

.field private mMaxWidth:I

.field private mMinWidth:I

.field private mOnSignedListener:Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/gcacace/signaturepad/utils/TimedPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/gcacace/signaturepad/utils/TimedPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mSignatureBitmap:Landroid/graphics/Bitmap;

.field private mSignatureBitmapCanvas:Landroid/graphics/Canvas;

.field private final mSvgBuilder:Lcom/github/gcacace/signaturepad/utils/SvgBuilder;

.field private mVelocityFilterWeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;

    invoke-direct {v0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSvgBuilder:Lcom/github/gcacace/signaturepad/utils/SvgBuilder;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPointsCache:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;

    invoke-direct {v0}, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;-><init>()V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mControlTimedPointsCached:Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;

    .line 43
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/Bezier;

    invoke-direct {v0}, Lcom/github/gcacace/signaturepad/utils/Bezier;-><init>()V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mBezierCached:Lcom/github/gcacace/signaturepad/utils/Bezier;

    const/4 v0, 0x3

    .line 58
    iput v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->DEFAULT_ATTR_PEN_MIN_WIDTH_PX:I

    const/4 v0, 0x7

    .line 59
    iput v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->DEFAULT_ATTR_PEN_MAX_WIDTH_PX:I

    const/high16 v0, -0x1000000

    .line 60
    iput v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->DEFAULT_ATTR_PEN_COLOR:I

    const v1, 0x3f666666    # 0.9f

    .line 61
    iput v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->DEFAULT_ATTR_VELOCITY_FILTER_WEIGHT:F

    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->DEFAULT_ATTR_CLEAR_ON_DOUBLE_CLICK:Z

    .line 64
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    .line 65
    iput-object v3, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object v3, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmapCanvas:Landroid/graphics/Canvas;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/github/gcacace/signaturepad/R$styleable;->SignaturePad:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    :try_start_0
    sget p2, Lcom/github/gcacace/signaturepad/R$styleable;->SignaturePad_penMinWidth:I

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {p0, v3}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->convertDpToPx(F)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMinWidth:I

    .line 79
    sget p2, Lcom/github/gcacace/signaturepad/R$styleable;->SignaturePad_penMaxWidth:I

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-direct {p0, v3}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->convertDpToPx(F)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    .line 80
    iget-object p2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/github/gcacace/signaturepad/R$styleable;->SignaturePad_penColor:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    sget p2, Lcom/github/gcacace/signaturepad/R$styleable;->SignaturePad_velocityFilterWeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mVelocityFilterWeight:F

    .line 82
    sget p2, Lcom/github/gcacace/signaturepad/R$styleable;->SignaturePad_clearOnDoubleClick:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mClearOnDoubleClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 94
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    .line 96
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->clear()V

    return-void

    :catchall_0
    move-exception p2

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private addBezier(Lcom/github/gcacace/signaturepad/utils/Bezier;FF)V
    .locals 11

    .line 460
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSvgBuilder:Lcom/github/gcacace/signaturepad/utils/SvgBuilder;

    add-float v1, p2, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->append(Lcom/github/gcacace/signaturepad/utils/Bezier;F)Lcom/github/gcacace/signaturepad/utils/SvgBuilder;

    .line 461
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->ensureSignatureBitmap()V

    .line 462
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    sub-float/2addr p3, p2

    .line 464
    invoke-virtual {p1}, Lcom/github/gcacace/signaturepad/utils/Bezier;->length()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    :goto_0
    int-to-float v3, v2

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    div-float/2addr v3, v1

    mul-float v4, v3, v3

    mul-float v5, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v3

    mul-float v7, v6, v6

    mul-float v8, v7, v6

    .line 475
    iget-object v9, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v9, v9, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    mul-float v9, v9, v8

    const/high16 v10, 0x40400000    # 3.0f

    mul-float v7, v7, v10

    mul-float v7, v7, v3

    .line 476
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->control1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    mul-float v3, v3, v7

    add-float/2addr v9, v3

    mul-float v6, v6, v10

    mul-float v6, v6, v4

    .line 477
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->control2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    mul-float v3, v3, v6

    add-float/2addr v9, v3

    .line 478
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    mul-float v3, v3, v5

    add-float/2addr v9, v3

    .line 480
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    mul-float v8, v8, v3

    .line 481
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->control1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    mul-float v7, v7, v3

    add-float/2addr v8, v7

    .line 482
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->control2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    mul-float v6, v6, v3

    add-float/2addr v8, v6

    .line 483
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget v3, v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    mul-float v3, v3, v5

    add-float/2addr v8, v3

    .line 486
    iget-object v3, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    mul-float v5, v5, p3

    add-float/2addr v5, p2

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    iget-object v3, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9, v8, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 488
    invoke-direct {p0, v9, v8}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->expandDirtyRect(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private addPoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V
    .locals 7

    .line 407
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_1

    .line 412
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget-object v3, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget-object v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {p0, p1, v3, v4}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->calculateCurveControlPoints(Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;)Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;

    move-result-object p1

    .line 413
    iget-object v3, p1, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;->c2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 414
    iget-object p1, p1, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;->c1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->recyclePoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 416
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget-object v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget-object v6, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {p0, p1, v4, v0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->calculateCurveControlPoints(Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;)Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;

    move-result-object p1

    .line 417
    iget-object v0, p1, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;->c1:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 418
    iget-object p1, p1, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;->c2:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->recyclePoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 420
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mBezierCached:Lcom/github/gcacace/signaturepad/utils/Bezier;

    iget-object v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    iget-object v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-virtual {p1, v2, v3, v0, v4}, Lcom/github/gcacace/signaturepad/utils/Bezier;->set(Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;)Lcom/github/gcacace/signaturepad/utils/Bezier;

    move-result-object p1

    .line 422
    iget-object v2, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->startPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 423
    iget-object v4, p1, Lcom/github/gcacace/signaturepad/utils/Bezier;->endPoint:Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 425
    invoke-virtual {v4, v2}, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->velocityFrom(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)F

    move-result v2

    .line 426
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 428
    :cond_0
    iget v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mVelocityFilterWeight:F

    mul-float v2, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    iget v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastVelocity:F

    mul-float v5, v5, v4

    add-float/2addr v2, v5

    .line 433
    invoke-direct {p0, v2}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->strokeWidth(F)F

    move-result v4

    .line 439
    iget v5, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastWidth:F

    invoke-direct {p0, p1, v5, v4}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->addBezier(Lcom/github/gcacace/signaturepad/utils/Bezier;FF)V

    .line 441
    iput v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastVelocity:F

    .line 442
    iput v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastWidth:F

    .line 446
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->recyclePoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 448
    invoke-direct {p0, v3}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->recyclePoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 449
    invoke-direct {p0, v0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->recyclePoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 454
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 455
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    iget v1, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget p1, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    invoke-direct {p0, v1, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getNewPoint(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCurveControlPoints(Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;)Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;
    .locals 8

    .line 495
    iget v0, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget v1, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    sub-float/2addr v0, v1

    .line 496
    iget v1, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget v2, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    sub-float/2addr v1, v2

    .line 497
    iget v2, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget v3, p3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    sub-float/2addr v2, v3

    .line 498
    iget v3, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget v4, p3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    sub-float/2addr v3, v4

    .line 500
    iget v4, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget v5, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 501
    iget p1, p1, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget v6, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    add-float/2addr p1, v6

    div-float/2addr p1, v5

    .line 502
    iget v6, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    iget v7, p3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    add-float/2addr v6, v7

    div-float/2addr v6, v5

    .line 503
    iget v7, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    iget p3, p3, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    add-float/2addr v7, p3

    div-float/2addr v7, v5

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 505
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p3, v0

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    float-to-double v0, v2

    .line 506
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, v4, v6

    sub-float v2, p1, v7

    add-float/2addr p3, v0

    div-float/2addr v0, p3

    .line 511
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :cond_0
    mul-float v1, v1, v0

    add-float/2addr v1, v6

    mul-float v2, v2, v0

    add-float/2addr v2, v7

    .line 515
    iget p3, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->x:F

    sub-float/2addr p3, v1

    .line 516
    iget p2, p2, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->y:F

    sub-float/2addr p2, v2

    .line 518
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mControlTimedPointsCached:Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;

    add-float/2addr v4, p3

    add-float/2addr p1, p2

    invoke-direct {p0, v4, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getNewPoint(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    move-result-object p1

    add-float/2addr v6, p3

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getNewPoint(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;->set(Lcom/github/gcacace/signaturepad/utils/TimedPoint;Lcom/github/gcacace/signaturepad/utils/TimedPoint;)Lcom/github/gcacace/signaturepad/utils/ControlTimedPoints;

    move-result-object p1

    return-object p1
.end method

.method private convertDpToPx(F)I
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private ensureSignatureBitmap()V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    .line 575
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmapCanvas:Landroid/graphics/Canvas;

    :cond_0
    return-void
.end method

.method private expandDirtyRect(FF)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 538
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 539
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 540
    :cond_2
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 541
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    :goto_1
    return-void
.end method

.method private getNewPoint(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPointsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    invoke-direct {v0}, Lcom/github/gcacace/signaturepad/utils/TimedPoint;-><init>()V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPointsCache:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    .line 399
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/github/gcacace/signaturepad/utils/TimedPoint;->set(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    move-result-object p1

    return-object p1
.end method

.method private isDoubleClick()Z
    .locals 10

    .line 370
    iget-boolean v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mClearOnDoubleClick:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 371
    iget-wide v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mFirstClick:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mFirstClick:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 372
    iput v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mCountClick:I

    .line 374
    :cond_0
    iget v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mCountClick:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mCountClick:I

    if-ne v0, v2, :cond_1

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mFirstClick:J

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 379
    iget-wide v8, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mFirstClick:J

    sub-long/2addr v3, v8

    cmp-long v0, v3, v6

    if-gez v0, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->clear()V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private recyclePoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPointsCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetDirtyRect(FF)V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastTouchX:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 555
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastTouchX:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 556
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastTouchY:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 557
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastTouchY:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setIsEmpty(Z)V
    .locals 1

    .line 561
    iput-boolean p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mIsEmpty:Z

    .line 562
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mOnSignedListener:Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 564
    invoke-interface {v0}, Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;->onClear()V

    goto :goto_0

    .line 566
    :cond_0
    invoke-interface {v0}, Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;->onSigned()V

    :cond_1
    :goto_0
    return-void
.end method

.method private strokeWidth(F)F
    .locals 2

    .line 522
    iget v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMinWidth:I

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSvgBuilder:Lcom/github/gcacace/signaturepad/utils/SvgBuilder;

    invoke-virtual {v0}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->clear()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastVelocity:F

    .line 153
    iget v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMinWidth:I

    iget v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastWidth:F

    .line 155
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->ensureSignatureBitmap()V

    :cond_0
    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->setIsEmpty(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->invalidate()V

    return-void
.end method

.method public getSignatureBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 231
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getTransparentSignatureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 233
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, -0x1

    .line 234
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 235
    invoke-virtual {v2, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public getSignatureSvg()Ljava/lang/String;
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getTransparentSignatureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 226
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getTransparentSignatureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSvgBuilder:Lcom/github/gcacace/signaturepad/utils/SvgBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/github/gcacace/signaturepad/utils/SvgBuilder;->build(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransparentSignatureBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 281
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->ensureSignatureBitmap()V

    .line 282
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTransparentSignatureBitmap(Z)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getTransparentSignatureBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->ensureSignatureBitmap()V

    .line 293
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 294
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v0, :cond_4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p1, :cond_2

    .line 309
    iget-object v8, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    if-eqz v8, :cond_1

    move v5, v3

    const/4 v4, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-nez v4, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-ge v3, p1, :cond_9

    move v4, v5

    :goto_5
    if-ge v4, v0, :cond_7

    .line 328
    iget-object v7, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_6

    move v1, v3

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    sub-int/2addr v0, v6

    const/high16 v3, -0x80000000

    const/high16 v4, -0x80000000

    :goto_8
    if-lt v0, v5, :cond_d

    move v7, v1

    :goto_9
    if-ge v7, p1, :cond_b

    .line 342
    iget-object v8, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    if-eqz v8, :cond_a

    move v4, v0

    const/4 v7, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_d
    :goto_b
    sub-int/2addr p1, v6

    :goto_c
    if-lt p1, v1, :cond_11

    move v0, v5

    :goto_d
    if-gt v0, v4, :cond_f

    .line 356
    iget-object v7, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v0, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_e

    move v3, p1

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_f
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_10

    goto :goto_f

    :cond_10
    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    .line 366
    :cond_11
    :goto_f
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    sub-int/2addr v4, v5

    sub-int/2addr v3, v1

    invoke-static {p1, v5, v1, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mIsEmpty:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 167
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    return v1

    .line 189
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->resetDirtyRect(FF)V

    .line 190
    invoke-direct {p0, v0, v2}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getNewPoint(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->addPoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 191
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 192
    invoke-direct {p0, v1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->setIsEmpty(Z)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 176
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 177
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->isDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 178
    :cond_3
    iput v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastTouchX:F

    .line 179
    iput v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mLastTouchY:F

    .line 180
    invoke-direct {p0, v0, v2}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getNewPoint(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->addPoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 181
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mOnSignedListener:Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;->onStartSigning()V

    .line 184
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->resetDirtyRect(FF)V

    .line 185
    invoke-direct {p0, v0, v2}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getNewPoint(FF)Lcom/github/gcacace/signaturepad/utils/TimedPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->addPoint(Lcom/github/gcacace/signaturepad/utils/TimedPoint;)V

    .line 200
    :goto_0
    iget-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mDirtyRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->invalidate(IIII)V

    return v3
.end method

.method public setMaxWidth(F)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->convertDpToPx(F)I

    move-result p1

    iput p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMaxWidth:I

    return-void
.end method

.method public setMinWidth(F)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->convertDpToPx(F)I

    move-result p1

    iput p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mMinWidth:I

    return-void
.end method

.method public setOnSignedListener(Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mOnSignedListener:Lcom/github/gcacace/signaturepad/views/SignaturePad$OnSignedListener;

    return-void
.end method

.method public setPenColor(I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPenColorRes(I)V
    .locals 1

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->setPenColor(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "#000000"

    .line 109
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->setPenColor(I)V

    :goto_0
    return-void
.end method

.method public setSignatureBitmap(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 241
    invoke-static {p0}, Lcom/github/gcacace/signaturepad/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->clear()V

    .line 243
    invoke-direct {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->ensureSignatureBitmap()V

    .line 245
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 246
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 250
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getWidth()I

    move-result v4

    .line 251
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getHeight()I

    move-result v5

    int-to-float v2, v2

    int-to-float v3, v3

    const/4 v6, 0x0

    .line 254
    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v2, v4

    int-to-float v3, v5

    .line 255
    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 258
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 260
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mSignatureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 262
    invoke-direct {p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->setIsEmpty(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->invalidate()V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/github/gcacace/signaturepad/views/SignaturePad;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/github/gcacace/signaturepad/views/SignaturePad$1;

    invoke-direct {v1, p0, p1}, Lcom/github/gcacace/signaturepad/views/SignaturePad$1;-><init>(Lcom/github/gcacace/signaturepad/views/SignaturePad;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public setVelocityFilterWeight(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/github/gcacace/signaturepad/views/SignaturePad;->mVelocityFilterWeight:F

    return-void
.end method
