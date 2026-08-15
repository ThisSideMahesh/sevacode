.class public Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TmsEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/TmsEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewsViewHolder"
.end annotation


# instance fields
.field container:Landroid/widget/RelativeLayout;

.field imag_url:Landroid/widget/ImageView;

.field img_user:Landroid/widget/ImageView;

.field publishedAt:Landroid/widget/TextView;

.field releaseYear:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/TmsEventAdapter;

.field training_end_date:Landroid/widget/TextView;

.field training_start_date:Landroid/widget/TextView;

.field tv_content:Landroid/widget/TextView;

.field tv_date:Landroid/widget/TextView;

.field tv_day:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/TmsEventAdapter;Landroid/view/View;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->this$0:Lcom/dp/sgp/Adapters/TmsEventAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0052

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->container:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0232

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f0a0223

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->tv_day:Landroid/widget/TextView;

    const p1, 0x7f0a01f2

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->training_start_date:Landroid/widget/TextView;

    const p1, 0x7f0a01f1

    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->training_end_date:Landroid/widget/TextView;

    const p1, 0x7f0a0161

    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->releaseYear:Landroid/widget/TextView;

    const p1, 0x7f0a0225

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->tv_content:Landroid/widget/TextView;

    const p1, 0x7f0a0220

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->tv_date:Landroid/widget/TextView;

    const p1, 0x7f0a0159

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->publishedAt:Landroid/widget/TextView;

    const p1, 0x7f0a00b7

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->img_user:Landroid/widget/ImageView;

    const p1, 0x7f0a00a3

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->imag_url:Landroid/widget/ImageView;

    return-void
.end method
