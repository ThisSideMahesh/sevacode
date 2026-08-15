.class public Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VibhagHoriAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/VibhagHoriAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RankViewHolder"
.end annotation


# instance fields
.field imag_url:Landroid/widget/ImageView;

.field imageViewAndroid:Landroid/widget/ImageView;

.field lbl_txt_AmsCode:Landroid/widget/TextView;

.field lbl_txt_Rank:Landroid/widget/TextView;

.field textViewAndroid:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/VibhagHoriAdapter;

.field tvreginallevel:Landroid/widget/TextView;

.field txt_lbl_Assesment:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/VibhagHoriAdapter;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;->this$0:Lcom/dp/sgp/Adapters/VibhagHoriAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a020b

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;->textViewAndroid:Landroid/widget/TextView;

    const p1, 0x7f0a00c1

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;->imageViewAndroid:Landroid/widget/ImageView;

    return-void
.end method
