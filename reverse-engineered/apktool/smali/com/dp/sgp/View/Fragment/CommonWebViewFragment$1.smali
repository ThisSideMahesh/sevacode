.class Lcom/dp/sgp/View/Fragment/CommonWebViewFragment$1;
.super Landroid/webkit/WebViewClient;
.source "CommonWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;->access$000(Lcom/dp/sgp/View/Fragment/CommonWebViewFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
