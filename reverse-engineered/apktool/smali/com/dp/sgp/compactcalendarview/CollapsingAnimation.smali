.class Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;
.super Landroid/view/animation/Animation;
.source "CollapsingAnimation.java"


# instance fields
.field private compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

.field private final down:Z

.field private targetGrowRadius:I

.field private final targetHeight:I

.field private final view:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;Lcom/dp/sgp/compactcalendarview/CompactCalendarController;IIZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->view:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    .line 16
    iput-object p2, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    .line 17
    iput p3, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->targetHeight:I

    .line 18
    iput p4, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->targetGrowRadius:I

    .line 19
    iput-boolean p5, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->down:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 26
    iget-boolean p2, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->down:Z

    if-eqz p2, :cond_0

    .line 27
    iget p2, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->targetHeight:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    .line 28
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->targetGrowRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float p1, p1, v0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 31
    iget p1, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->targetHeight:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 32
    iget v0, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->targetGrowRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float p2, p2, v0

    move v1, p2

    move p2, p1

    move p1, v1

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setGrowProgress(F)V

    .line 35
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->view:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;->view:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->requestLayout()V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
