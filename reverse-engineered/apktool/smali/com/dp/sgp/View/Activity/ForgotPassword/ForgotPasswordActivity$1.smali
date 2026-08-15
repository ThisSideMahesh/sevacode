.class Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    iget-object v0, p1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->editText_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrEmailID:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrEmailID:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->editText_email:Landroid/widget/EditText;

    const-string v0, "Enter EmailId"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    iget-object v0, p1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrEmailID:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->access$000(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->editText_email:Landroid/widget/EditText;

    const-string v0, "Enter valid Email address !"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->access$100(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrEmailID:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->editText_email:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->access$200(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 55
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;->this$0:Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->getResources()Landroid/content/res/Resources;

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
