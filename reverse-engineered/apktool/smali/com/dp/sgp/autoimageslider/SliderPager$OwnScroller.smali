.class Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;
.super Landroid/widget/Scroller;
.source "SliderPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/autoimageslider/SliderPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OwnScroller"
.end annotation


# instance fields
.field private durationScrollMillis:I

.field final synthetic this$0:Lcom/dp/sgp/autoimageslider/SliderPager;


# direct methods
.method constructor <init>(Lcom/dp/sgp/autoimageslider/SliderPager;Landroid/content/Context;I)V
    .locals 0

    .line 3122
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    .line 3123
    invoke-static {}, Lcom/dp/sgp/autoimageslider/SliderPager;->access$000()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 3124
    iput p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;->durationScrollMillis:I

    return-void
.end method

.method constructor <init>(Lcom/dp/sgp/autoimageslider/SliderPager;Landroid/content/Context;ILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 3127
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    .line 3128
    invoke-direct {p0, p2, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 3129
    iput p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;->durationScrollMillis:I

    return-void
.end method


# virtual methods
.method public startScroll(IIIII)V
    .locals 6

    .line 3134
    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;->durationScrollMillis:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
