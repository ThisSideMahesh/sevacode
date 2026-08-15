.class Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

.field final synthetic val$edit:[Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;[Landroid/widget/EditText;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    iput-object p2, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->val$edit:[Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 145
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->val$edit:[Landroid/widget/EditText;

    array-length p1, p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 146
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$400(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$000(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$100(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$200(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$302(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$300(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please Enter OTP"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$300(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$300(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->access$502(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    const-class v2, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-virtual {v1, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "OTP Verified Sucessfully"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please Enter All Numbers In Boxes"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method
