.class public Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "RahuKalBottomSheet.java"


# instance fields
.field private rootView:Landroid/view/View;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0d00cd

    .line 23
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->rootView:Landroid/view/View;

    const p2, 0x7f0a0131

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->webView:Landroid/webkit/WebView;

    .line 25
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->rootView:Landroid/view/View;

    const p2, 0x7f0a00c0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet$1;-><init>(Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->webView:Landroid/webkit/WebView;

    const-string p2, "file:///android_asset/table.html"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->rootView:Landroid/view/View;

    return-object p1
.end method
