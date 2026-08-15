.class Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;
.super Lcom/dp/sgp/compactcalendarview/AnimatorListener;
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


# direct methods
.method constructor <init>(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$000(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setAnimationStatus(I)V

    .line 106
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$100(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V

    .line 107
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$202(Lcom/dp/sgp/compactcalendarview/AnimationHandler;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$2;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$000(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setAnimationStatus(I)V

    return-void
.end method
