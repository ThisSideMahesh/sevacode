.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->SendOtpBody()V
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

    .line 412
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 482
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->HomeScreen()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V
    .locals 3

    .line 416
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_2

    .line 419
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 420
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 421
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    .line 424
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->status:Ljava/lang/String;

    .line 426
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->status:Ljava/lang/String;

    const-string v0, "success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 428
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getUser_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p2, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$600(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_token"

    invoke-virtual {p2, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getFlag()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "Mobile"

    const-string v0, "otp"

    const-string v1, "yes"

    if-nez p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$700(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-class v0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10008000

    .line 436
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$700(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mobile_No"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$1300(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mspin"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 440
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->finish()V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "profile"

    invoke-virtual {p1, v2, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$700(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->HomeScreen()V

    goto :goto_0

    .line 469
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p2, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/dp/sgp/util/ErrorResponseDailogs;->errorcustomToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 412
    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$7;->success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V

    return-void
.end method
