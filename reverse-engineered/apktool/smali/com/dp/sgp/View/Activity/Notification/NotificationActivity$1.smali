.class Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$1;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 69
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->finish()V

    return-void
.end method
