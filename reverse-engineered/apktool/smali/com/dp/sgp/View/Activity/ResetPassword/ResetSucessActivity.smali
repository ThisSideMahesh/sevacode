.class public Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;
.super Lcom/dp/sgp/View/Activity/Home/BaseActivity;
.source "ResetSucessActivity.java"


# instance fields
.field btn_reset:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0038

    .line 21
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->setContentView(I)V

    const-string p1, "Verify Code"

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, v0, v0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->setHeader(Ljava/lang/String;ZZ)V

    .line 24
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 25
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    const p1, 0x7f0a003a

    .line 28
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;->btn_reset:Landroid/widget/Button;

    .line 30
    new-instance v0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity$1;-><init>(Lcom/dp/sgp/View/Activity/ResetPassword/ResetSucessActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
