.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;
.super Ljava/lang/Object;
.source "SanvarFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->ProductsCommon()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 200
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 201
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 202
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->message:Ljava/lang/String;

    .line 206
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->status:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 210
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    .line 212
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->getSanwar()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sanwar:Ljava/util/List;

    .line 214
    new-instance p1, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sanwar:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 216
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 217
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 219
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 220
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 194
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
