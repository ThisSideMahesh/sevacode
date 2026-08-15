.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;
.super Ljava/lang/Object;
.source "SevaMonthlyFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->abjachandi()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/AbjachandiResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 152
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 153
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 154
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->status:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 161
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/AbjachandiResponse;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;Ljava/util/List;)Ljava/util/List;

    .line 163
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 166
    :goto_0
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 169
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/AbjachnadiData;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/AbjachnadiData;->getTypeName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u0915\u094c\u091f\u0942\u0902\u092c\u093f\u0915"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 171
    new-instance p2, Lcom/dp/sgp/Model/AbjachnadiData;

    invoke-direct {p2}, Lcom/dp/sgp/Model/AbjachnadiData;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/AbjachnadiData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dp/sgp/Model/AbjachnadiData;->setList_name(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/AbjachnadiData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dp/sgp/Model/AbjachnadiData;->setList_value(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/AbjachnadiData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/AbjachnadiData;->getList_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dp/sgp/Model/AbjachnadiData;->setList_type(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/SevaAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/SevaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->mAdapter:Lcom/dp/sgp/Adapters/SevaAdapter;

    .line 185
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 186
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 188
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 189
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->mAdapter:Lcom/dp/sgp/Adapters/SevaAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/dp/sgp/Model/AbjachandiResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;->success(Lcom/dp/sgp/Model/AbjachandiResponse;Lretrofit/client/Response;)V

    return-void
.end method
