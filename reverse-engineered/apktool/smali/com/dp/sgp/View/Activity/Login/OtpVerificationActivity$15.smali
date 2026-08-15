.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->Sanvar()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 1096
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->DindoriYoutube()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1072
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 1073
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 1074
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    .line 1078
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->status:Ljava/lang/String;

    .line 1080
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1083
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-string v0, "sanvar"

    invoke-virtual {p2, p1, v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->saveSanvar(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V

    .line 1090
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1091
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->DindoriYoutube()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 1066
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$15;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
