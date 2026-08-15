.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$2;
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

    .line 56
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "EXTRA_PARAMS_RESULT_KEY"

    const-string v1, "LIST_SWAMI_CHARITRA_700"

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0a008c

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
