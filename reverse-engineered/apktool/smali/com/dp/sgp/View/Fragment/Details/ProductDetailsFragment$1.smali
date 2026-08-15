.class Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$1;
.super Ljava/lang/Object;
.source "ProductDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->lStrLink:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Link will be available shortly "

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->lStrLink:Ljava/lang/String;

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
