.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;
.super Ljava/lang/Object;
.source "AartiSangrahaFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->ProductsCommon()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 316
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 278
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 279
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 280
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->message:Ljava/lang/String;

    .line 284
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->status:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 288
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$302(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    .line 289
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->getAartisangrah()Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    move-result-object p2

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    .line 291
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->getNaivadyaAartiSakali()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;Ljava/util/List;)Ljava/util/List;

    .line 292
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->getNaivadyaaartisayankal()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$202(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;Ljava/util/List;)Ljava/util/List;

    .line 293
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->getBhupaliaartisakali()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;Ljava/util/List;)Ljava/util/List;

    .line 295
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->bhoopaliAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    .line 296
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->bhoopaliAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 298
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->morningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    .line 299
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$500(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->morningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 302
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->eveningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    .line 303
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->access$600(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->eveningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 272
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment$4;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
