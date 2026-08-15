.class public Lcom/dp/sgp/Adapters/CustomGridViewActivity;
.super Landroid/widget/BaseAdapter;
.source "CustomGridViewActivity.java"


# instance fields
.field private final gridViewImageId:[I

.field private final gridViewString:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->gridViewImageId:[I

    .line 25
    iput-object p2, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->gridViewString:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->gridViewString:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 46
    iget-object p3, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 47
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_1

    .line 51
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0d00a0

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0253

    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a025a

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01e4

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    rem-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v2, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->gridViewString:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object p3, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->gridViewString:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :goto_0
    iget-object p3, p0, Lcom/dp/sgp/Adapters/CustomGridViewActivity;->gridViewImageId:[I

    aget p1, p3, p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-object p2
.end method
