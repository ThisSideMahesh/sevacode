.class Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;
.super Ljava/lang/Object;
.source "AboutUsDeatilsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->AboutUs()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 446
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/CommonResponse;Lretrofit/client/Response;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 392
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 393
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 394
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->message:Ljava/lang/String;

    .line 398
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->status:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 402
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 403
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->access$002(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;Ljava/util/List;)Ljava/util/List;

    .line 404
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 405
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->LoadImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    .line 440
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 386
    check-cast p1, Lcom/dp/sgp/Model/CommonResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$4;->success(Lcom/dp/sgp/Model/CommonResponse;Lretrofit/client/Response;)V

    return-void
.end method
