.class public Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SwamiCharitraListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;
    }
.end annotation


# instance fields
.field private bookmarkType:Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/ListData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private recyclerItemClickListener:Lcom/dp/sgp/listener/OnRecyclerItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/ListData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->list:Ljava/util/ArrayList;

    .line 31
    iput-object p3, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->bookmarkType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;)Lcom/dp/sgp/listener/OnRecyclerItemClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->recyclerItemClickListener:Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 49
    check-cast p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;

    iget-object v0, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/ListData;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/ListData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->bookmarkType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "#302165"

    if-ge p2, v0, :cond_0

    .line 53
    iget-object v0, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080140

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvName:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->bookmarkType:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 58
    iget-object v0, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvName:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvStatus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->mTvName:Landroid/widget/TextView;

    const-string v1, "#7b7890"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    :goto_0
    iget-object p1, p1, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$1;-><init>(Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b5

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter$ListViewHolder;-><init>(Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnRecyclerItemClickListener(Lcom/dp/sgp/listener/OnRecyclerItemClickListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->recyclerItemClickListener:Lcom/dp/sgp/listener/OnRecyclerItemClickListener;

    return-void
.end method
