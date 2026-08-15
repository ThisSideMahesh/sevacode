.class public abstract Lcom/dp/sgp/viewpagertransformer/BaseTransformer;
.super Ljava/lang/Object;
.source "BaseTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected hideOffscreenPages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isPagingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPostTransform(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method protected onPreTransform(Landroid/view/View;F)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 75
    invoke-virtual {p0}, Lcom/dp/sgp/viewpagertransformer/BaseTransformer;->isPagingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    neg-float v0, v0

    mul-float v0, v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 77
    invoke-virtual {p0}, Lcom/dp/sgp/viewpagertransformer/BaseTransformer;->hideOffscreenPages()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method protected abstract onTransform(Landroid/view/View;F)V
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/viewpagertransformer/BaseTransformer;->onPreTransform(Landroid/view/View;F)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/viewpagertransformer/BaseTransformer;->onTransform(Landroid/view/View;F)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/viewpagertransformer/BaseTransformer;->onPostTransform(Landroid/view/View;F)V

    return-void
.end method
