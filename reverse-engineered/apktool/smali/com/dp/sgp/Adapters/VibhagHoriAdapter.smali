.class public Lcom/dp/sgp/Adapters/VibhagHoriAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VibhagHoriAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final gridViewImageId:[I

.field private final gridViewString:[Ljava/lang/String;

.field isDark:Z

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->isDark:Z

    .line 27
    iput-object p1, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->gridViewImageId:[I

    .line 29
    iput-object p2, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->gridViewString:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->gridViewString:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;I)V
    .locals 2

    .line 48
    iget-object v0, p1, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;->textViewAndroid:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->gridViewString:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p1, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;->imageViewAndroid:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->gridViewImageId:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;
    .locals 2

    .line 39
    iget-object p2, p0, Lcom/dp/sgp/Adapters/VibhagHoriAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0069

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/VibhagHoriAdapter$RankViewHolder;-><init>(Lcom/dp/sgp/Adapters/VibhagHoriAdapter;Landroid/view/View;)V

    return-object p2
.end method
