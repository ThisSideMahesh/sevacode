.class public Lcom/dp/sgp/util/ZoomableImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;
    }
.end annotation


# static fields
.field static final CLICK:I = 0x3

.field static final DRAG:I = 0x1

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field bmHeight:F

.field bmWidth:F

.field bottom:F

.field context:Landroid/content/Context;

.field height:F

.field last:Landroid/graphics/PointF;

.field m:[F

.field mScaleDetector:Landroid/view/ScaleGestureDetector;

.field matrix:Landroid/graphics/Matrix;

.field maxScale:F

.field minScale:F

.field mode:I

.field origHeight:F

.field origWidth:F

.field redundantXSpace:F

.field redundantYSpace:F

.field right:F

.field saveScale:F

.field start:Landroid/graphics/PointF;

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    .line 26
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    .line 27
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->start:Landroid/graphics/PointF;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    iput p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->minScale:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 29
    iput v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->maxScale:F

    .line 34
    iput p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    const/4 v0, 0x1

    .line 43
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setClickable(Z)V

    .line 44
    iput-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;-><init>(Lcom/dp/sgp/util/ZoomableImageView;Lcom/dp/sgp/util/ZoomableImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 46
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 47
    iput-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    .line 48
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 49
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    new-instance p1, Lcom/dp/sgp/util/ZoomableImageView$1;

    invoke-direct {p1, p0}, Lcom/dp/sgp/util/ZoomableImageView$1;-><init>(Lcom/dp/sgp/util/ZoomableImageView;)V

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/ZoomableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 246
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 247
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    .line 248
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    .line 251
    iget p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    iget v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->bmWidth:F

    div-float/2addr p2, v0

    .line 252
    iget v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->bmHeight:F

    div-float/2addr p1, v0

    .line 253
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 254
    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 255
    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Lcom/dp/sgp/util/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 256
    iput p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    .line 259
    iget p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    iget v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->bmHeight:F

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->redundantYSpace:F

    .line 260
    iget v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    iget v1, p0, Lcom/dp/sgp/util/ZoomableImageView;->bmWidth:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->redundantXSpace:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    .line 261
    iput p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->redundantYSpace:F

    div-float/2addr v0, p1

    .line 262
    iput v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->redundantXSpace:F

    .line 264
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 266
    iget p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    iget v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->redundantXSpace:F

    mul-float v1, v0, p1

    sub-float v1, p2, v1

    iput v1, p0, Lcom/dp/sgp/util/ZoomableImageView;->origWidth:F

    .line 267
    iget v1, p0, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    iget v2, p0, Lcom/dp/sgp/util/ZoomableImageView;->redundantYSpace:F

    mul-float v3, v2, p1

    sub-float v3, v1, v3

    iput v3, p0, Lcom/dp/sgp/util/ZoomableImageView;->origHeight:F

    .line 268
    iget v3, p0, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v4, p2, v3

    sub-float/2addr v4, p2

    mul-float v0, v0, p1

    mul-float v0, v0, v3

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    mul-float p2, v1, v3

    sub-float/2addr p2, v1

    mul-float v2, v2, p1

    mul-float v2, v2, v3

    sub-float/2addr p2, v2

    .line 269
    iput p2, p0, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    .line 270
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dp/sgp/util/ZoomableImageView;->bmWidth:F

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->bmHeight:F

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/dp/sgp/util/ZoomableImageView;->maxScale:F

    return-void
.end method
