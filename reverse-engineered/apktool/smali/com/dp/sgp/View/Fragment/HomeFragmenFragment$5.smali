.class Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$5;
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

    .line 544
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$5;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 548
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$5;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    new-instance v0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;-><init>()V

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->fragment:Landroid/support/v4/app/Fragment;

    .line 550
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$5;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$000(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;Landroid/support/v4/app/Fragment;)V

    return-void
.end method
