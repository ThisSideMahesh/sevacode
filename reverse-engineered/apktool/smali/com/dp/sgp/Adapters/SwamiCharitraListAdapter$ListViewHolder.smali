.class public Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SwamiCharitraListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListViewHolder"
.end annotation


# instance fields
.field mTvName:Landroid/widget/TextView;

.field mTvStatus:Landroid/widget/ImageView;

.field rlRoot:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->this$0:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    .line 95
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01db

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvName:Landroid/widget/TextView;

    const p1, 0x7f0a00a4

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvStatus:Landroid/widget/ImageView;

    return-void
.end method
