.class Lcom/dp/sgp/compactcalendarview/AnimationHandler$6;
.super Lcom/dp/sgp/compactcalendarview/AnimationListener;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/compactcalendarview/AnimationHandler;->setUpAnimationLisForOpen(Landroid/view/animation/Animation;)V
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

    .line 186
    iput-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$6;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-direct {p0}, Lcom/dp/sgp/compactcalendarview/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Lcom/dp/sgp/compactcalendarview/AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$6;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    invoke-static {p1}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$100(Lcom/dp/sgp/compactcalendarview/AnimationHandler;)V

    .line 191
    iget-object p1, p0, Lcom/dp/sgp/compactcalendarview/AnimationHandler$6;->this$0:Lcom/dp/sgp/compactcalendarview/AnimationHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dp/sgp/compactcalendarview/AnimationHandler;->access$202(Lcom/dp/sgp/compactcalendarview/AnimationHandler;Z)Z

    return-void
.end method
