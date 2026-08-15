.class Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;
.super Ljava/lang/Object;
.source "NewLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->lStrMspin:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->pstrDeviceId:Ljava/lang/String;

    const-string v1, "device_token"

    invoke-virtual {p1, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendLoginBody;->setDevice_token(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->lStrMspin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendLoginBody;->setMobile(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendLoginBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "regId"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SendLoginBody;->setFcm_id(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->access$100(Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->Login()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->access$000(Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object p1

    const-string v0, "Invalid Mobile No"

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
