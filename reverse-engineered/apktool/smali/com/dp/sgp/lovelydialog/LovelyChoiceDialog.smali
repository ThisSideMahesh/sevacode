.class public Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
.super Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;
.source "LovelyChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;,
        Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;,
        Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;,
        Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
        "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ITEM_CHECKED_STATES:Ljava/lang/String; = "key_item_checked_states"


# instance fields
.field private choicesList:Landroid/widget/ListView;

.field private confirmButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a00d9

    .line 41
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0a00d9

    .line 41
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->findView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$200(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;)Landroid/widget/ListView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    return-object p0
.end method

.method private isMultiChoiceList()Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    const v0, 0x7f0d0061

    return v0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->isMultiChoiceList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Z

    .line 130
    iget-object v1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 131
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 132
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "key_item_checked_states"

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_2
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 142
    invoke-super {p0, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->restoreState(Landroid/os/Bundle;)V

    .line 143
    invoke-direct {p0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->isMultiChoiceList()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_item_checked_states"

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    aget-boolean v2, p1, v0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setConfirmButtonColor(I)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->confirmButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, 0x7f11007a

    invoke-virtual {p0, v0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConfirmButtonText(I)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setConfirmButtonText(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method

.method public setConfirmButtonText(Ljava/lang/String;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->confirmButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, 0x7f11007a

    invoke-virtual {p0, v0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setItems(Landroid/widget/ArrayAdapter;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ArrayAdapter<",
            "TT;>;",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    new-instance v1, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemSelectedAdapter;-><init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object p2, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p0
.end method

.method public setItems(Ljava/util/List;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    .line 49
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00aa

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 52
    invoke-virtual {p0, v0, p2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setItems(Landroid/widget/ArrayAdapter;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method

.method public setItems([Ljava/lang/Object;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setItems(Ljava/util/List;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method

.method public setItemsMultiChoice(Landroid/widget/ArrayAdapter;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ArrayAdapter<",
            "TT;>;",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, p2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setItemsMultiChoice(Landroid/widget/ArrayAdapter;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method

.method public setItemsMultiChoice(Landroid/widget/ArrayAdapter;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ArrayAdapter<",
            "TT;>;[Z",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a9

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d3

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->confirmButton:Landroid/widget/TextView;

    .line 88
    new-instance v3, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;

    invoke-direct {v3, p0, p3, v2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;-><init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p3, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->choicesList:Landroid/widget/ListView;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const p3, 0x7f0a00d9

    .line 91
    invoke-virtual {p0, p3}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->findView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 93
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 96
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 97
    aget-boolean v0, p2, p1

    invoke-virtual {p3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setItemsMultiChoice(Ljava/util/List;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, v0, p2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setItemsMultiChoice(Ljava/util/List;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method

.method public setItemsMultiChoice(Ljava/util/List;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[Z",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    .line 74
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00ab

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 77
    invoke-virtual {p0, v0, p2, p3}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setItemsMultiChoice(Landroid/widget/ArrayAdapter;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method

.method public setItemsMultiChoice([Ljava/lang/Object;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, p2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setItemsMultiChoice([Ljava/lang/Object;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method

.method public setItemsMultiChoice([Ljava/lang/Object;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[Z",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;)",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->setItemsMultiChoice(Ljava/util/List;[ZLcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    move-result-object p1

    return-object p1
.end method
