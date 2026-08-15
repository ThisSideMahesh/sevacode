.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;
.super Ljava/lang/Object;
.source "NityaMenuFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->ProductsCommon()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 319
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 282
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 283
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 284
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->message:Ljava/lang/String;

    .line 288
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->status:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 292
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$202(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    .line 293
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->getAartisangrah()Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    move-result-object p2

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    .line 294
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->getNityaseva()Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    move-result-object p2

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    .line 296
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->getMantravibhag()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;Ljava/util/List;)Ljava/util/List;

    .line 297
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->getStotravibhag()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;Ljava/util/List;)Ljava/util/List;

    .line 300
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->bhoopaliAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    .line 301
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->bhoopaliAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 303
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->morningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    .line 304
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->morningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 276
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
