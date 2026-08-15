.class public Lcom/dp/sgp/Adapters/DataAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DataAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/DataAdapter$OnItemClickedListner;,
        Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/NewCountry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFilteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/NewCountry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/NewCountry;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mArrayList:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mFilteredList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/Adapters/DataAdapter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mFilteredList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/Adapters/DataAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mFilteredList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/Adapters/DataAdapter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mArrayList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 70
    new-instance v0, Lcom/dp/sgp/Adapters/DataAdapter$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/Adapters/DataAdapter$1;-><init>(Lcom/dp/sgp/Adapters/DataAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getitemmsQty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/NewCountry;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mFilteredList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/DataAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;I)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/countrypicker/NewCountry;

    .line 53
    iget-object v0, p1, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/dp/sgp/countrypicker/NewCountry;->getCcName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p2}, Lcom/dp/sgp/countrypicker/NewCountry;->getDialingCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/dp/sgp/countrypicker/NewCountry;->getIsoCode()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_flag"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object p1, p1, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dp/sgp/Adapters/DataAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/dp/sgp/countrypicker/Utils;->getMipmapResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/DataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/DataAdapter$ViewHolder;-><init>(Lcom/dp/sgp/Adapters/DataAdapter;Landroid/view/View;)V

    return-object p2
.end method
