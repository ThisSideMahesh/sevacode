.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;
.super Ljava/lang/Object;
.source "DetailCharitraFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->Submitabjachandi()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 969
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 1

    .line 936
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_1

    .line 939
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 940
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sendSubmitBody"

    .line 941
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 945
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$302(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 946
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->status:Ljava/lang/String;

    .line 948
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->status:Ljava/lang/String;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 949
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$300(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 950
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    const v0, 0x7f08013d

    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 953
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->Refreshsaramrut()V

    goto :goto_0

    .line 957
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$300(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 964
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 933
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
