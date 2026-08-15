.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContentFragment.java"


# instance fields
.field private listData:Lcom/dp/sgp/Model/ListData;

.field private listType:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private tvContent:Landroid/widget/TextView;

.field private tvContentTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 84
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;
    .locals 1

    .line 34
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_RESULT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/ListData;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listData:Lcom/dp/sgp/Model/ListData;

    .line 46
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_LIST_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 55
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listType:Ljava/lang/String;

    const-string v0, "LIST_SWAMI_CHARITRA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "LIST_SWAMI_CHARITRA_700"

    const/4 v2, 0x0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listType:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7f0d0079

    .line 58
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->rootView:Landroid/view/View;

    goto :goto_1

    :cond_1
    :goto_0
    const p3, 0x7f0d0078

    .line 56
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->rootView:Landroid/view/View;

    .line 61
    :goto_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a01fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->tvContentTitle:Landroid/widget/TextView;

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a01fa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->tvContent:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->tvContentTitle:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listData:Lcom/dp/sgp/Model/ListData;

    invoke-virtual {p3}, Lcom/dp/sgp/Model/ListData;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listType:Ljava/lang/String;

    const-string p2, "LIST_AARTI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->tvContent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "txt_Aarti_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listData:Lcom/dp/sgp/Model/ListData;

    invoke-virtual {p3}, Lcom/dp/sgp/Model/ListData;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listType:Ljava/lang/String;

    const-string p2, "LIST_STOTRA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->tvContent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "txt_SM_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listData:Lcom/dp/sgp/Model/ListData;

    invoke-virtual {p3}, Lcom/dp/sgp/Model/ListData;->getId()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->tvContent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lbl_AAdhyay"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listData:Lcom/dp/sgp/Model/ListData;

    invoke-virtual {p3}, Lcom/dp/sgp/Model/ListData;->getId()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 73
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->tvContent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lbl_AAdhyay_700_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->listData:Lcom/dp/sgp/Model/ListData;

    invoke-virtual {p3}, Lcom/dp/sgp/Model/ListData;->getId()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
