.class Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;
.super Ljava/lang/Object;
.source "LovelyChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemsSelectedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private adaptee:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;


# direct methods
.method private constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;->this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;->adaptee:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;-><init>(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 196
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;->adaptee:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;

    if-eqz p1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;->this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    invoke-static {p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->access$200(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    iget-object v2, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;->this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    invoke-static {v2}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->access$200(Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    .line 201
    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 202
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;->adaptee:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;

    invoke-interface {p1, v1, v0}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$OnItemsSelectedListener;->onItemsSelected(Ljava/util/List;Ljava/util/List;)V

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog$ItemsSelectedAdapter;->this$0:Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;

    invoke-virtual {p1}, Lcom/dp/sgp/lovelydialog/LovelyChoiceDialog;->dismiss()V

    return-void
.end method
