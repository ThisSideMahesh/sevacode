.class public Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SanvarDetailsPagerFragment.java"


# instance fields
.field Channel_id:Ljava/lang/String;

.field LstrImage:Ljava/lang/String;

.field Lyt_Ordernow:Landroid/widget/LinearLayout;

.field NewNewlStrMSPIN:Ljava/lang/String;

.field backdrop:Landroid/widget/ImageView;

.field commonData:Lcom/dp/sgp/Model/CommonData;

.field private currentPageId:I

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field lStrLink:Ljava/lang/String;

.field lStrSubtitle:Ljava/lang/String;

.field private progressBar:Landroid/view/View;

.field private storedata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field strtext:Ljava/lang/String;

.field textView:Landroid/widget/TextView;

.field textView2:Landroid/widget/TextView;

.field tv_Order_Now:Landroid/widget/TextView;

.field txt_cat1:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->lStrSubtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->LstrImage:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->NewNewlStrMSPIN:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->lStrLink:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->strtext:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->storedata:Ljava/util/List;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->currentPageId:I

    return-void
.end method

.method public static newInstance(Ljava/util/List;I)Landroid/support/v4/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    check-cast p0, Ljava/util/ArrayList;

    const-string v1, "list"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "pos"

    .line 50
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    new-instance p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;

    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public LoadImage(Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->backdrop:Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->storedata:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->currentPageId:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0d008e

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->v:Landroid/view/View;

    const p2, 0x7f0a002c

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->backdrop:Landroid/widget/ImageView;

    .line 78
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0155

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->progressBar:Landroid/view/View;

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 83
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 87
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    const p2, 0x7f080299

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 91
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->lStrSubtitle:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->strtext:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->LstrImage:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->strtext:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->LstrImage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->LoadImage(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarDetailsPagerFragment;->v:Landroid/view/View;

    return-object p1
.end method
