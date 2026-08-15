.class Lcom/dp/sgp/autoimageslider/SliderPager$3;
.super Ljava/lang/Object;
.source "SliderPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/autoimageslider/SliderPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/autoimageslider/SliderPager;


# direct methods
.method constructor <init>(Lcom/dp/sgp/autoimageslider/SliderPager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager$3;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager$3;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollState(I)V

    .line 223
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager$3;->this$0:Lcom/dp/sgp/autoimageslider/SliderPager;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    return-void
.end method
