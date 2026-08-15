.class Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;
.super Ljava/lang/Object;
.source "VibaghFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->VibhagDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 359
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/CommonResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 303
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 304
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 305
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->message:Ljava/lang/String;

    .line 309
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->status:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 312
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->access$002(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;Ljava/util/List;)Ljava/util/List;

    .line 314
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->access$000(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->access$000(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 324
    new-instance p1, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->access$000(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 326
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 327
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 329
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 330
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 297
    check-cast p1, Lcom/dp/sgp/Model/CommonResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;->success(Lcom/dp/sgp/Model/CommonResponse;Lretrofit/client/Response;)V

    return-void
.end method
