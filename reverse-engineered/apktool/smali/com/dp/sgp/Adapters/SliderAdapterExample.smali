.class public Lcom/dp/sgp/Adapters/SliderAdapterExample;
.super Lcom/dp/sgp/autoimageslider/SliderViewAdapter;
.source "SliderAdapterExample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;,
        Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/autoimageslider/SliderViewAdapter<",
        "Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mSliderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field onItemClickedListner:Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderViewAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->mSliderItems:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->onItemClickedListner:Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/dp/sgp/Model/HomeResponse/Banner;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->mSliderItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteItem(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->mSliderItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->mSliderItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;I)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->mSliderItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Banner;

    .line 76
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 77
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 78
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 79
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 82
    iget-object v1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 83
    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/Adapters/SliderAdapterExample$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/Adapters/SliderAdapterExample$1;-><init>(Lcom/dp/sgp/Adapters/SliderAdapterExample;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;->imageViewBackground:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 103
    iget-object p1, p1, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;->itemView:Landroid/view/View;

    new-instance v0, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;

    invoke-direct {v0, p0, p2}, Lcom/dp/sgp/Adapters/SliderAdapterExample$2;-><init>(Lcom/dp/sgp/Adapters/SliderAdapterExample;Lcom/dp/sgp/Model/HomeResponse/Banner;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->onBindViewHolder(Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;

    invoke-direct {v0, p0, p1}, Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;-><init>(Lcom/dp/sgp/Adapters/SliderAdapterExample;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/dp/sgp/autoimageslider/SliderViewAdapter$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/dp/sgp/Adapters/SliderAdapterExample$SliderAdapterVH;

    move-result-object p1

    return-object p1
.end method

.method public renewItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SliderAdapterExample;->mSliderItems:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->notifyDataSetChanged()V

    return-void
.end method
