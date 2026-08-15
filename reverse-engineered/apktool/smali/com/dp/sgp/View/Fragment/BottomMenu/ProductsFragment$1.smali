.class Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;
.super Ljava/lang/Object;
.source "ProductsFragment.java"

# interfaces
.implements Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndicatorClicked(I)V
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIndicatorClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-virtual {v1}, Lcom/dp/sgp/autoimageslider/SliderView;->getCurrentPagePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GGG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    .line 197
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Link will be available shortly "

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    const-string v2, "\u0936\u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917\u093e\u091a\u0947 \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "media_url"

    .line 205
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance p1, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;-><init>()V

    .line 207
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008c

    .line 211
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method
