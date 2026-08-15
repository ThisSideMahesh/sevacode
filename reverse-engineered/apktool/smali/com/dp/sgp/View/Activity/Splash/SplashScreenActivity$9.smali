.class Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->Nitya()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 606
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->Aarti()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 583
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 584
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 585
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->message:Ljava/lang/String;

    .line 589
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->status:Ljava/lang/String;

    .line 591
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 592
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-string v0, "Nitya"

    invoke-virtual {p2, p1, v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->saveNitya(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->Aarti()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 577
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
