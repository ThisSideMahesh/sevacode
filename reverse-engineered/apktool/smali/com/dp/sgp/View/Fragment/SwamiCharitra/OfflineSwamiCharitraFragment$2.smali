.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;
.super Ljava/lang/Object;
.source "OfflineSwamiCharitraFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->saramrut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/SwamiExample;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 193
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 194
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 195
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->access$102(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->status:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 201
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->access$202(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 203
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 187
    check-cast p1, Lcom/dp/sgp/Model/SwamiExample;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;->success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V

    return-void
.end method
