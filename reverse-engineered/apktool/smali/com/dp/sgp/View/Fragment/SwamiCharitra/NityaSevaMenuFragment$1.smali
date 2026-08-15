.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$1;
.super Ljava/lang/Object;
.source "NityaSevaMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    const-string v1, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930 \u0911\u0928\u0932\u093e\u0907\u0928"

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0a008c

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
