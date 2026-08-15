.class public Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TermsConditionsActivity.java"


# instance fields
.field private btnRetry:Landroid/widget/Button;

.field private layMain:Landroid/widget/LinearLayout;

.field private layoutNoInternet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003e

    .line 21
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;->setContentView(I)V

    .line 24
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "Loading Data..."

    .line 25
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v0, 0x7f0a0269

    .line 27
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v1, "https://dindoripranit.org/gurupeethapp/privacy.html"

    .line 37
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45
    new-instance v1, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
