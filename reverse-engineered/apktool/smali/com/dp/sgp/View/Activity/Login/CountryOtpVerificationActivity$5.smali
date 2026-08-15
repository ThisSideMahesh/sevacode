.class Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;
.super Ljava/lang/Object;
.source "CountryOtpVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 301
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$600(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendCountryLoginBody;->setDevice_token(Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$700(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendCountryLoginBody;->setEmail(Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "regId"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendCountryLoginBody;->setFcm_id(Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$800(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 306
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$900()I

    move-result p1

    .line 307
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$900()I

    move-result v0

    .line 308
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$900()I

    move-result v1

    .line 309
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$900()I

    move-result v2

    .line 311
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object v3, v3, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box1:Landroid/widget/TextView;

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

    .line 312
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box3:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box4:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$400(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->access$200(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getResources()Landroid/content/res/Resources;

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
