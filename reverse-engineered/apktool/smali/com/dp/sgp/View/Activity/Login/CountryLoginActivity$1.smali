.class Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;
.super Ljava/lang/Object;
.source "CountryLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->lStrMspin:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object p1

    const-string v0, "Enter email address"

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 97
    :cond_0
    sget-object p1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->lStrMspin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->lStrMspin:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object v1, v1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->pstrDeviceId:Ljava/lang/String;

    const-string v2, "device_token"

    invoke-virtual {p1, v2, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object v1, v1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/dp/sgp/Model/SendCountryLoginBody;->setDevice_token(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object v1, v1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->lStrMspin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/dp/sgp/Model/SendCountryLoginBody;->setEmail(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    iget-object v1, v1, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "regId"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dp/sgp/Model/SendCountryLoginBody;->setFcm_id(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->Login()V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Enter valid Email address !"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
