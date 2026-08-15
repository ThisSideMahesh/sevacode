.class public Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;
.super Lcom/dp/sgp/tutoshowcase/shapes/Shape;
.source "RoundRect.java"


# static fields
.field public static final BORDER_PADDING:I = 0x1e


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Shape;-><init>()V

    .line 17
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->x:I

    .line 18
    iput p2, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->y:I

    .line 19
    iput p3, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->width:I

    .line 20
    iput p4, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->height:I

    return-void
.end method

.method private static drawRoundedRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 2

    sub-float v0, p4, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 50
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    invoke-virtual {p0, v1, v0, v0, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public drawOn(Landroid/graphics/Canvas;)V
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->isDisplayBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getX()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getY()I

    move-result v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->drawRoundedRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getX()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getY()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getY()I

    move-result v0

    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->drawRoundedRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->y:I

    return v0
.end method
