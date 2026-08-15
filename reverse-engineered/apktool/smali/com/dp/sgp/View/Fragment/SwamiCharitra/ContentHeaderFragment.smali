.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContentHeaderFragment.java"


# instance fields
.field private listData:Lcom/dp/sgp/Model/ListData;

.field private rootView:Landroid/view/View;

.field private tvContent:Landroid/widget/TextView;

.field private tvContentTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;
    .locals 1

    .line 25
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;-><init>()V

    .line 26
    invoke-virtual {v0, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_RESULT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/ListData;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->listData:Lcom/dp/sgp/Model/ListData;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d007a

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a01fb

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->tvContentTitle:Landroid/widget/TextView;

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->listData:Lcom/dp/sgp/Model/ListData;

    invoke-virtual {p3}, Lcom/dp/sgp/Model/ListData;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentHeaderFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
