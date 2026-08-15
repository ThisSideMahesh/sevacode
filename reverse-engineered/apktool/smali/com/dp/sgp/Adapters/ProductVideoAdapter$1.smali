.class Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;
.super Ljava/lang/Object;
.source "ProductVideoAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Adapters/ProductVideoAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

.field final synthetic val$viewHolder:Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/dp/sgp/Adapters/ProductVideoAdapter;Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;->this$0:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iput-object p2, p0, Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;->val$viewHolder:Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;->val$viewHolder:Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;

    iget-object p1, p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;->val$viewHolder:Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;

    iget-object p1, p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;->VideoPreviewPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;->val$viewHolder:Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;

    iget-object p1, p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;->val$viewHolder:Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;

    iget-object p1, p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter$ViewHolder;->VideoPreviewPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 71
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/dp/sgp/Adapters/ProductVideoAdapter$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
