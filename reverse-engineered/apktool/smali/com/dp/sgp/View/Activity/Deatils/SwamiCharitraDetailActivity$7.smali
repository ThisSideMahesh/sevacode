.class Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;
.super Ljava/lang/Object;
.source "SwamiCharitraDetailActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->saramrut()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 440
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 397
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 398
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 399
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$202(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->status:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 406
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$002(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 408
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 409
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 412
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget p2, p2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->counter:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 413
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {p2}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget v0, v0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->counter:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/SwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 416
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$100(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget p2, p2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->counter:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v0, 0x7f08013d

    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v0, 0x7f08013e

    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 435
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 391
    check-cast p1, Lcom/dp/sgp/Model/SwamiExample;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;->success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V

    return-void
.end method
