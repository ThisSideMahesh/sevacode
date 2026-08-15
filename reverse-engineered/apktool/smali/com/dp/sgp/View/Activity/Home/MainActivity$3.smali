.class Lcom/dp/sgp/View/Activity/Home/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Home/MainActivity;->Popup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Home/MainActivity;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/dp/sgp/iOSDialog/iOSDialog;)V
    .locals 5

    .line 510
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$100(Lcom/dp/sgp/View/Activity/Home/MainActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$100(Lcom/dp/sgp/View/Activity/Home/MainActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "Mobile"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$100(Lcom/dp/sgp/View/Activity/Home/MainActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "otp"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$100(Lcom/dp/sgp/View/Activity/Home/MainActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$100(Lcom/dp/sgp/View/Activity/Home/MainActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "lang"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->access$100(Lcom/dp/sgp/View/Activity/Home/MainActivity;)Lcom/dp/sgp/DataHolder/DataHandler;

    move-result-object v0

    const-string v1, "DialingCode"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "91"

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f010012

    const v2, 0x7f010011

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    const-class v4, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-virtual {v3, v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 527
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-virtual {v0, v2, v1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->overridePendingTransition(II)V

    .line 528
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->finish()V

    goto :goto_0

    .line 532
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    const-class v4, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-virtual {v3, v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 534
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-virtual {v0, v2, v1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->overridePendingTransition(II)V

    .line 535
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->finish()V

    .line 539
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Home/MainActivity;

    const/4 v1, 0x0

    const-string v2, "Loggout Sucesfully"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 541
    invoke-virtual {p1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->dismiss()V

    return-void
.end method
