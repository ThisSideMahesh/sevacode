.class public Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AboutUsDeatilsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$BitmapAsyncTask;
    }
.end annotation


# instance fields
.field Type:Ljava/lang/String;

.field arrysize:I

.field backdrop:Landroid/widget/ImageView;

.field connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field counter:I

.field data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field device_token:Ljava/lang/String;

.field fab:Landroid/support/design/widget/FloatingActionButton;

.field intValue:I

.field lStrSendImage:Ljava/lang/String;

.field lStrSendText:Ljava/lang/String;

.field lStrSubtitle:Ljava/lang/String;

.field layoutDate:Landroid/widget/FrameLayout;

.field message:Ljava/lang/String;

.field private progressBar:Landroid/view/View;

.field progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field status:Ljava/lang/String;

.field strtext:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->strtext:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->device_token:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->user_id:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->Type:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->lStrSubtitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->dataList:Ljava/util/List;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->intValue:I

    iput v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->counter:I

    iput v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->arrysize:I

    return-void
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->dataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->shareImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initCollapsingToolbar(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a004f

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, " "

    .line 347
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0027

    .line 348
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x1

    .line 349
    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 352
    new-instance v1, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private shareImage(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "images"

    .line 703
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 705
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/image.png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 706
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 707
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 710
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 712
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 713
    new-instance v0, Ljava/io/File;

    const-string v1, "image.png"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v1, "com.dp.sgp.provider"

    invoke-static {p1, v1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 718
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 719
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 720
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 721
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "image/png"

    .line 722
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Choose an app"

    .line 723
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public AboutUs()V
    .locals 3

    .line 373
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 375
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 376
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 377
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 382
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 384
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 385
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->strtext:Ljava/lang/String;

    const-string v2, "\u0909\u092a\u0915\u094d\u0930\u092e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;-><init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Upkram(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->strtext:Ljava/lang/String;

    const-string v2, "\u0935\u093f\u092d\u093e\u0917"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$5;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$5;-><init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Vibhag(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$6;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$6;-><init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->AboutUs(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    :goto_0
    return-void
.end method

.method public LoadImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 591
    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->lStrSendText:Ljava/lang/String;

    .line 592
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->lStrSendImage:Ljava/lang/String;

    .line 594
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 595
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 596
    invoke-static {}, Lcom/dp/sgp/util/ImageUtils;->getRandomDrawbleColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    .line 597
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 600
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 601
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 602
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$7;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$7;-><init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V

    .line 603
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 618
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->backdrop:Landroid/widget/ImageView;

    .line 619
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :try_start_0
    const-string p1, "UTF-8"

    .line 639
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 642
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    const-string v2, ""

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const-string v6, ""

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 645
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6

    .line 684
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 686
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 687
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 686
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 689
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 693
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 695
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00ec

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a002c

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->backdrop:Landroid/widget/ImageView;

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0081

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a00d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->layoutDate:Landroid/widget/FrameLayout;

    .line 112
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 113
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    .line 115
    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->device_token:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->user_id:Ljava/lang/String;

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->dataList:Ljava/util/List;

    .line 119
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0155

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->progressBar:Landroid/view/View;

    .line 123
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 125
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 127
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 128
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 129
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 131
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 132
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    const p3, 0x7f080299

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 133
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 135
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 137
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 139
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 142
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "message"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->strtext:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "subtitle"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->lStrSubtitle:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "pos"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->Type:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->lStrSubtitle:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->Type:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 167
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 169
    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    if-ne p1, p2, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->AboutUs()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f11010c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->layoutDate:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->v:Landroid/view/View;

    return-object p1
.end method

.method public shareText()V
    .locals 3

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 732
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Dindoripranit Shree Swami Samarth Seva Marg"

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "https://play.google.com/store/apps/details?id=com.dp.sgp"

    .line 734
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
