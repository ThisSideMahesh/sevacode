.class Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;
.super Ljava/lang/Object;
.source "CountryLoginActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->Login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 317
    const-class v0, Lcom/dp/sgp/Model/ErrorResponse;

    invoke-virtual {p1, v0}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/ErrorResponse;

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/dp/sgp/Model/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/dp/sgp/Model/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V
    .locals 1

    .line 271
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_1

    .line 283
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->message:Ljava/lang/String;

    .line 284
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->status:Ljava/lang/String;

    .line 286
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->status:Ljava/lang/String;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    const-class v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10008000

    .line 291
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->lStrMspin:Ljava/lang/String;

    const-string v0, "Mobile_No"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->lStrMspin:Ljava/lang/String;

    const-string v0, "Mspin"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->finish()V

    .line 296
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p2, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->message:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p2, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->message:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/dp/sgp/util/ErrorResponseDailogs;->errorcustomToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 267
    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;->success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V

    return-void
.end method
