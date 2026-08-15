.class public abstract Lcom/dp/sgp/autoimageslider/SliderViewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SliderViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;,
        Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private dataSetListener:Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;

.field private destroyedItems:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->destroyedItems:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method dataSetChangedListener(Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->dataSetListener:Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;

    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p3, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;

    iget-object p2, p3, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->destroyedItems:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->destroyedItems:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;

    move-result-object v0

    .line 36
    :cond_0
    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0, v0, p2}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->onBindViewHolder(Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;I)V

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 50
    check-cast p2, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;

    iget-object p2, p2, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;->dataSetListener:Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter$DataSetListener;->dataSetChanged()V

    :cond_0
    return-void
.end method

.method public abstract onBindViewHolder(Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method
