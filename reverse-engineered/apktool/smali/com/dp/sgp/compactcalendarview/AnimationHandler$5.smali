.class Lcom/dp/sgp/compactcalendarview/AnimationHandler$5;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/compactcalendarview/AnimationHandler;->getIndicatorAnimator(FF)Landroid/animation/Animator;
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

    .line 157
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$5;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$5;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$000(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarController;->setGrowFactorIndicator(F)V

    .line 161
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$5;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$400(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    return-void
.end method
