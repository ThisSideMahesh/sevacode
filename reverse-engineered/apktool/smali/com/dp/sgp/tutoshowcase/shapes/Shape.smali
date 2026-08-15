.class public abstract Lcom/dp/sgp/tutoshowcase/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# instance fields
.field private borderColor:I

.field private borderPaint:Landroid/graphics/Paint;

.field private color:I

.field private displayBorder:Z

.field protected paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->color:I

    const-string v1, "#AA999999"

    .line 13
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->borderColor:I

    .line 16
    iput-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->displayBorder:Z

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->paint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->borderPaint:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public abstract drawOn(Landroid/graphics/Canvas;)V
.end method

.method public getBorderColor()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->borderColor:I

    return v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->color:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDisplayBorder()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->displayBorder:Z

    return v0
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 55
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->borderColor:I

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 30
    iput p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->color:I

    .line 31
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDisplayBorder(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/dp/sgp/tutoshowcase/shapes/Shape;->displayBorder:Z

    return-void
.end method
