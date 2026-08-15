.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->HomeScreen()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 601
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 604
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->ProductsCommon()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V
    .locals 1

    .line 573
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 574
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "HomeScreenBody"

    .line 575
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 582
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    .line 583
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->status:Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getData()Lcom/dp/sgp/Model/HomeResponse/HomeData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 587
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-string v0, "home"

    invoke-virtual {p2, p1, v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->saveHome(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->ProductsCommon()V

    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 570
    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$9;->success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V

    return-void
.end method
