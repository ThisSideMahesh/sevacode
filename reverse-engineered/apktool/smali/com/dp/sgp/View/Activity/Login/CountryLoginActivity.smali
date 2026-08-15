.class public Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;
.super Lcom/dp/sgp/View/Activity/Home/BaseActivity;
.source "CountryLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CountryLoginActivity"


# instance fields
.field private btnLogin:Landroid/widget/Button;

.field private btnRetry:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private coordinatorlayout:Landroid/support/design/widget/CoordinatorLayout;

.field data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private errorMessageParentView:Landroid/view/View;

.field lStrMspin:Ljava/lang/String;

.field private layMain:Landroid/widget/LinearLayout;

.field private layoutNoInternet:Landroid/widget/LinearLayout;

.field message:Ljava/lang/String;

.field private mobileEditText:Landroid/support/design/widget/TextInputEditText;

.field private mobileTextInput:Landroid/support/design/widget/TextInputLayout;

.field myProgressDialog:Landroid/app/ProgressDialog;

.field private progressbar:Landroid/widget/ProgressBar;

.field pstrDeviceId:Ljava/lang/String;

.field private rootLayout:Landroid/widget/RelativeLayout;

.field sendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

.field status:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private textView_chnagecountry:Landroid/widget/TextView;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private tvPrivacyPolicy:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;-><init>()V

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->lStrMspin:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->pstrDeviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Landroid/support/design/widget/TextInputEditText;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->mobileEditText:Landroid/support/design/widget/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0a01ca

    .line 224
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->textView_chnagecountry:Landroid/widget/TextView;

    const v0, 0x7f0a020f

    .line 225
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->tvPrivacyPolicy:Landroid/widget/TextView;

    const v0, 0x7f0a0158

    .line 226
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 228
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->tvPrivacyPolicy:Landroid/widget/TextView;

    const-string v1, "<font color=\"#000000\">By proceeding you agree to our </font><font color=\"#122C91\"> <u>Privacy Policy </u> </font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0056

    .line 231
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->coordinatorlayout:Landroid/support/design/widget/CoordinatorLayout;

    const v0, 0x7f0a016d

    .line 232
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->rootLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01c5

    .line 233
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->textView:Landroid/widget/TextView;

    const v0, 0x7f0a0219

    .line 234
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a010b

    .line 235
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->mobileTextInput:Landroid/support/design/widget/TextInputLayout;

    const v0, 0x7f0a010a

    .line 236
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->mobileEditText:Landroid/support/design/widget/TextInputEditText;

    const v0, 0x7f0a0035

    .line 237
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->btnLogin:Landroid/widget/Button;

    const v0, 0x7f0a00d0

    .line 238
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->layMain:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public Login()V
    .locals 3

    .line 248
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 251
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 252
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Authenticating..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 263
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

    .line 265
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 267
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$4;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Email_Login(Lcom/dp/sgp/Model/SendCountryLoginBody;Lretrofit/Callback;)V

    return-void
.end method

.method public isValid()Z
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->mobileEditText:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/dp/sgp/View/Activity/Home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0022

    .line 74
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->pstrDeviceId:Ljava/lang/String;

    .line 79
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    .line 80
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->initView()V

    .line 81
    new-instance p1, Lcom/dp/sgp/Model/SendCountryLoginBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/SendCountryLoginBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->sendLoginBody:Lcom/dp/sgp/Model/SendCountryLoginBody;

    .line 83
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 84
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->btnLogin:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->tvPrivacyPolicy:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->textView_chnagecountry:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
