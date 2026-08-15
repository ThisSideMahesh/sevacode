.class public Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VibaghhDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public VideoPreviewPlayButton:Landroid/widget/ImageView;

.field public celebrateCountTextView:Landroid/widget/TextView;

.field public commentsCountTextView:Landroid/widget/TextView;

.field public count:Landroid/widget/TextView;

.field dateContainer:Landroid/widget/LinearLayout;

.field public dateTextView:Landroid/widget/TextView;

.field public duartionn:Landroid/widget/TextView;

.field public duration:Landroid/widget/TextView;

.field public likeCounterTextView:Landroid/widget/TextView;

.field lyt_emoji:Landroid/widget/LinearLayout;

.field public overflow:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public timing:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public watcherCounterTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;Landroid/view/View;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter$MyViewHolder;->this$0:Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;

    .line 41
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01db

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0a01e4

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter$MyViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-void
.end method
