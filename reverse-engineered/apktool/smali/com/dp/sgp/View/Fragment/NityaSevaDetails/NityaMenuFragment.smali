.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "NityaMenuFragment.java"


# instance fields
.field Channel_id:Ljava/lang/String;

.field aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

.field bhoopaliAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

.field private bhoopalilist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private bhupaliaartisakali800AM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field coursename:Ljava/lang/String;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

.field device_token:Ljava/lang/String;

.field eveningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

.field private eveninglist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field lStrToken:Ljava/lang/String;

.field layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mantravibhag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field message:Ljava/lang/String;

.field morningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

.field private morninglist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private naivadyaAartiSakali1030AM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private naivadyaaartisayankal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field nityaSevaDataResponse:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

.field nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

.field progressDialog:Landroid/app/ProgressDialog;

.field private rv_bhoopali:Landroid/support/v7/widget/RecyclerView;

.field private rv_evening:Landroid/support/v7/widget/RecyclerView;

.field private rv_morning:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field status:Ljava/lang/String;

.field private stotravibhag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->coursename:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->lStrToken:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->device_token:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->user_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    .line 77
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->bhoopalilist:Ljava/util/List;

    .line 78
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->morninglist:Ljava/util/List;

    .line 79
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->eveninglist:Ljava/util/List;

    .line 84
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->naivadyaAartiSakali1030AM:Ljava/util/List;

    .line 85
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->naivadyaaartisayankal:Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->bhupaliaartisakali800AM:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->mantravibhag:Ljava/util/List;

    .line 89
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->stotravibhag:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->mantravibhag:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->mantravibhag:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->stotravibhag:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->stotravibhag:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_bhoopali:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_morning:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public ProductsCommon()V
    .locals 3

    .line 263
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 266
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 267
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 272
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

    .line 274
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 276
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public getNitya(Ljava/lang/String;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 331
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 332
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$4;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)V

    .line 333
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 334
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0085

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->v:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0928\u093f\u0924\u094d\u092f\u0938\u0947\u0935\u093e"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    new-instance p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-direct {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaSevaDataResponse:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    .line 102
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 103
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->device_token:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->user_id:Ljava/lang/String;

    .line 107
    new-instance p1, Lcom/dp/sgp/Model/nityaseva/ProductData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    .line 108
    new-instance p1, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    invoke-direct {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    .line 110
    new-instance p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    .line 111
    new-instance p1, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    invoke-direct {p1}, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->bhoopalilist:Ljava/util/List;

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->morninglist:Ljava/util/List;

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->eveninglist:Ljava/util/List;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->mantravibhag:Ljava/util/List;

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->stotravibhag:Ljava/util/List;

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->naivadyaAartiSakali1030AM:Ljava/util/List;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->naivadyaaartisayankal:Ljava/util/List;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->bhupaliaartisakali800AM:Ljava/util/List;

    .line 125
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0173

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_bhoopali:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    .line 131
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 133
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->v:Landroid/view/View;

    const p3, 0x7f0a0178

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_morning:Landroid/support/v7/widget/RecyclerView;

    .line 134
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->v:Landroid/view/View;

    const p3, 0x7f0a0174

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_evening:Landroid/support/v7/widget/RecyclerView;

    .line 137
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 139
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 140
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_bhoopali:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 143
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_morning:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 145
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 146
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_evening:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 149
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_bhoopali:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_bhoopali:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 178
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_morning:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_morning:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    const-string p1, "Nitya"

    .line 234
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getNitya(Ljava/lang/String;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaSevaDataResponse:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    .line 236
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaSevaDataResponse:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    .line 239
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->getAartisangrah()Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->aartisangrah:Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;

    .line 240
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->getNityaseva()Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    .line 242
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->getMantravibhag()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->mantravibhag:Ljava/util/List;

    .line 243
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->nityaseva:Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityasevaMMainResponse;->getStotravibhag()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->stotravibhag:Ljava/util/List;

    .line 246
    new-instance p1, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->mantravibhag:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->bhoopaliAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    .line 247
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_bhoopali:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 249
    new-instance p1, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->stotravibhag:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/AartiSanghraAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->morningAdapter:Lcom/dp/sgp/Adapters/AartiSanghraAdapter;

    .line 250
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->rv_morning:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;->v:Landroid/view/View;

    return-object p1
.end method
