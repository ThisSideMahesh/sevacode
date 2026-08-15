.class public Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "CommonWebViewFragment.java"


# instance fields
.field Channel_id:Ljava/lang/String;

.field LstrCourseDetails:Ljava/lang/String;

.field NewNewlStrMSPIN:Ljava/lang/String;

.field Orientationn:Ljava/lang/String;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field lStrLink:Ljava/lang/String;

.field private progressBar:Landroid/view/View;

.field strtext:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->Orientationn:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->LstrCourseDetails:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->NewNewlStrMSPIN:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->lStrLink:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->strtext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->progressBar:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0074

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->v:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->strtext:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "media_url"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->url:Ljava/lang/String;

    const-string p2, "URL URL"

    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->strtext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->webView:Landroid/webkit/WebView;

    .line 52
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0155

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->progressBar:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p3, 0x2

    .line 57
    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 61
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->webView:Landroid/webkit/WebView;

    new-instance p3, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment$1;

    invoke-direct {p3, p0}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 73
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 76
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->webView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->v:Landroid/view/View;

    return-object p1
.end method
