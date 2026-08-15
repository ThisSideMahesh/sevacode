.class public Lcom/dp/sgp/Adapters/NewVibhagAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NewVibhagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/NewVibhagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field imag_url:Landroid/widget/ImageView;

.field imageViewAndroid:Landroid/widget/ImageView;

.field lbl_txt_AmsCode:Landroid/widget/TextView;

.field lbl_txt_Rank:Landroid/widget/TextView;

.field textViewAndroid:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/NewVibhagAdapter;

.field tvreginallevel:Landroid/widget/TextView;

.field txt_lbl_Assesment:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/NewVibhagAdapter;Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/dp/sgp/Adapters/NewVibhagAdapter$ViewHolder;->this$0:Lcom/dp/sgp/Adapters/NewVibhagAdapter;

    .line 95
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a020b

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/NewVibhagAdapter$ViewHolder;->textViewAndroid:Landroid/widget/TextView;

    const p1, 0x7f0a00c1

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/NewVibhagAdapter$ViewHolder;->imageViewAndroid:Landroid/widget/ImageView;

    return-void
.end method
