.class Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$6;
.super Ljava/lang/Object;
.source "ProductsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 304
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$6;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 307
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$6;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$400(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;

    move-result-object v0

    const-string v1, "products"

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->saveProductBanner(Ljava/util/List;Ljava/lang/String;)V

    .line 309
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    const-string v1, "\u0915\u0943\u0937\u0940 \u0909\u0924\u094d\u092a\u093e\u0926\u0928\u0947"

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;-><init>()V

    .line 314
    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->setArguments(Landroid/os/Bundle;)V

    .line 316
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$6;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0a008c

    .line 318
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
