.class public Lcom/dp/sgp/autoimageslider/Transformations/CubeInScalingTransformation;
.super Ljava/lang/Object;
.source "CubeInScalingTransformation.java"

# interfaces
.implements Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7

    const v0, 0x469c4000    # 20000.0f

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    cmpg-float v2, p2, v0

    if-gtz v2, :cond_1

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 21
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_1
    cmpg-float v2, p2, v1

    if-gtz v2, :cond_2

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 27
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const v0, 0x3ecccccd    # 0.4f

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_3

    .line 39
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 41
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_4

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    :goto_1
    return-void
.end method
