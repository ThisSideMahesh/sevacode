.class public Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;
.super Lcom/dp/sgp/View/Activity/Home/BaseActivity;
.source "ForgotPasswordActivity.java"


# instance fields
.field private button:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field editText_email:Landroid/widget/EditText;

.field lStrConfirmPassword:Ljava/lang/String;

.field lStrCountry:Ljava/lang/String;

.field lStrEmailID:Ljava/lang/String;

.field lStrPassword:Ljava/lang/String;

.field lStrUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrEmailID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->lStrConfirmPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->isValidEmailId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;)Lcom/dp/sgp/DataHolder/DataHandler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method

.method private isValidEmailId(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    .line 28
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->setContentView(I)V

    const-string p1, "Forgot Password "

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0, v0}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->setHeader(Ljava/lang/String;ZZ)V

    .line 31
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 32
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    const p1, 0x7f0a006f

    .line 35
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->editText_email:Landroid/widget/EditText;

    const p1, 0x7f0a0036

    .line 36
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;->button:Landroid/widget/Button;

    .line 39
    new-instance v0, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity$1;-><init>(Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
