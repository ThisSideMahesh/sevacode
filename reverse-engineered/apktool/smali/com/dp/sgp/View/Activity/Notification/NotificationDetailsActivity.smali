.class public Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NotificationDetailsActivity.java"


# instance fields
.field img_Home:Landroid/widget/ImageView;

.field iv_auto_image_slider:Landroid/widget/ImageView;

.field lStrLink:Ljava/lang/String;

.field rootview:Landroid/view/View;

.field strtext:Ljava/lang/String;

.field txtHeading:Landroid/widget/TextView;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->lStrLink:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->strtext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0030

    .line 37
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->setContentView(I)V

    const p1, 0x7f0a0237

    .line 39
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->txtHeading:Landroid/widget/TextView;

    const p1, 0x7f0a00b3

    .line 40
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->img_Home:Landroid/widget/ImageView;

    .line 41
    new-instance v0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00cb

    .line 49
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->iv_auto_image_slider:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "media_url"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->url:Ljava/lang/String;

    const-string v0, "message"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->strtext:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->url:Ljava/lang/String;

    const-string v0, "URL URL"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->txtHeading:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->strtext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 60
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 61
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 62
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 65
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->url:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 83
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->iv_auto_image_slider:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method
