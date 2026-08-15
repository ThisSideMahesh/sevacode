.class Lcom/dp/sgp/util/ZoomableImageView$1;
.super Ljava/lang/Object;
.source "ZoomableImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/util/ZoomableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/util/ZoomableImageView;


# direct methods
.method constructor <init>(Lcom/dp/sgp/util/ZoomableImageView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 57
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 60
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    .line 61
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->m:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 62
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    const/4 v6, 0x0

    if-eq v4, v5, :cond_e

    if-eq v4, v0, :cond_2

    if-eq v4, v2, :cond_1

    const/4 p1, 0x6

    if-eq v4, p1, :cond_0

    goto/16 :goto_8

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iput v6, p1, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    goto/16 :goto_8

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 77
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 78
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iput v0, p1, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    goto/16 :goto_8

    .line 85
    :cond_2
    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    if-ne p2, v5, :cond_10

    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->minScale:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_10

    .line 87
    :cond_3
    iget p2, v3, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    .line 88
    iget v0, v3, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    .line 89
    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->origWidth:F

    iget-object v4, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v4, v4, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 90
    iget-object v4, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v4, v4, Lcom/dp/sgp/util/ZoomableImageView;->origHeight:F

    iget-object v6, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v6, v6, Lcom/dp/sgp/util/ZoomableImageView;->saveScale:F

    mul-float v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    .line 94
    iget-object v6, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v6, v6, Lcom/dp/sgp/util/ZoomableImageView;->width:F

    const/4 v7, 0x0

    cmpg-float v2, v2, v6

    if-gez v2, :cond_6

    add-float p1, v1, v0

    cmpl-float p2, p1, v7

    if-lez p2, :cond_4

    :goto_0
    neg-float v0, v1

    goto :goto_1

    .line 99
    :cond_4
    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    neg-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    .line 100
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    add-float/2addr v1, p1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p2, 0x0

    goto :goto_7

    .line 105
    :cond_6
    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->height:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_9

    add-float v0, p1, p2

    cmpl-float v1, v0, v7

    if-lez v1, :cond_7

    :goto_2
    neg-float p2, p1

    goto :goto_3

    .line 110
    :cond_7
    iget-object v1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v1, v1, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 111
    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    add-float/2addr p1, p2

    goto :goto_2

    :cond_8
    :goto_3
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    add-float v2, p1, p2

    cmpl-float v4, v2, v7

    if-lez v4, :cond_a

    :goto_4
    neg-float p2, p1

    goto :goto_5

    .line 119
    :cond_a
    iget-object v4, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v4, v4, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    neg-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_b

    .line 120
    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->right:F

    add-float/2addr p1, p2

    goto :goto_4

    :cond_b
    :goto_5
    add-float p1, v1, v0

    cmpl-float v2, p1, v7

    if-lez v2, :cond_c

    :goto_6
    neg-float v0, v1

    goto :goto_7

    .line 124
    :cond_c
    iget-object v2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget v2, v2, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    neg-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_d

    .line 125
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->bottom:F

    add-float/2addr v1, p1

    goto :goto_6

    .line 128
    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 130
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    iget p2, v3, Landroid/graphics/PointF;->x:F

    iget v0, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_8

    .line 135
    :cond_e
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iput v6, p1, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    .line 136
    iget p1, v3, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 137
    iget p2, v3, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object v0, v0, Lcom/dp/sgp/util/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, 0x3

    if-ge p1, v0, :cond_10

    if-ge p2, v0, :cond_10

    .line 139
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    invoke-virtual {p1}, Lcom/dp/sgp/util/ZoomableImageView;->performClick()Z

    goto :goto_8

    .line 69
    :cond_f
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 70
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p1, p1, Lcom/dp/sgp/util/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p2, p2, Lcom/dp/sgp/util/ZoomableImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iput v5, p1, Lcom/dp/sgp/util/ZoomableImageView;->mode:I

    .line 146
    :cond_10
    :goto_8
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    iget-object p2, p1, Lcom/dp/sgp/util/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/util/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 147
    iget-object p1, p0, Lcom/dp/sgp/util/ZoomableImageView$1;->this$0:Lcom/dp/sgp/util/ZoomableImageView;

    invoke-virtual {p1}, Lcom/dp/sgp/util/ZoomableImageView;->invalidate()V

    return v5
.end method
