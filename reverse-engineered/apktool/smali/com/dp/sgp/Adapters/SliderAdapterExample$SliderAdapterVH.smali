.class Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;
.super Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;
.source "SliderAdapterExample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/SliderAdapterExample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SliderAdapterVH"
.end annotation


# instance fields
.field imageViewBackground:Landroid/widget/ImageView;

.field itemView:Landroid/view/View;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/SliderAdapterExample;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/SliderAdapterExample;Landroid/view/View;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;->this$0:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    .line 166
    invoke-direct {p0, p2}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00cb

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;->imageViewBackground:Landroid/widget/ImageView;

    .line 170
    iput-object p2, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;->itemView:Landroid/view/View;

    return-void
.end method
