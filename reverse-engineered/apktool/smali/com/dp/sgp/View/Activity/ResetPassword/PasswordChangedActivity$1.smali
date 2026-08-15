.class Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;
.super Ljava/lang/Object;
.source "PasswordChangedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->access$000(Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->getResources()Landroid/content/res/Resources;

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
