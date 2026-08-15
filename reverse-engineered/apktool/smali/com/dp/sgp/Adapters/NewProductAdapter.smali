.class public Lcom/dp/sgp/Adapters/NewProductAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NewProductAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Youtube;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Youtube;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/Adapters/NewProductAdapter;->list:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lcom/dp/sgp/Adapters/NewProductAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dp/sgp/Adapters/NewProductAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/NewProductAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;I)V
    .locals 3

    .line 57
    iget-object v0, p1, Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;->textViewAndroid:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/NewProductAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/HomeResponse/Youtube;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/HomeResponse/Youtube;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 66
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 67
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 68
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 69
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    .line 71
    iget-object v1, p0, Lcom/dp/sgp/Adapters/NewProductAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/Adapters/NewProductAdapter;->list:Ljava/util/List;

    .line 72
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Youtube;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Youtube;->getImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 73
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Lcom/dp/sgp/Adapters/NewProductAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/dp/sgp/Adapters/NewProductAdapter$1;-><init>(Lcom/dp/sgp/Adapters/NewProductAdapter;Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;)V

    .line 74
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 89
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;->title_lag:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/NewProductAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;
    .locals 2

    .line 45
    iget-object p2, p0, Lcom/dp/sgp/Adapters/NewProductAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/NewProductAdapter$ViewHolder;-><init>(Lcom/dp/sgp/Adapters/NewProductAdapter;Landroid/view/View;)V

    return-object p2
.end method
