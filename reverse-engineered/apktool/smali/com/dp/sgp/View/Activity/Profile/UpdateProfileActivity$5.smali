.class Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;
.super Ljava/lang/Object;
.source "UpdateProfileActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->DeviceInfo()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    .line 470
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 473
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    const v0, 0x7f010011

    const v1, 0x7f010012

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->overridePendingTransition(II)V

    .line 474
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->finish()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/SucessResponse;Lretrofit/client/Response;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 443
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 444
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 445
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SucessResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->message:Ljava/lang/String;

    .line 449
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SucessResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->status:Ljava/lang/String;

    .line 451
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->status:Ljava/lang/String;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 453
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    const-class v0, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 456
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    const p2, 0x7f010011

    const v0, 0x7f010012

    invoke-virtual {p1, p2, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->overridePendingTransition(II)V

    .line 457
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 437
    check-cast p1, Lcom/dp/sgp/Model/SucessResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity$5;->success(Lcom/dp/sgp/Model/SucessResponse;Lretrofit/client/Response;)V

    return-void
.end method
