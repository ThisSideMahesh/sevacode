.class Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/util/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/util/ZoomableImageView;


# direct methods
.method private constructor <init>(Lcom/dp/sgp/util/ZoomableImageView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/util/ZoomableImageView;Lcom/dp/sgp/util/ZoomableImageView$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;-><init>(Lcom/dp/sgp/util/ZoomableImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    .line 180
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    .line 182
    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v3, v3, v0

    iput v3, v2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    .line 183
    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->maxScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v0, Lcom/dp/sgp/util/ZoomableImageView;->maxScale:F

    iput v2, v0, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    .line 186
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->maxScale:F

    :goto_0
    div-float/2addr v0, v1

    goto :goto_1

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->minScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 190
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v0, Lcom/dp/sgp/util/ZoomableImageView;->minScale:F

    iput v2, v0, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    .line 191
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->minScale:F

    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v1, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->redundantXSpace:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v5, v5, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    .line 194
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v1, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v3, v3, Lcom/dp/sgp/util/ZoomableImageView;->redundantYSpace:F

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v5, v5, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    .line 195
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->origWidth:F

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    const/4 v3, 0x5

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->origHeight:F

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_3

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 225
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 226
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    aget p1, p1, v5

    .line 227
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    aget v1, v1, v3

    cmpg-float v0, v0, v6

    if-gez v0, :cond_a

    .line 229
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    neg-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    add-float/2addr p1, v2

    neg-float p1, p1

    invoke-virtual {v0, p1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    :cond_3
    cmpl-float v0, p1, v7

    if-lez v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    invoke-virtual {v0, p1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 233
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    neg-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_5

    .line 234
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    :cond_5
    cmpl-float p1, v1, v7

    if-lez p1, :cond_a

    .line 236
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    .line 197
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    div-float/2addr v2, v4

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    cmpg-float p1, v0, v6

    if-gez p1, :cond_a

    .line 200
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 201
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    aget p1, p1, v5

    .line 202
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    aget v1, v1, v3

    cmpg-float v0, v0, v6

    if-gez v0, :cond_a

    .line 205
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->origWidth:F

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    .line 207
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    neg-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_7

    .line 208
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    :cond_7
    cmpl-float p1, v1, v7

    if-lez p1, :cond_a

    .line 210
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    neg-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    add-float/2addr p1, v1

    neg-float p1, p1

    invoke-virtual {v0, p1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    :cond_9
    cmpl-float v0, p1, v7

    if-lez v0, :cond_a

    .line 217
    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    neg-float p1, p1

    invoke-virtual {v0, p1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_a
    :goto_4
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$ScaleListener;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    const/4 v0, 0x2

    iput v0, p1, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    const/4 p1, 0x1

    return p1
.end method
