.class Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;
.super Ljava/lang/Object;
.source "CountryOtpVerificationActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->Nitya()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 872
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 875
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->Aarti()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 1

    .line 846
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 849
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 850
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 851
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->message:Ljava/lang/String;

    .line 855
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->status:Ljava/lang/String;

    .line 857
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 858
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    const-string v0, "Nitya"

    invoke-virtual {p2, p1, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->saveNitya(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V

    .line 866
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->Aarti()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 843
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
