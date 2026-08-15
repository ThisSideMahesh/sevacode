.class public Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;
.super Lcom/dp/sgp/View/Activity/Home/BaseActivity;
.source "CountryOtpVerificationActivity.java"


# static fields
.field private static countDownTimer:Landroid/os/CountDownTimer;

.field private static countdownTimerText:Landroid/widget/TextView;


# instance fields
.field QustionStatus:I

.field REsendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

.field private btnRetry:Landroid/widget/Button;

.field private btnVerify:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private lStrMspin:Ljava/lang/String;

.field private lStrSendOtp:Ljava/lang/String;

.field private lStrToken:Ljava/lang/String;

.field private layMain:Landroid/widget/LinearLayout;

.field private layoutNoInternet:Landroid/widget/LinearLayout;

.field message:Ljava/lang/String;

.field private mobileNumber:Ljava/lang/String;

.field myProgressDialog:Landroid/app/ProgressDialog;

.field private otp:Ljava/lang/String;

.field private otpEditBox1:Landroid/widget/EditText;

.field private otpEditBox2:Landroid/widget/EditText;

.field private otpEditBox3:Landroid/widget/EditText;

.field private otpEditBox4:Landroid/widget/EditText;

.field otp_text_box1:Landroid/widget/TextView;

.field otp_text_box2:Landroid/widget/TextView;

.field otp_text_box3:Landroid/widget/TextView;

.field otp_text_box4:Landroid/widget/TextView;

.field private pstrDeviceId:Ljava/lang/String;

.field private rootOtpLayout:Landroid/widget/LinearLayout;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field sendLoginBody:Lcom/dp/sgp/Model/SendCountryOtpBody;

.field sendOtpBody:Lcom/dp/sgp/Model/SendCountryOtpBody;

.field status:Ljava/lang/String;

.field private tvTSubitle:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tv_resend:Landroid/widget/TextView;

