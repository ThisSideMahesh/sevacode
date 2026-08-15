.class Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$2;
.super Landroid/webkit/WebChromeClient;
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

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity;

    iput-object p2, p0, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 p1, 0x64

    if-ge p2, p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    if-ne p2, p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/TermsConditionsActivity$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
