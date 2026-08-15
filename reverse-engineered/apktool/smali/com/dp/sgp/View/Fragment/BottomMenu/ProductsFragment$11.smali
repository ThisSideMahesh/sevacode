.class Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$11;
.super Ljava/lang/Object;
.source "ProductsFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$11;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 444
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$11;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$200(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    .line 446
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pos"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "selected_image"

    .line 451
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;-><init>()V

    .line 453
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 455
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$11;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 456
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 457
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 458
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 459
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
