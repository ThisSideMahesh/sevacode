.class Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;
.super Ljava/lang/Object;
.source "ResetSucessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 34
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
