.class Lcom/dp/sgp/compactcalendarview/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# static fields
.field private static final HEIGHT_ANIM_DURATION_MILLIS:I = 0x28a

.field private static final INDICATOR_ANIM_DURATION_MILLIS:I = 0x258


# instance fields
.field private compactCalendarAnimationListener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;

.field private compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

.field private compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

.field private isAnimating:Z


# direct methods
.method constructor <init>(Lcom/dp/sgp/compactcalendarview/CompactCalendarController;Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    .line 22
    iput-object p2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->onOpen()V

    return-void
.end method

.method static synthetic access$202(Lcom/dp/sgp/compactcalendarview/AnimationHandler;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->onClose()V

    return-void
.end method

.method static synthetic access$400(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    return-object p0
.end method

.method private getCollapsingAnimation(Z)Landroid/view/animation/Animation;
    .locals 7

    .line 149
    new-instance v6, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getTargetHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getTargetGrowRadius()I

    move-result v4

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/compactcalendarview/CollapsingAnimation;-><init>(Lcom/dp/sgp/compactcalendarview/CompactCalendarView;Lcom/dp/sgp/compactcalendarview/CompactCalendarController;IIZ)V

    return-object v6
.end method

.method private getExposeCollapsingAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getCollapsingAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    const-wide/16 v0, 0x28a

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 143
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object p1
.end method

.method private getIndicatorAnimator(FF)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 154
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x258

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 156
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    new-instance p2, Lcom/dp/sgp/compactcalendarview/AnimationHandler$5;

    invoke-direct {p2, p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler$5;-><init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getTargetGrowRadius()I
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getTargetHeight()I

    move-result v0

    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getTargetHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 169
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getWidth()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private onClose()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarAnimationListener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;->onClosed()V

    :cond_0
    return-void
.end method

.method private onOpen()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarAnimationListener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;->onOpened()V

    :cond_0
    return-void
.end method

.method private setUpAnimationLisForClose(Landroid/view/animation/Animation;)V
    .locals 1

    .line 197
    new-instance v0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$7;

    invoke-direct {v0, p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler$7;-><init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setUpAnimationLisForExposeClose(Landroid/animation/Animator;Landroid/view/animation/Animation;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$3;

    invoke-direct {v0, p0, p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler$3;-><init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;Landroid/animation/Animator;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 127
    new-instance p2, Lcom/dp/sgp/compactcalendarview/AnimationHandler$4;

    invoke-direct {p2, p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler$4;-><init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setUpAnimationLisForExposeOpen(Landroid/animation/Animator;Landroid/view/animation/Animation;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler$1;-><init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;Landroid/animation/Animator;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    new-instance p2, Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;-><init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setUpAnimationLisForOpen(Landroid/view/animation/Animation;)V
    .locals 1

    .line 186
    new-instance v0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$6;

    invoke-direct {v0, p0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler$6;-><init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method closeCalendar()V
    .locals 3

    .line 45
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getCollapsingAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x28a

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setUpAnimationLisForClose(Landroid/view/animation/Animation;)V

    .line 53
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setAnimationStatus(I)V

    .line 54
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->requestLayout()V

    .line 56
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method closeCalendarWithAnimation()V
    .locals 4

    .line 73
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    .line 77
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getDayIndicatorRadius()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getIndicatorAnimator(FF)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, v1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getExposeCollapsingAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v3}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->requestLayout()V

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setUpAnimationLisForExposeClose(Landroid/animation/Animator;Landroid/view/animation/Animation;)V

    .line 82
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    return v0
.end method

.method openCalendar()V
    .locals 3

    .line 30
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    .line 34
    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getCollapsingAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x28a

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 36
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setAnimationStatus(I)V

    .line 38
    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setUpAnimationLisForOpen(Landroid/view/animation/Animation;)V

    .line 39
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->requestLayout()V

    .line 41
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method openCalendarWithAnimation()V
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->isAnimating:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarController:Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->getDayIndicatorRadius()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getIndicatorAnimator(FF)Landroid/animation/Animator;

    move-result-object v1

    .line 65
    invoke-direct {p0, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getExposeCollapsingAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    iget-object v2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v2}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->requestLayout()V

    .line 68
    invoke-direct {p0, v1, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setUpAnimationLisForExposeOpen(Landroid/animation/Animator;Landroid/view/animation/Animation;)V

    .line 69
    iget-object v1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarView:Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method setCompactCalendarAnimationListener(Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->compactCalendarAnimationListener:Lcom/dp/sgp/compactcalendarview/CompactCalendarView$CompactCalendarAnimationListener;

    return-void
.end method
