.class public Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OfflineSwamiCharitraAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private swamiCharitraModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;",
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
            "Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->swamiCharitraModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->swamiCharitraModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;I)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->swamiCharitraModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    add-int/lit8 p2, p2, 0x1

    .line 65
    iget-object v1, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p2, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->txt_date:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getCompleted_on()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "#302165"

    const-string v2, "#ffffff"

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p2, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object p1, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080140

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 92
    iget-object p2, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p2, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object p1, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08015a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p2, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->txt_count:Landroid/widget/TextView;

    const-string v0, "#7b7890"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object p2, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object p1, p1, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080151

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b5

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter$MyViewHolder;-><init>(Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;Landroid/view/View;)V

    return-object p2
.end method
