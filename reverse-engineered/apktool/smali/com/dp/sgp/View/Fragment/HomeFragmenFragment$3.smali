.class Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$3;
.super Ljava/lang/Object;
.source "HomeFragmenFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


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

    .line 502
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 2

    .line 506
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Youtube;

    .line 509
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Youtube;->getLinks()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media_url"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
