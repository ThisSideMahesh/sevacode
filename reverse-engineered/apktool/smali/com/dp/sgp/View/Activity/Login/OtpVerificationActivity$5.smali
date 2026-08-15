.class Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;
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


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 303
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$600(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendLoginBody;->setDevice_token(Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$700(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendLoginBody;->setMobile(Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "regId"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendLoginBody;->setFcm_id(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$800(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 309
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$900()I

    move-result p1

    .line 310
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$900()I

    move-result v0

    .line 311
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$900()I

    move-result v1

    .line 312
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$900()I

    move-result v2

    .line 314
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object v3, v3, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box3:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->otp_text_box4:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$400(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->access$200(Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Login/OtpVerificationActivity;->getResources()Landroid/content/res/Resources;

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
