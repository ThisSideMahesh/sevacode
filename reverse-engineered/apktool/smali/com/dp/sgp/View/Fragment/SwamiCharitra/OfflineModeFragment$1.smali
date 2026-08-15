.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$1;
.super Ljava/lang/Object;
.source "OfflineModeFragment.java"

# interfaces
.implements Lcom/dp/sgp/listener/OnRecyclerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecyclerItemClick(II)V
    .locals 3

    .line 110
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "EXTRA_PARAMS_RESULT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "EXTRA_PARAMS_POSITION"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_PARAMS_LIST_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 118
    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;

    move-result-object p2

    const v0, 0x7f0a008c

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 119
    const-class p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 120
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
