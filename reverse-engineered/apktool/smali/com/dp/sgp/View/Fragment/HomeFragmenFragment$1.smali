.class Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;
.super Ljava/lang/Object;
.source "HomeFragmenFragment.java"

# interfaces
.implements Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;


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

    .line 222
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndicatorClicked(I)V
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIndicatorClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/SliderView;->getCurrentPagePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GGG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    .line 230
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Link will be available shortly "

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    const-string v2, "\u0936\u094d\u0930\u0940 \u0917\u0941\u0930\u0941\u092a\u0940\u0920 \u0924\u094d\u0930\u094d\u092f\u0902\u092c\u0915\u0947\u0936\u094d\u0935\u0930"

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "media_url"

    .line 238
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;-><init>()V

    .line 240
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008c

    .line 244
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method
