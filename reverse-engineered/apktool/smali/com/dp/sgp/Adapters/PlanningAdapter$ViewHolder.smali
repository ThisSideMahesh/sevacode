.class public Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PlanningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/PlanningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field Edt_Quantity:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/PlanningAdapter;

.field private txt_PartNo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/PlanningAdapter;Landroid/view/View;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;->this$0:Lcom/dp/sgp/Adapters/PlanningAdapter;

    .line 122
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0241

    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;->txt_PartNo:Landroid/widget/TextView;

    const p1, 0x7f0a0002

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;->Edt_Quantity:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;->txt_PartNo:Landroid/widget/TextView;

    return-object p0
.end method
