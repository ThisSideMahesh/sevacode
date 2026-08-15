.class Lcom/dp/sgp/autoimageslider/SliderView$1;
.super Ljava/lang/Object;
.source "SliderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/autoimageslider/SliderView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/autoimageslider/SliderView;


# direct methods
.method constructor <init>(Lcom/dp/sgp/autoimageslider/SliderView;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderView$1;->this$0:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderView$1;->this$0:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/SliderView;->startAutoCycle()V

    return-void
.end method
