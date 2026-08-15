.class Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation$1;
.super Ljava/lang/Object;
.source "SlideAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->createAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;


# direct methods
.method constructor <init>(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation$1;->this$0:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation$1;->this$0:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;

    invoke-static {v0, p1}, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;->access$000(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/SlideAnimation;Landroid/animation/ValueAnimator;)V

    return-void
.end method
