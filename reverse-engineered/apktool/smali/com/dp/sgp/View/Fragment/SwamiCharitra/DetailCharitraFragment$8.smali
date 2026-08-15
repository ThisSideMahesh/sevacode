.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;
.super Ljava/lang/Object;
.source "DetailCharitraFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->Refreshsaramrut()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 1044
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 998
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 999
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 1000
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$302(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->status:Ljava/lang/String;

    .line 1006
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1009
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1011
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p2, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 1012
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    const/16 p2, 0x14

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    .line 1013
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iput v0, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 1018
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p2, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 1019
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v1, v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 1022
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p2, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1028
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    const p2, 0x7f08013d

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1030
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    const p2, 0x7f08013e

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1039
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 992
    check-cast p1, Lcom/dp/sgp/Model/SwamiExample;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;->success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V

    return-void
.end method
