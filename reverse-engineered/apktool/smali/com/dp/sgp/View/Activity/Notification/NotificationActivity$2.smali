.class Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    .line 99
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "Details not availabel"

    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media_url"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
