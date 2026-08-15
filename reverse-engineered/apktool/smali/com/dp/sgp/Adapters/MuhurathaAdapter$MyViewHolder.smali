.class public Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MuhurathaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/MuhurathaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field mobile_edit_text:Landroid/support/design/widget/TextInputEditText;

.field mobile_text_input:Landroid/support/design/widget/TextInputLayout;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/MuhurathaAdapter;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/MuhurathaAdapter;Landroid/view/View;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;->this$0:Lcom/dp/sgp/Adapters/MuhurathaAdapter;

    .line 33
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a010a

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputEditText;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;->mobile_edit_text:Landroid/support/design/widget/TextInputEditText;

    const p1, 0x7f0a010b

    .line 35
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;->mobile_text_input:Landroid/support/design/widget/TextInputLayout;

    return-void
.end method
