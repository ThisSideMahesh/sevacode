.class public Lcom/dp/sgp/Adapters/SevaAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SevaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/AbjachnadiData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/AbjachnadiData;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SevaAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/dp/sgp/Adapters/SevaAdapter;->albumList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SevaAdapter;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/SevaAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SevaAdapter;->albumList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/AbjachnadiData;

    .line 57
    iget-object v0, p1, Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;->title_lag:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p1, Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p1, Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/SevaAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00d2

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/SevaAdapter$MyViewHolder;-><init>(Lcom/dp/sgp/Adapters/SevaAdapter;Landroid/view/View;)V

    return-object p2
.end method
