.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->VibhagDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 1044
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1045
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->Sanvar()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/CommonResponse;Lretrofit/client/Response;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1023
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 1024
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 1025
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    .line 1029
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->status:Ljava/lang/String;

    .line 1031
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1032
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-string v0, "Vibhag"

    invoke-virtual {p2, p1, v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->saveVibhag(Lcom/dp/sgp/Model/CommonResponse;Ljava/lang/String;)V

    .line 1035
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->Sanvar()V

    .line 1038
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 1017
    check-cast p1, Lcom/dp/sgp/Model/CommonResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$14;->success(Lcom/dp/sgp/Model/CommonResponse;Lretrofit/client/Response;)V

    return-void
.end method
