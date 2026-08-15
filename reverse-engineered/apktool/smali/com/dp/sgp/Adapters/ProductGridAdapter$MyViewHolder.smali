.class public Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProductGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/ProductGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public VideoPreviewPlayButton:Landroid/widget/ImageView;

.field public count:Landroid/widget/TextView;

.field dateContainer:Landroid/widget/LinearLayout;

.field public duartionn:Landroid/widget/TextView;

.field public overflow:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/ProductGridAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/ProductGridAdapter;Landroid/view/View;)V
    .locals 1

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;->this$0:Lcom/dp/sgp/Adapters/ProductGridAdapter;

    .line 39
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    iget-object p1, p0, Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;->VideoPreviewPlayButton:Landroid/widget/ImageView;

    const p1, 0x7f0a020b

    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0a00c1

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/ProductGridAdapter$MyViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-void
.end method
