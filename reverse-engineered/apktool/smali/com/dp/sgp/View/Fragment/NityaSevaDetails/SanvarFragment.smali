.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;
.super Landroid/support/v4/app/Fragment;
.source "SanvarFragment.java"


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

.field private rvArticles:Landroid/support/v7/widget/RecyclerView;

.field private rv_evening:Landroid/support/v7/widget/RecyclerView;

.field private rv_morning:Landroid/support/v7/widget/RecyclerView;

.field sanwar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

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

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->coursename:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->lStrToken:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->device_token:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->user_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    .line 80
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->bhoopalilist:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->morninglist:Ljava/util/List;

    .line 82
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->eveninglist:Ljava/util/List;

    .line 87
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->naivadyaAartiSakali1030AM:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->naivadyaaartisayankal:Ljava/util/List;

    .line 89
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->bhupaliaartisakali800AM:Ljava/util/List;

    .line 91
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->mantravibhag:Ljava/util/List;

    .line 92
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->stotravibhag:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public ProductsCommon()V
    .locals 3

    .line 181
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 184
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 185
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 190
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

    .line 192
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 194
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public getsanvar(Ljava/lang/String;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 248
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)V

    .line 250
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 251
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d008d

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->v:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0938\u0923\u0935\u093e\u0930"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    new-instance p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-direct {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->nityaSevaDataResponse:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0170

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    .line 105
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 107
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 108
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 111
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 112
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->device_token:Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->user_id:Ljava/lang/String;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sanwar:Ljava/util/List;

    .line 118
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    const-string p1, "sanvar"

    .line 124
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getsanvar(Ljava/lang/String;)Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->nityaSevaDataResponse:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    .line 125
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->nityaSevaDataResponse:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getData()Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->data:Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;

    .line 129
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaData;->getSanwar()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sanwar:Ljava/util/List;

    .line 131
    new-instance p1, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->sanwar:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 133
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 134
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 136
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 137
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 176
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;->v:Landroid/view/View;

    return-object p1
.end method
