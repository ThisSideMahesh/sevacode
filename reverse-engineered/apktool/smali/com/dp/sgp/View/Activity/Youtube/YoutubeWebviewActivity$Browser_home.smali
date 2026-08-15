.class Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity$Browser_home;
.super Landroid/webkit/WebViewClient;
.source "YoutubeWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Browser_home"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity$Browser_home;->this$0:Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity$Browser_home;->this$0:Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/View/Activity/Youtube/YoutubeWebviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
