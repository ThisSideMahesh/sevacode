.class Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;
.super Ljava/lang/Object;
.source "ResetOtpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 40
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrPassword:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$100(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrConfirmPassword:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrPassword:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Password"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrConfirmPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$100(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Confirm Password"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrConfirmPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    iget-object v1, v1, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Password & Confirm Password Missmatch"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$100(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->access$200(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 59
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->finish()V

    goto :goto_0

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f11010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
