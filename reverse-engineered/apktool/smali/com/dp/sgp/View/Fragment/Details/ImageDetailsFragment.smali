.class public Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageDetailsFragment.java"


# instance fields
.field iv_auto_image_slider:Landroid/widget/ImageView;

.field lStrLink:Ljava/lang/String;

.field rootview:Landroid/view/View;

.field strtext:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->lStrLink:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->strtext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0081

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a00cb

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->iv_auto_image_slider:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->strtext:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "media_url"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->url:Ljava/lang/String;

    const-string p2, "URL URL"

    .line 51
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->strtext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 55
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 56
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 57
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 60
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->url:Ljava/lang/String;

    .line 61
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 78
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->iv_auto_image_slider:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->rootview:Landroid/view/View;

    return-object p1
.end method
