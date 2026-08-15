.class public Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AbjaaSevaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field Edt_Quantity:Landroid/widget/EditText;

.field private img_signature:Landroid/widget/ImageView;

.field private ivVoucherImage:Landroid/widget/ImageView;

.field private lbl_txt_PartNo:Landroid/widget/TextView;

.field private lbl_txt_Quantity:Landroid/widget/TextView;

.field private lbl_txt_part_desc:Landroid/widget/TextView;

.field private minus:Landroid/widget/ImageView;

.field relativeLayout1:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

.field private txt_ItemCode:Landroid/widget/TextView;

.field private txt_PartNo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;Landroid/view/View;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$ViewHolder;->this$0:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

    .line 124
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0241

    .line 127
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$ViewHolder;->txt_PartNo:Landroid/widget/TextView;

    const p1, 0x7f0a0002

    .line 129
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$ViewHolder;->Edt_Quantity:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/dp/sgp/Adapters/AbjaaSevaAdapter$ViewHolder;->txt_PartNo:Landroid/widget/TextView;

    return-object p0
.end method
