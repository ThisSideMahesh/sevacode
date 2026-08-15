.class Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;
.super Ljava/lang/Object;
.source "YoutubeGridFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->HomeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/YoutubeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/YoutubeResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 121
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 122
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 123
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->message:Ljava/lang/String;

    .line 127
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->status:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 133
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->youtubelist:Ljava/util/List;

    .line 135
    new-instance p1, Lcom/dp/sgp/Adapters/NewCourseDetailsAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->youtubelist:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/dp/sgp/Adapters/NewCourseDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 137
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 138
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->access$000(Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 140
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->access$000(Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 141
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->access$000(Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/dp/sgp/Model/YoutubeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/Youtube/YoutubeGridFragment$2;->success(Lcom/dp/sgp/Model/YoutubeResponse;Lretrofit/client/Response;)V

    return-void
.end method