.field updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;-><init>()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->mobileNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->lStrMspin:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->lStrSendOtp:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->lStrToken:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->QustionStatus:I

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000()Landroid/widget/TextView;
    .locals 1

    .line 55
    sget-object v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->countdownTimerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->tv_resend:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 55
    sput-object p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->lStrMspin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$502(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->lStrSendOtp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->mobileNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 55
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->generateRandomSingleDigit()I

    move-result v0

    return v0
.end method

.method private static generateRandomSingleDigit()I
    .locals 2

    .line 331
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x9

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a0219

    .line 335
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0217

    .line 336
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->tvTSubitle:Landroid/widget/TextView;

    const v0, 0x7f0a016e

    .line 337
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->rootOtpLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a013e

    .line 339
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    const v0, 0x7f0a013f

    .line 340
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    const v0, 0x7f0a0140

    .line 341
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    const v0, 0x7f0a0141

    .line 342
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    const v0, 0x7f0a0036

    .line 344
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->btnVerify:Landroid/widget/Button;

    const v0, 0x7f0a00d0

    .line 345
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->layMain:Landroid/widget/LinearLayout;

    return-void
.end method

.method private startTimer(I)V
    .locals 8

    .line 360
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->tv_resend:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    new-instance v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$6;

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$6;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;JJ)V

    .line 377
    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$6;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    sput-object p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private stopCountdown()V
    .locals 1

    .line 352
    sget-object v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 354
    sput-object v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method public Aarti()V
    .locals 3

    .line 884
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 886
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 887
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 888
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 891
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 898
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 900
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 902
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$13;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$13;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public DeviceInfo()V
    .locals 12

    .line 613
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 615
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 616
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 617
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Verifying Otp..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 629
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "regId"

    invoke-virtual {v0, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 631
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "FCM ID NOT FOUND FOR THIS DEVICE"

    .line 638
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 639
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 642
    :cond_1
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 643
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 648
    :goto_0
    :try_start_1
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 649
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    :cond_3
    move-object v4, v2

    .line 653
    :goto_1
    :try_start_2
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 654
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :cond_4
    move-object v5, v2

    .line 658
    :goto_2
    :try_start_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lez v6, :cond_5

    .line 659
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 665
    :goto_3
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 666
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :cond_6
    move-object v7, v2

    .line 671
    :goto_4
    :try_start_4
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 672
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :cond_7
    move-object v8, v2

    .line 677
    :goto_5
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sdk="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 679
    :try_start_6
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_a

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    move-object v6, v2

    goto :goto_9

    :catch_2
    move-exception v1

    move-object v6, v2

    move-object v8, v6

    goto :goto_9

    :catch_3
    move-exception v1

    move-object v6, v2

    goto :goto_8

    :catch_4
    move-exception v1

    move-object v5, v2

    goto :goto_7

    :catch_5
    move-exception v1

    move-object v4, v2

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v3, v2

    move-object v4, v3

    :goto_6
    move-object v5, v4

    :goto_7
    move-object v6, v5

    :goto_8
    move-object v7, v6

    move-object v8, v7

    .line 681
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 684
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DEVICETOKEN :- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\nOS NAME :- "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "android"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\nUSER-ID :- "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v11, "user_id"

    invoke-virtual {v10, v11}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\nFCM-ID :- "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\nBRAND :- "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\nOS-SDK :- "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\nAPP-CURRENT_VERSION :- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\nMAC-ID :- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\nMODEL NAME :- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\nMANUFACTURER :- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v2, v7}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setManufacturer(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v2, v4}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setBrand(Ljava/lang/String;)V

    .line 692
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    const-string v4, "Not Mention"

    invoke-virtual {v2, v4}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setNetwork_type(Ljava/lang/String;)V

    .line 693
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v2, v3}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setIp_address(Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v2, v5}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setOs_version(Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setDevice_token(Ljava/lang/String;)V

    .line 696
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v2, v1}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setApp_version(Ljava/lang/String;)V

    .line 697
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v9}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setPlatform(Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v8}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setModel(Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setFcm_id(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v1, v11}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setUser_id(Ljava/lang/String;)V

    .line 703
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 704
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateDeviceInFo"

    .line 705
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 712
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 713
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$10;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$10;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->update_mobileinfo(Lcom/dp/sgp/Model/UpdateDeviceInFo;Lretrofit/Callback;)V

    return-void
.end method

.method public DindoriYoutube()V
    .locals 3

    .line 1109
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 1111
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1112
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1113
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1116
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 1121
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 1123
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 1124
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$16;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$16;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->dindoriyoutube(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public HomeScreen()V
    .locals 3

    .line 554
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 556
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 557
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 558
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Verifying Otp..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 561
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 567
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 569
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 570
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$9;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$9;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->HomeScreen(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public Login()V
    .locals 3

    .line 495
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 497
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 498
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 499
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Authenticating..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 503
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 504
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendCountryOtpBody;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestBody"

    .line 505
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 509
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 510
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$8;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$8;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Email_Login(Lcom/dp/sgp/Model/SendCountryLoginBody;Lretrofit/Callback;)V

    return-void
.end method

.method public Nitya()V
    .locals 3

    .line 826
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 828
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 829
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 830
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 833
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 839
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 841
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 843
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$12;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public ProductsCommon()V
    .locals 3

    .line 767
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 769
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 770
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 771
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 774
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 781
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 783
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 785
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$11;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$11;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->ProductsCommon(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public ResendTimer()V
    .locals 1

    const-string v0, "1"

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    .line 388
    invoke-direct {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->startTimer(I)V

    return-void
.end method

.method public Sanvar()V
    .locals 3

    .line 1056
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 1058
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1059
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1060
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1064
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 1066
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 1068
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$15;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$15;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public SendCountryOtpBody()V
    .locals 3

    .line 397
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 400
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 401
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Verifying Otp..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 403
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 404
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendOtpBody:Lcom/dp/sgp/Model/SendCountryOtpBody;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestBody"

    .line 405
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 411
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 413
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendOtpBody:Lcom/dp/sgp/Model/SendCountryOtpBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$7;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$7;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->validateEmailOtp(Lcom/dp/sgp/Model/SendCountryOtpBody;Lretrofit/Callback;)V

    return-void
.end method

.method public VibhagDetails()V
    .locals 3

    .line 1005
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 1007
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1008
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1009
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1013
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 1015
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 1017
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$14;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$14;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Vibhag(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 95
    invoke-super {p0, p1}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0023

    .line 101
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->setContentView(I)V

    .line 102
    new-instance p1, Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-direct {p1}, Lcom/dp/sgp/Model/UpdateDeviceInFo;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    .line 103
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->pstrDeviceId:Ljava/lang/String;

    .line 106
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 107
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 108
    new-instance p1, Lcom/dp/sgp/Model/SendCountryOtpBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/SendCountryOtpBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendCountryOtpBody;

    .line 109
    new-instance p1, Lcom/dp/sgp/Model/SendCountryLoginBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/SendCountryLoginBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->REsendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    .line 110
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 111
    new-instance p1, Lcom/dp/sgp/Model/SendCountryOtpBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/SendCountryOtpBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->sendOtpBody:Lcom/dp/sgp/Model/SendCountryOtpBody;

    .line 112
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 113
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Mobile_No"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->mobileNumber:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Mspin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->lStrMspin:Ljava/lang/String;

    :cond_0
    const p1, 0x7f0a0230

    .line 120
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->countdownTimerText:Landroid/widget/TextView;

    const p1, 0x7f0a022d

    .line 121
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->tv_resend:Landroid/widget/TextView;

    const p1, 0x7f0a0142

    .line 123
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box1:Landroid/widget/TextView;

    const p1, 0x7f0a0143

    .line 124
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box2:Landroid/widget/TextView;

    const p1, 0x7f0a0144

    .line 125
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box3:Landroid/widget/TextView;

    const p1, 0x7f0a0145

    .line 126
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box4:Landroid/widget/TextView;

    .line 128
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->generateRandomSingleDigit()I

    move-result p1

    .line 129
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->generateRandomSingleDigit()I

    move-result v0

    .line 130
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->generateRandomSingleDigit()I

    move-result v1

    .line 131
    invoke-static {}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->generateRandomSingleDigit()I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box1:Landroid/widget/TextView;

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

    .line 134
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box3:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otp_text_box4:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->initView()V

    .line 140
    sget-object p1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez p1, :cond_1

    const-string p1, "1"

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    .line 146
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->startTimer(I)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->stopCountdown()V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->tvTSubitle:Landroid/widget/TextView;

    const-string v0, "Please enter the verification code shown below."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v0, "currentopt"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    aput-object v2, p1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    aput-object v2, p1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    aput-object v2, p1, v0

    .line 170
    new-instance v0, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    invoke-direct {v0, v2, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    invoke-direct {v1, v2, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    invoke-direct {v1, v2, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/util/GenericTextWatcher;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox4:Landroid/widget/EditText;

    invoke-direct {v1, v2, p1}, Lcom/dp/sgp/util/GenericTextWatcher;-><init>(Landroid/view/View;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox1:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox2:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->otpEditBox3:Landroid/widget/EditText;

    new-instance v1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$3;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->btnVerify:Landroid/widget/Button;

    new-instance v1, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$4;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;[Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;->tv_resend:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity$5;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryOtpVerificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public saveAarti(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V
    .locals 2

    .line 974
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 975
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 976
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 977
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 978
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 979
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveDindori(Lcom/dp/sgp/Model/YoutubeResponse;Ljava/lang/String;)V
    .locals 2

    .line 1161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1162
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1163
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1164
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1165
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveHome(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Ljava/lang/String;)V
    .locals 2

    .line 944
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 945
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 946
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 947
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 948
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 949
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveNitya(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V
    .locals 2

    .line 964
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 965
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 966
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 967
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 969
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveProductsCommon(Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;Ljava/lang/String;)V
    .locals 2

    .line 954
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 955
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 956
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 957
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 958
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 959
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveSanvar(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V
    .locals 2

    .line 994
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 995
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 996
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 997
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 998
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 999
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveVibhag(Lcom/dp/sgp/Model/CommonResponse;Ljava/lang/String;)V
    .locals 2

    .line 984
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 985
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 986
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 987
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 988
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 989
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
