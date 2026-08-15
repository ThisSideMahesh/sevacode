.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;
.super Landroid/support/v4/app/Fragment;
.source "DetailCharitraFragment.java"


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
            "Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

.field device_token:Ljava/lang/String;

.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private freshdatalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field img_Overflow:Landroid/widget/ImageView;

.field intValue:I

.field lyt_main:Landroid/widget/LinearLayout;

.field private message:Ljava/lang/String;

.field panelIconLeft:Landroid/widget/LinearLayout;

.field panelIconLeftreverse:Landroid/widget/LinearLayout;

.field panelIconRight:Landroid/widget/LinearLayout;

.field parayancounter:I

.field private progressBar:Landroid/view/View;

.field progressDialog:Landroid/app/ProgressDialog;

.field rootview:Landroid/view/View;

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

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->intValue:I

    iput v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    iput v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->parayancounter:I

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->LstrID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->Title:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->Description:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->Status:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->device_token:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->user_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->freshdatalist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->freshdatalist:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->message:Ljava/lang/String;

    return-object p1
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;
    .locals 1

    .line 57
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;-><init>()V

    .line 58
    invoke-virtual {v0, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public Refreshsaramrut()V
    .locals 3

    .line 979
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 981
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 982
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 983
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 988
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

    .line 990
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 992
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$8;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->saramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public Submitabjachandi()V
    .locals 3

    .line 915
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 917
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 918
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 919
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 923
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 924
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendSubmitBody"

    .line 925
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
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

    .line 931
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 933
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$7;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->submitSaramrut(Lcom/dp/sgp/Model/saramrut/SendSubmitBody;Lretrofit/Callback;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->intValue:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0d007e

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a01c6

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->textView2:Landroid/widget/TextView;

    .line 112
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a0237

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txtHeading:Landroid/widget/TextView;

    .line 113
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a024d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a0149

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->panelIconLeft:Landroid/widget/LinearLayout;

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a014c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->panelIconRight:Landroid/widget/LinearLayout;

    .line 117
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a014a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a0053

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->content:Landroid/widget/LinearLayout;

    .line 121
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a00b4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->img_Overflow:Landroid/widget/ImageView;

    .line 122
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a0269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    .line 123
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    const p2, 0x7f0a0155

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressBar:Landroid/view/View;

    .line 126
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    const p2, 0x7f08013e

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 128
    new-instance p1, Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    .line 129
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 130
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 131
    new-instance p1, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    .line 133
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p3, "parayancount"

    invoke-virtual {p1, p3}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    .line 135
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 136
    iput v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->parayancounter:I

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 139
    iput p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->parayancounter:I

    .line 142
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->freshdatalist:Ljava/util/List;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->data:Ljava/util/List;

    .line 144
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p3, "device_token"

    invoke-virtual {p1, p3}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->device_token:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p3, "user_id"

    invoke-virtual {p1, p3}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->user_id:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setDevice_token(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setUser_id(Ljava/lang/String;)V

    .line 152
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    new-instance v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-direct {p1, p3, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->t1:Landroid/speech/tts/TextToSpeech;

    .line 166
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object p1

    .line 168
    iget p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->intValue:I

    iput p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    if-eqz p1, :cond_2

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 174
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->data:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->data:Ljava/util/List;

    iget p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->data:Ljava/util/List;

    iget v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 184
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->data:Ljava/util/List;

    iget p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p3, "1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    const p2, 0x7f08013d

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 205
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 206
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 207
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 209
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 210
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 211
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 213
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 214
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    const p3, 0x7f080298

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 215
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 219
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 220
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 221
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 228
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->panelIconRight:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$3;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->img_Overflow:Landroid/widget/ImageView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$5;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$5;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->rootview:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->t1:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 836
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->t1:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 838
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public saramrut()V
    .locals 3

    .line 843
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 845
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 846
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 847
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 852
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

    .line 854
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 856
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$6;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$6;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->saramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method
