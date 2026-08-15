.class Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;
.super Ljava/lang/Object;
.source "NotificationFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->access$000(Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    .line 104
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "Details not availabel"

    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 128
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media_url"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;-><init>()V

    .line 132
    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 134
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a008c

    .line 136
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 137
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
