.class public Lcom/dp/sgp/Adapters/UpakramGridViewActivity;
.super Landroid/widget/BaseAdapter;
.source "UpakramGridViewActivity.java"


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
    iput-object p1, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->gridViewImageId:[I

    .line 25
    iput-object p2, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->gridViewString:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->gridViewString:[Ljava/lang/String;

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
    .locals 2

    .line 46
    iget-object p3, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 47
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 51
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0d00e2

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a01db

    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a01e4

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->gridViewString:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p3, p0, Lcom/dp/sgp/Adapters/UpakramGridViewActivity;->gridViewImageId:[I

    aget p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-object p2
.end method
