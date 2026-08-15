.class public Lcom/dp/sgp/Adapters/TestooAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TestooAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/TestooAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field mobile_edit_text:Landroid/widget/TextView;

.field mobile_text_input:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/TestooAdapter;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/TestooAdapter;Landroid/view/View;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/dp/sgp/Adapters/TestooAdapter$MyViewHolder;->this$0:Lcom/dp/sgp/Adapters/TestooAdapter;

    .line 32
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0232

    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TestooAdapter$MyViewHolder;->mobile_edit_text:Landroid/widget/TextView;

    const p1, 0x7f0a0225

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/TestooAdapter$MyViewHolder;->mobile_text_input:Landroid/widget/TextView;

    return-void
.end method
