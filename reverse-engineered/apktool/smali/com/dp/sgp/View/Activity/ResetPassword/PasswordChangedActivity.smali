.class public Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;
.super Lcom/dp/sgp/View/Activity/Home/BaseActivity;
.source "PasswordChangedActivity.java"


# instance fields
.field btn_reset:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0035

    .line 22
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->setContentView(I)V

    const-string p1, "Verify Code"

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, v0, v0}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->setHeader(Ljava/lang/String;ZZ)V

    .line 25
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 26
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    const p1, 0x7f0a003a

    .line 29
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;->btn_reset:Landroid/widget/Button;

    .line 31
    new-instance v0, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity$1;-><init>(Lcom/dp/sgp/View/Activity/ResetPassword/PasswordChangedActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
