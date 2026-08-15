.class Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrEmailID:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrPassword:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrEmailID:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter EmailId"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    iget-object v1, p1, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrEmailID:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$200(Lcom/dp/sgp/View/Activity/Login/LoginActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter valid Email address !"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Password"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->access$300(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 105
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    const-class v2, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->finish()V

    .line 110
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    const v0, 0x7f110038

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WELCOME TO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " APPLICATION"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->getResources()Landroid/content/res/Resources;

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
