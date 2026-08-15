.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;
.super Ljava/lang/Object;
.source "OtpVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

.field final synthetic val$edit:[Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;[Landroid/widget/EditText;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iput-object p2, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->val$edit:[Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->val$edit:[Landroid/widget/EditText;

    array-length p1, p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 235
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$400(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$200(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

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

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$302(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box4:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$300(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-string v0, "Please Enter OTP"

    invoke-static {p1, v0}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$300(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-string v0, "The verification code does not match."

    invoke-static {p1, v0}, Lcom/dp/sgp/util/ErrorResponseDailogs;->errorcustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$300(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_3

    .line 253
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$300(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$502(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->sendOtpBody:Lcom/dp/sgp/Model/SendOtpBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$600(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendOtpBody;->setDevice_token(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->sendOtpBody:Lcom/dp/sgp/Model/SendOtpBody;

    const-string v0, "1234"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendOtpBody;->setOtp(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->sendOtpBody:Lcom/dp/sgp/Model/SendOtpBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$700(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendOtpBody;->setMobile(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$800(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 275
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->SendOtpBody()V

    goto :goto_0

    .line 277
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 284
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-string v0, "Please Enter All Numbers In Boxes"

    invoke-static {p1, v0}, Lcom/dp/sgp/util/ErrorResponseDailogs;->customToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    const-string v0, "Please Enter Verification Code"

    invoke-static {p1, v0}, Lcom/dp/sgp/util/ErrorResponseDailogs;->errorcustomToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
