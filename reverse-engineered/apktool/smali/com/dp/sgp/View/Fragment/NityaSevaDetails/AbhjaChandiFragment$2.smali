.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$2;
.super Ljava/lang/Object;
.source "AbhjaChandiFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;-><init>()V

    .line 125
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008c

    .line 127
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
