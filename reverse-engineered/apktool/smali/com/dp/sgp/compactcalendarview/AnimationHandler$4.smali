.class Lcom/dp/sgp/compactcalendarview/AnimationHandler$4;
.super Lcom/dp/sgp/compactcalendarview/AnimatorListener;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setUpAnimationLisForExposeClose(Landroid/animation/Animator;Landroid/view/animation/Animation;)V
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

    .line 127
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$4;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$4;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$000(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setAnimationStatus(I)V

    return-void
.end method
