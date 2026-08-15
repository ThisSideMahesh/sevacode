.class public Lcom/dp/sgp/Adapters/CountryyAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CountryyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/CountryyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public VideoPreviewPlayButton:Landroid/widget/ImageView;

.field public count:Landroid/widget/TextView;

.field public overflow:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/CountryyAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public title_lag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/CountryyAdapter;Landroid/view/View;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/Adapters/CountryyAdapter$MyViewHolder;->this$0:Lcom/dp/sgp/Adapters/CountryyAdapter;

    .line 33
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01db

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/CountryyAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0a01e4

    .line 36
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/CountryyAdapter$MyViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-void
.end method
