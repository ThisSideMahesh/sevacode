.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;
.super Ljava/lang/Object;
.source "AbhjaChandiFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->abjachandi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/AbjachandiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/AbjachandiResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 159
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 160
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 161
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->status:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 168
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;Ljava/util/List;)Ljava/util/List;

    .line 170
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->mAdapter:Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;

    .line 174
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 177
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 178
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->mAdapter:Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 180
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 153
    check-cast p1, Lcom/dp/sgp/Model/AbjachandiResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;->success(Lcom/dp/sgp/Model/AbjachandiResponse;Lretrofit/client/Response;)V

    return-void
.end method
