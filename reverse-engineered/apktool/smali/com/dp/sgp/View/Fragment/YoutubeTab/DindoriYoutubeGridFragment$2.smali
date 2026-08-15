.class Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;
.super Ljava/lang/Object;
.source "DindoriYoutubeGridFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->HomeScreen()V
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
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/YoutubeResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 122
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 123
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 124
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->message:Ljava/lang/String;

    .line 126
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->status:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 132
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->youtubelist:Ljava/util/List;

    .line 134
    new-instance p1, Lcom/dp/sgp/Adapters/NewCourseDetailsAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->youtubelist:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/dp/sgp/Adapters/NewCourseDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 136
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 137
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->access$000(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->access$000(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 140
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->access$000(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/dp/sgp/Model/YoutubeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;->success(Lcom/dp/sgp/Model/YoutubeResponse;Lretrofit/client/Response;)V

    return-void
.end method
