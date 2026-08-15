.class public Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DetailsLinksViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;,
        Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$Browser_home;
    }
.end annotation


# instance fields
.field Channel_id:Ljava/lang/String;

.field LstrCourseDetails:Ljava/lang/String;

.field NewNewlStrMSPIN:Ljava/lang/String;

.field Orientationn:Ljava/lang/String;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field panelIconLeft:Landroid/widget/LinearLayout;

.field private progressBar:Landroid/view/View;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->Orientationn:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->LstrCourseDetails:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->NewNewlStrMSPIN:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->loadWebsite()V

    return-void
.end method

.method private loadWebsite()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0024

    .line 35
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "media_url"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->url:Ljava/lang/String;

    const-string v1, "URL URL"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0a0269

    .line 45
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f0a0155

    .line 46
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->progressBar:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$Browser_home;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$Browser_home;-><init>(Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;-><init>(Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    if-nez p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
