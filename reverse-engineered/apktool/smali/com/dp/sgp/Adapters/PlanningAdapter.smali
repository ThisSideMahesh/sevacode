.class public Lcom/dp/sgp/Adapters/PlanningAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PlanningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field Font:Landroid/graphics/Typeface;

.field FontBold:Landroid/graphics/Typeface;

.field FontExtraBold:Landroid/graphics/Typeface;

.field ItemQty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field LstrPicture:Ljava/lang/String;

.field private android:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;"
        }
    .end annotation
.end field

.field checkList:Lcom/dp/sgp/Model/SubmitAbhjaBody;

.field private context:Landroid/content/Context;

.field lStrEdtQty:Ljava/lang/String;

.field lStrEmployeeImage:Ljava/lang/String;

.field lStrRemark:Ljava/lang/String;

.field lStrSSS:Ljava/lang/String;

.field lStrSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->LstrPicture:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->lStrRemark:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->lStrSignature:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->lStrEmployeeImage:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->lStrSSS:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->lStrEdtQty:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->android:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/Adapters/PlanningAdapter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->android:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->android:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemQty()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->ItemQty:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getallrecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->android:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/PlanningAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->android:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/SubmitAbhjaBody;

    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->checkList:Lcom/dp/sgp/Model/SubmitAbhjaBody;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->ItemQty:Ljava/util/ArrayList;

    .line 57
    invoke-static {p1}, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;->access$000(Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/Adapters/PlanningAdapter;->checkList:Lcom/dp/sgp/Model/SubmitAbhjaBody;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p1, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;->Edt_Quantity:Landroid/widget/EditText;

    new-instance v0, Lcom/dp/sgp/Adapters/PlanningAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/dp/sgp/Adapters/PlanningAdapter$1;-><init>(Lcom/dp/sgp/Adapters/PlanningAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/PlanningAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/PlanningAdapter$ViewHolder;-><init>(Lcom/dp/sgp/Adapters/PlanningAdapter;Landroid/view/View;)V

    return-object p2
.end method
