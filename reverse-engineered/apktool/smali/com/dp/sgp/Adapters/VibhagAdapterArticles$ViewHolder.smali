.class public Lcom/dp/sgp/Adapters/VibhagAdapterArticles$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VibhagAdapterArticles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/VibhagAdapterArticles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public btReadMore:Landroid/widget/Button;

.field public imgArticle:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/VibhagAdapterArticles;

.field public tvDesc:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/VibhagAdapterArticles;Landroid/view/View;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagAdapterArticles$ViewHolder;->this$0:Lcom/dp/sgp/Adapters/VibhagAdapterArticles;

    .line 90
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00b2

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagAdapterArticles$ViewHolder;->imgArticle:Landroid/widget/ImageView;

    const p1, 0x7f0a0219

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagAdapterArticles$ViewHolder;->tvTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0201

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagAdapterArticles$ViewHolder;->tvDesc:Landroid/widget/TextView;

    const p1, 0x7f0a0034

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagAdapterArticles$ViewHolder;->btReadMore:Landroid/widget/Button;

    return-void
.end method
