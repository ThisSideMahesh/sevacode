.class public Lcom/dp/sgp/Adapters/MuhurathaAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MuhurathaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private SubFolderDatasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/MuhurathModel;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/MuhurathModel;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Adapters/MuhurathaAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/dp/sgp/Adapters/MuhurathaAdapter;->SubFolderDatasList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/dp/sgp/Adapters/MuhurathaAdapter;->SubFolderDatasList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/MuhurathaAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/dp/sgp/Adapters/MuhurathaAdapter;->SubFolderDatasList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/MuhurathModel;

    .line 59
    iget-object v0, p1, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;->mobile_edit_text:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MuhurathModel;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p1, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;->mobile_text_input:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MuhurathModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/MuhurathaAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00af

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/MuhurathaAdapter$MyViewHolder;-><init>(Lcom/dp/sgp/Adapters/MuhurathaAdapter;Landroid/view/View;)V

    return-object p2
.end method
