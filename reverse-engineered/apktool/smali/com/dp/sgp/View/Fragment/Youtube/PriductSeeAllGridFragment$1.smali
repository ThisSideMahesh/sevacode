.class Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$1;
.super Ljava/lang/Object;
.source "PriductSeeAllGridFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->banners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    .line 97
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pos"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "selected_image"

    .line 102
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;-><init>()V

    .line 104
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 107
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 108
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
