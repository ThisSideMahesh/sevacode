.class public Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ResetOtpActivity.java"


# instance fields
.field private button:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private editTextConfirmPassword:Landroid/widget/EditText;

.field private editTextPassword:Landroid/widget/EditText;

.field lStrConfirmPassword:Ljava/lang/String;

.field lStrCountry:Ljava/lang/String;

.field lStrEmailID:Ljava/lang/String;

.field lStrPassword:Ljava/lang/String;

.field lStrUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrEmailID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->lStrConfirmPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->editTextPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Landroid/widget/EditText;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->editTextConfirmPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0037

    .line 27
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->setContentView(I)V

    const p1, 0x7f0a0073

    .line 29
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->editTextPassword:Landroid/widget/EditText;

    const p1, 0x7f0a006f

    .line 30
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->editTextConfirmPassword:Landroid/widget/EditText;

    const p1, 0x7f0a0036

    .line 31
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->button:Landroid/widget/Button;

    .line 32
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 33
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 36
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;->button:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity$1;-><init>(Lcom/dp/sgp/View/Activity/ResetPassword/ResetOtpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
