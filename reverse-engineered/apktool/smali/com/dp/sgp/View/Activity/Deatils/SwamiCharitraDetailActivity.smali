.class public Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SwamiCharitraDetailActivity.java"


# instance fields
.field Description:Ljava/lang/String;

.field LstrID:Ljava/lang/String;

.field Status:Ljava/lang/String;

.field Title:Ljava/lang/String;

.field content:Landroid/widget/LinearLayout;

.field counter:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field img_Overflow:Landroid/widget/ImageView;

.field intValue:I

.field lyt_main:Landroid/widget/LinearLayout;

.field private message:Ljava/lang/String;

.field panelIconLeft:Landroid/widget/LinearLayout;

.field panelIconLeftreverse:Landroid/widget/LinearLayout;

.field panelIconRight:Landroid/widget/LinearLayout;

.field private progressBar:Landroid/view/View;

.field progressDialog:Landroid/app/ProgressDialog;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

.field status:Ljava/lang/String;

.field t1:Landroid/speech/tts/TextToSpeech;

.field textView2:Landroid/widget/TextView;

.field transaction:Landroid/support/v4/app/FragmentTransaction;

.field txtHeading:Landroid/widget/TextView;

.field txt_completed:Landroid/widget/TextView;

.field user_id:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->intValue:I

    iput v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->counter:I

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->LstrID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->Title:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->Description:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->Status:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->message:Ljava/lang/String;

    return-object p1
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 590
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    .line 591
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 592
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 593
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public Refreshsaramrut()V
    .locals 3

    .line 514
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 517
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 518
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 523
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

    .line 525
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 527
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$9;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$9;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->saramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public Submitabjachandi()V
    .locals 3

    .line 450
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 452
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 453
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 454
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 458
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendSubmitBody"

    .line 460
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
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

    .line 466
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 468
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$8;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$8;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->submitSaramrut(Lcom/dp/sgp/Model/saramrut/SendSubmitBody;Lretrofit/Callback;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 600
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003d

    .line 76
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->setContentView(I)V

    .line 78
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-direct {p1, p0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 79
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 80
    new-instance p1, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->data:Ljava/util/List;

    .line 83
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v0, "device_token"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setDevice_token(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setUser_id(Ljava/lang/String;)V

    .line 91
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-direct {p1, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->t1:Landroid/speech/tts/TextToSpeech;

    .line 103
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->intValue:I

    .line 106
    iput p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->counter:I

    const p1, 0x7f0a0053

    .line 108
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->content:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00b4

    .line 109
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->img_Overflow:Landroid/widget/ImageView;

    const p1, 0x7f0a0269

    .line 110
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    const p1, 0x7f0a0155

    .line 111
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressBar:Landroid/view/View;

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 118
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 119
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 122
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 123
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    const v2, 0x7f080298

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 124
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 128
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 129
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 130
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const p1, 0x7f0a01c6

    .line 135
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->textView2:Landroid/widget/TextView;

    const p1, 0x7f0a0237

    .line 136
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txtHeading:Landroid/widget/TextView;

    const p1, 0x7f0a024d

    .line 137
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const p1, 0x7f0a0149

    .line 139
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->panelIconLeft:Landroid/widget/LinearLayout;

    const p1, 0x7f0a014c

    .line 140
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->panelIconRight:Landroid/widget/LinearLayout;

    const p1, 0x7f0a014a

    .line 141
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v0, 0x7f08013e

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 146
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->panelIconLeft:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->panelIconRight:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$4;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->img_Overflow:Landroid/widget/ImageView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$6;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->saramrut()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->t1:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 371
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->t1:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 373
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public saramrut()V
    .locals 3

    .line 378
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 381
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 382
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 387
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

    .line 389
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 391
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$7;-><init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->saramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method
