.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->DeviceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/SucessResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 751
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 754
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 757
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const v0, 0x7f010011

    const v1, 0x7f010012

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->overridePendingTransition(II)V

    .line 758
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->finish()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/SucessResponse;Lretrofit/client/Response;)V
    .locals 2

    .line 717
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 720
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 721
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 722
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SucessResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->message:Ljava/lang/String;

    .line 726
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SucessResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->status:Ljava/lang/String;

    .line 728
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->status:Ljava/lang/String;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 730
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const p2, 0x7f110038

    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 732
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WELCOME TO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " APPLICATION"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-class v0, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 737
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const p2, 0x7f010011

    const v0, 0x7f010012

    invoke-virtual {p1, p2, v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->overridePendingTransition(II)V

    .line 738
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 714
    check-cast p1, Lcom/dp/sgp/Model/SucessResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$10;->success(Lcom/dp/sgp/Model/SucessResponse;Lretrofit/client/Response;)V

    return-void
.end method
