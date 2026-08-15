.class Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$000(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrUserName:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$100(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrEmailID:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$200(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrCountry:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$300(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrPassword:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$400(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrConfirmPassword:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrUserName:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$000(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter FullName"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrEmailID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$000(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$100(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter EmailId"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object v2, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrEmailID:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$500(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$100(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter valid Email address !"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$100(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$200(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter State/City/Country"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$200(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$300(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Password"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrConfirmPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 107
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$300(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$400(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter Confirm Password"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrConfirmPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->lStrPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 110
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$300(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$300(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v1, "Password & Confirm Password Missmatch"

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$400(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 116
    :cond_6
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->access$600(Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 117
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    const-class v2, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-virtual {v1, p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->finish()V

    .line 122
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    const v1, 0x7f110038

    invoke-virtual {p1, v1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

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

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_7
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Activity/Registration/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
