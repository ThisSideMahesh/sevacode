.class Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->HomeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;Lretrofit/client/Response;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 166
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 167
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 168
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->message:Ljava/lang/String;

    .line 171
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->status:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 174
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->access$002(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;Ljava/util/List;)Ljava/util/List;

    .line 176
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {p2}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;->getUnread_count()I

    move-result p1

    .line 182
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->notifation_msg:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nTotal\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {p2}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 184
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->access$100(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {p2}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->access$100(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 187
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {p2}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->access$100(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 160
    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;->success(Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;Lretrofit/client/Response;)V

    return-void
.end method
