.class public Lcom/dp/sgp/Adapters/MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private acitivityContext:Landroid/content/Context;

.field private layoutId:I

.field private nameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dp/sgp/Adapters/MyAdapter;->acitivityContext:Landroid/content/Context;

    .line 28
    iput p2, p0, Lcom/dp/sgp/Adapters/MyAdapter;->layoutId:I

    .line 29
    iput-object p3, p0, Lcom/dp/sgp/Adapters/MyAdapter;->nameList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/dp/sgp/Adapters/MyAdapter;->nameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dp/sgp/Adapters/MyAdapter;->nameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 55
    iget-object p2, p0, Lcom/dp/sgp/Adapters/MyAdapter;->acitivityContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 56
    iget p3, p0, Lcom/dp/sgp/Adapters/MyAdapter;->layoutId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance p3, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;

    invoke-direct {p3, v0}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;-><init>(Lcom/dp/sgp/Adapters/MyAdapter$1;)V

    const v0, 0x7f0a01db

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$102(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a01e4

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->title_lag:Landroid/widget/ImageView;

    const v0, 0x7f0a0253

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$202(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a025a

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$302(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/Adapters/MyAdapter;->nameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$100(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 79
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$200(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$300(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$200(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$300(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v0, "\u0938\u0902\u092a\u0941\u0930\u094d\u0923 \u092a\u0939\u093e"

    if-nez p1, :cond_2

    .line 89
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$200(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u0938\u0930\u094d\u0935\u093e\u0924 \u0932\u094b\u0915\u092a\u094d\u0930\u093f\u092f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$300(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 94
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$200(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u092a\u0942\u091c\u093e \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$300(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 99
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$200(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926\u093f\u0915 \u0909\u0924\u094d\u092a\u093e\u0926\u0928\u0947"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p3}, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->access$300(Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/dp/sgp/Adapters/MyAdapter;->acitivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/Adapters/MyAdapter;->nameList:Ljava/util/List;

    .line 130
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p3, p3, Lcom/dp/sgp/Adapters/MyAdapter$ViewHolder;->title_lag:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p2
.end method
