.class Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;
.super Landroid/webkit/WebChromeClient;
.source "DetailsLinksViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChrome"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mFullscreenContainer:Landroid/widget/FrameLayout;

.field private mOriginalOrientation:I

.field private mOriginalSystemUiVisibility:I

.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onHideCustomView()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomView:Landroid/view/View;

    .line 136
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mOriginalSystemUiVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    iget v2, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->setRequestedOrientation(I)V

    .line 138
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 139
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->onHideCustomView()V

    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomView:Landroid/view/View;

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mOriginalSystemUiVisibility:I

    .line 149
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mOriginalOrientation:I

    .line 150
    iput-object p2, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 151
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->mCustomView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity$MyChrome;->this$0:Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Webview/DetailsLinksViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xf06

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
