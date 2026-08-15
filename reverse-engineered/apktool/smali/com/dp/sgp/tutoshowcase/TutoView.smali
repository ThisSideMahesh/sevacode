.class Lcom/dp/sgp/tutoshowcase/TutoView;
.super Landroid/view/View;
.source "TutoView.java"


# static fields
.field static final DEFAULT_ALPHA_COLOR:I = 0xc8


# instance fields
.field backgroundOverlayColor:I

.field shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/tutoshowcase/shapes/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xc8

    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->backgroundOverlayColor:I

    .line 25
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xc8

    const/4 p2, 0x0

    .line 20
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->backgroundOverlayColor:I

    .line 30
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xc8

    const/4 p2, 0x0

    .line 20
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->backgroundOverlayColor:I

    .line 35
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 3

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->shapes:Ljava/util/List;

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/dp/sgp/tutoshowcase/TutoView;->setDrawingCacheEnabled(Z)V

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/dp/sgp/tutoshowcase/TutoView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCircle(Lcom/dp/sgp/tutoshowcase/shapes/Circle;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->shapes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRoundRect(Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->shapes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBackgroundOverlayColor()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->backgroundOverlayColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->backgroundOverlayColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 59
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/tutoshowcase/shapes/Shape;

    .line 60
    invoke-virtual {v1, p1}, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->drawOn(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackgroundOverlayColor(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/TutoView;->backgroundOverlayColor:I

    return-void
.end method
