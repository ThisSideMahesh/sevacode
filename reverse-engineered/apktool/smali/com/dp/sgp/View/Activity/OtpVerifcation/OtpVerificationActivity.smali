.class public Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;
.super Lcom/dp/sgp/View/Activity/Home/BaseActivity;
.source "OtpVerificationActivity.java"


# static fields
.field private static countDownTimer:Landroid/os/CountDownTimer;

.field private static countdownTimerText:Landroid/widget/TextView;


# instance fields
.field btnVerify:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field lStrConfirmPassword:Ljava/lang/String;

.field lStrCountry:Ljava/lang/String;

.field lStrEmailID:Ljava/lang/String;

.field lStrPassword:Ljava/lang/String;

.field private lStrSendOtp:Ljava/lang/String;

.field private lStrToken:Ljava/lang/String;

.field lStrUserName:Ljava/lang/String;

.field private otp:Ljava/lang/String;

.field private otpEditBox1:Landroid/widget/EditText;

.field private otpEditBox2:Landroid/widget/EditText;

.field private otpEditBox3:Landroid/widget/EditText;

.field private otpEditBox4:Landroid/widget/EditText;

.field tvTSubitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrEmailID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrConfirmPassword:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otp:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrSendOtp:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$502(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrSendOtp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .locals 1

    .line 23
    sget-object v0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->countdownTimerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 23
    sput-object p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private startTimer(I)V
    .locals 7

    .line 192
    new-instance v6, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$5;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$5;-><init>(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;JJ)V

    .line 206
    invoke-virtual {v6}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$5;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    sput-object p1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private stopCountdown()V
    .locals 1

    .line 184
    sget-object v0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 186
    sput-object v0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0033

    .line 42
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->setContentView(I)V

    const-string p1, "Verify Code "

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, p1, v0, v0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->setHeader(Ljava/lang/String;ZZ)V

    .line 45
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 46
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    const p1, 0x7f0a013e

    .line 48
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    const p1, 0x7f0a013f

    .line 49
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    const p1, 0x7f0a0140

    .line 50
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    const p1, 0x7f0a0141

    .line 51
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    const p1, 0x7f0a0230

    .line 53
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->countdownTimerText:Landroid/widget/TextView;

    const p1, 0x7f0a0217

    .line 54
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->tvTSubitle:Landroid/widget/TextView;

    .line 56
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrEmailID:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->tvTSubitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please type the verification code \n sent to registerd email id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->lStrEmailID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0036

    .line 58
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->btnVerify:Landroid/widget/Button;

    .line 59
    sget-object p1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez p1, :cond_0

    const-string p1, "1"

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    .line 65
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->startTimer(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->stopCountdown()V

    :goto_0
    const/4 p1, 0x4

    new-array p1, p1, [Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    aput-object v1, p1, v0

    .line 81
    new-instance v0, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    invoke-direct {v0, v1, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    invoke-direct {v1, v2, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    invoke-direct {v1, v2, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    invoke-direct {v1, v2, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$1;-><init>(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$2;-><init>(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$3;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$3;-><init>(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;->btnVerify:Landroid/widget/Button;

    new-instance v1, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity$4;-><init>(Lcom/dp/sgp/View/Activity/OtpVerifcation/OtpVerificationActivity;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
