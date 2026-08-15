.class Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$1;
.super Landroid/webkit/WebViewClient;
.source "TermsConditionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 41
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
