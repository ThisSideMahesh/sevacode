.class public Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# static fields
.field public static final COUNT_NONE:I = -0x1

.field public static final DEFAULT_COUNT:I = 0x3

.field public static final DEFAULT_PADDING_DP:I = 0x8

.field public static final DEFAULT_RADIUS_DP:I = 0x6

.field public static final MIN_COUNT:I = 0x1


# instance fields
.field private animationDuration:J

.field private animationType:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

.field private autoVisibility:Z

.field private count:I

.field private dynamicCount:Z

.field private height:I

.field private interactiveAnimation:Z

.field private lastSelectedPosition:I

.field private orientation:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

.field private padding:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private radius:I

.field private rtlMode:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

.field private scaleFactor:F

.field private selectedColor:I

.field private selectedPosition:I

.field private selectingPosition:I

.field private stroke:I

.field private unselectedColor:I

.field private viewPagerId:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->count:I

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->viewPagerId:I

    return-void
.end method


# virtual methods
.method public getAnimationDuration()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->animationDuration:J

    return-wide v0
.end method

.method public getAnimationType()Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->animationType:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->NONE:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->animationType:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->animationType:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->count:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->height:I

    return v0
.end method

.method public getLastSelectedPosition()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->lastSelectedPosition:I

    return v0
.end method

.method public getOrientation()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->orientation:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;->HORIZONTAL:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->orientation:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->orientation:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->padding:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingTop:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->radius:I

    return v0
.end method

.method public getRtlMode()Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->rtlMode:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    if-nez v0, :cond_0

    .line 238
    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;->Off:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->rtlMode:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->rtlMode:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->scaleFactor:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->selectedColor:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->selectedPosition:I

    return v0
.end method

.method public getSelectingPosition()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->selectingPosition:I

    return v0
.end method

.method public getStroke()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->stroke:I

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->unselectedColor:I

    return v0
.end method

.method public getViewPagerId()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->viewPagerId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->width:I

    return v0
.end method

.method public isAutoVisibility()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->autoVisibility:Z

    return v0
.end method

.method public isDynamicCount()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->dynamicCount:Z

    return v0
.end method

.method public isInteractiveAnimation()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->interactiveAnimation:Z

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 176
    iput-wide p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->animationDuration:J

    return-void
.end method

.method public setAnimationType(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->animationType:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    return-void
.end method

.method public setAutoVisibility(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->autoVisibility:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->count:I

    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->dynamicCount:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->height:I

    return-void
.end method

.method public setInteractiveAnimation(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->interactiveAnimation:Z

    return-void
.end method

.method public setLastSelectedPosition(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->lastSelectedPosition:I

    return-void
.end method

.method public setOrientation(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->orientation:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Orientation;

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->padding:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingBottom:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->paddingTop:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->radius:I

    return-void
.end method

.method public setRtlMode(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->rtlMode:Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/RtlMode;

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->scaleFactor:F

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->selectedColor:I

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->selectedPosition:I

    return-void
.end method

.method public setSelectingPosition(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->selectingPosition:I

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->stroke:I

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->unselectedColor:I

    return-void
.end method

.method public setViewPagerId(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->viewPagerId:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/draw/data/Indicator;->width:I

    return-void
.end method
