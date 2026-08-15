.class public Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OfflineSwamiCharitraAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public VideoPreviewPlayButton:Landroid/widget/ImageView;

.field public count:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public imageViewAndroid:Landroid/widget/ImageView;

.field lyt_Courses:Landroid/widget/LinearLayout;

.field public overflow:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field public releaseYear:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

.field public title:Landroid/widget/TextView;

.field public title_lag:Landroid/widget/TextView;

.field public txt_count:Landroid/widget/TextView;

.field public txt_date:Landroid/widget/TextView;

.field public txt_maal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;Landroid/view/View;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->this$0:Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

    .line 34
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01db

    .line 35
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0a01da

    .line 36
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->txt_date:Landroid/widget/TextView;

    const p1, 0x7f0a0152

    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const p1, 0x7f0a01d7

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00a4

    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    .line 40
    iget-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a00b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->imageViewAndroid:Landroid/widget/ImageView;

    return-void
.end method
