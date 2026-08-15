.class public Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;
.super Ljava/lang/Object;
.source "LovelySaveStateHandler.java"


# static fields
.field private static final KEY_DIALOG_ID:Ljava/lang/String; = "id"


# instance fields
.field private handledDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;->handledDialogs:Landroid/util/SparseArray;

    return-void
.end method

.method public static getSavedDialogId(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "id"

    const/4 v1, -0x1

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static wasDialogOnScreen(Landroid/os/Bundle;)Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method handleDialogStateSave(ILcom/dp/sgp/lovelydialog/AbsLovelyDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dp/sgp/lovelydialog/AbsLovelyDialog<",
            "*>;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;->handledDialogs:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;->handledDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 23
    iget-object v1, p0, Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;->handledDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 25
    iget-object v1, p0, Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;->handledDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;

    .line 29
    invoke-virtual {v1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v1, p1}, Lcom/dp/sgp/lovelydialog/AbsLovelyDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 31
    iget-object v1, p0, Lcom/dp/sgp/lovelydialog/LovelySaveStateHandler;->handledDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
