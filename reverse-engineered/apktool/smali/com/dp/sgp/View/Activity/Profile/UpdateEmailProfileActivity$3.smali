.class Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;
.super Ljava/lang/Object;
.source "UpdateEmailProfileActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->profile_update()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 288
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->HomeScreen()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V
    .locals 2

    .line 247
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_1

    .line 250
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 251
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 252
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->message:Ljava/lang/String;

    .line 255
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->status:Ljava/lang/String;

    .line 257
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->status:Ljava/lang/String;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->access$900(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object p1

    const-string p2, "profile"

    const-string v0, "yes"

    invoke-virtual {p1, p2, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p2, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->message:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    const p2, 0x7f110038

    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 270
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

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

    .line 273
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->HomeScreen()V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    iget-object p2, p1, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->message:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/dp/sgp/util/ErrorResponseDailogs;->errorcustomToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 243
    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;->success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V

    return-void
.end method
