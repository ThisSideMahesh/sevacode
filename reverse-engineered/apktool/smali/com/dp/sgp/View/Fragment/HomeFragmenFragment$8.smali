.class Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$8;
.super Ljava/lang/Object;
.source "HomeFragmenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 577
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    const-string v1, "\u0905\u092c\u094d\u091c\u091a\u0902\u0921\u0940"

    .line 578
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;-><init>()V

    .line 581
    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->setArguments(Landroid/os/Bundle;)V

    .line 582
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 583
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0a008c

    .line 584
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 586
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
