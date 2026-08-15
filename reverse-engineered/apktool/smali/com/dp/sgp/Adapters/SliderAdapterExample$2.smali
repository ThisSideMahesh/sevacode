.class Lcom/dp/sgp/Adapters/SliderAdapterExample$2;
.super Ljava/lang/Object;
.source "SliderAdapterExample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Adapters/SliderAdapterExample;->onBindViewHolder(Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/Adapters/SliderAdapterExample;

.field final synthetic val$sliderItem:Lcom/dp/sgp/Model/HomeResponse/Banner;


# direct methods
.method constructor <init>(Lcom/dp/sgp/Adapters/SliderAdapterExample;Lcom/dp/sgp/Model/HomeResponse/Banner;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;->this$0:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    iput-object p2, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;->val$sliderItem:Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;->val$sliderItem:Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;->val$sliderItem:Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;->this$0:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    iget-object p1, p1, Lcom/dp/sgp/Adapters/SliderAdapterExample;->onItemClickedListner:Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;

    iget-object v0, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;->val$sliderItem:Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-interface {p1, v0}, Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;->DetailedViewClicked(Lcom/dp/sgp/Model/HomeResponse/Banner;)V

    :cond_1
    :goto_0
    return-void
.end method
