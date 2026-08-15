.class public Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/DataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public VideoPreviewPlayButton:Landroid/widget/ImageView;

.field public count:Landroid/widget/TextView;

.field public overflow:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/DataAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public title_lag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/DataAdapter;Landroid/view/View;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;->this$0:Lcom/dp/sgp/Adapters/DataAdapter;

    .line 116
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0112

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0a009d

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-void
.end method
