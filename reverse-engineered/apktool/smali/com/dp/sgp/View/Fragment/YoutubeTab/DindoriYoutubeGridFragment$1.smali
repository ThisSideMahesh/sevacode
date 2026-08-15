.class Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$1;
.super Ljava/lang/Object;
.source "DindoriYoutubeGridFragment.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->youtubelist:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Youtube;

    .line 85
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Youtube;->getLinks()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media_url"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
