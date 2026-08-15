.class Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->DeviceInfo()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 511
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 512
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 516
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/SucessResponse;Lretrofit/client/Response;)V
    .locals 1

    .line 474
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 477
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 478
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 479
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SucessResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->message:Ljava/lang/String;

    .line 483
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SucessResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->status:Ljava/lang/String;

    .line 485
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->status:Ljava/lang/String;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Comments"

    const-string p2, "First Time"

    .line 488
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->TodayDate_String:Ljava/lang/String;

    const-string v0, "TimeToday"

    invoke-virtual {p1, v0, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "InsertionDate"

    .line 494
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v0, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 500
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 470
    check-cast p1, Lcom/dp/sgp/Model/SucessResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;->success(Lcom/dp/sgp/Model/SucessResponse;Lretrofit/client/Response;)V

    return-void
.end method
