.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;
.super Ljava/lang/Object;
.source "OfflineSwamiCharitraFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 124
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    .line 126
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "You are not eligible for to view this \u0905\u0927\u092f\u093e\u092f please complete privious \u0905\u0927\u092f\u093e\u092f "

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v1

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "position"

    .line 146
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
