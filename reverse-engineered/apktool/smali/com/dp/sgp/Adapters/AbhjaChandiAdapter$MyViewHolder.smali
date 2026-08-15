.class public Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AbhjaChandiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public VideoPreviewPlayButton:Landroid/widget/ImageView;

.field public count:Landroid/widget/TextView;

.field lyt_Courses:Landroid/widget/LinearLayout;

.field public overflow:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field public releaseYear:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public title_lag:Landroid/widget/TextView;

.field public txt_count:Landroid/widget/TextView;

.field public txt_date:Landroid/widget/TextView;

.field public txt_maal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;Landroid/view/View;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->this$0:Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;

    .line 36
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01db

    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0a024f

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_date:Landroid/widget/TextView;

    const p1, 0x7f0a0161

    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->releaseYear:Landroid/widget/TextView;

    const p1, 0x7f0a024e

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const p1, 0x7f0a0255

    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->txt_maal:Landroid/widget/TextView;

    const p1, 0x7f0a00ef

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter$MyViewHolder;->lyt_Courses:Landroid/widget/LinearLayout;

    return-void
.end method
