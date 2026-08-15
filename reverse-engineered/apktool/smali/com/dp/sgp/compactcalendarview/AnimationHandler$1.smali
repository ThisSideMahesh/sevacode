.class Lcom/dp/sgp/compactcalendarview/AnimationHandler$1;
.super Lcom/dp/sgp/compactcalendarview/AnimationListener;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setUpAnimationLisForExposeOpen(Landroid/animation/Animator;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

.field final synthetic val$indicatorAnim:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;Landroid/animation/Animator;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$1;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    iput-object p2, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$1;->val$indicatorAnim:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$1;->val$indicatorAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$1;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$000(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setAnimationStatus(I)V

    return-void
.end method
