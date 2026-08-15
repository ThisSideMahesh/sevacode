.class Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity$1;
.super Ljava/lang/Object;
.source "NotificationDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationDetailsActivity;->finish()V

    return-void
.end method
