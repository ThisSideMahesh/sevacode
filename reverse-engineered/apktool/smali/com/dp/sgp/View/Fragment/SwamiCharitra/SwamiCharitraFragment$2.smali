.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;
.super Ljava/lang/Object;
.source "SwamiCharitraFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->saramrut()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 171
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 172
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 173
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->access$102(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->status:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 181
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 183
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->txt_adhayay:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/SwamiDatum;->getCurrent_adhyay()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->pos:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/SwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/SwamiCharitraAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/SwamiCharitraAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->mAdapter:Lcom/dp/sgp/Adapters/SwamiCharitraAdapter;

    .line 191
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 192
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 193
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 194
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->mAdapter:Lcom/dp/sgp/Adapters/SwamiCharitraAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 195
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/dp/sgp/Model/SwamiExample;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;->success(Lcom/dp/sgp/Model/SwamiExample;Lretrofit/client/Response;)V

    return-void
.end method
