.class public Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AbjaChandiDetailsFragment.java"


# instance fields
.field BodylistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;"
        }
    .end annotation
.end field

.field private SevaModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;"
        }
    .end annotation
.end field

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field edt_BlanksReceived:Landroid/widget/EditText;

.field lBliSelected:Ljava/lang/Boolean;

.field lBliSelected1:Ljava/lang/Boolean;

.field lBliSelected2:Ljava/lang/Boolean;

.field lStrQQty:Ljava/lang/String;

.field lyt_main:Landroid/widget/LinearLayout;

.field mAdapter:Lcom/dp/sgp/Adapters/AbjaaSevaAdapter;

.field message:Ljava/lang/String;

.field planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

.field progressDialog:Landroid/app/ProgressDialog;

.field radia_id2:Landroid/widget/RadioButton;

.field radia_id3:Landroid/widget/RadioButton;

.field radioButton:Landroid/widget/RadioButton;

.field private radioGroup:Landroid/widget/RadioGroup;

.field rvArticles:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

.field status:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lBliSelected:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lBliSelected1:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lBliSelected2:Ljava/lang/Boolean;

    const-string v0, "1"

    .line 63
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->type:Ljava/lang/String;

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->device_token:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->user_id:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lStrQQty:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->BodylistList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method


# virtual methods
.method public Submitabjachandi()V
    .locals 3

    .line 310
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 313
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 314
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 317
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendCommonBody"

    .line 319
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
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

    .line 325
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 327
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    new-instance v2, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->submitAbjachandi(Lcom/dp/sgp/Model/SubmitAbjaData;Lretrofit/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d006c

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0905\u092c\u094d\u091c\u093e\u091a\u0902\u0921\u0940 \u0938\u0947\u0935\u093e \u0905\u0902\u0924\u0930\u094d\u0917\u0924 \u0928\u094b\u0902\u0926\u0923\u0940"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->SevaModels:Ljava/util/List;

    .line 89
    new-instance p1, Lcom/dp/sgp/Model/SubmitAbjaData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/SubmitAbjaData;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->BodylistList:Ljava/util/List;

    .line 91
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->device_token:Ljava/lang/String;

    .line 92
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->user_id:Ljava/lang/String;

    .line 93
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/SubmitAbjaData;->setDevice_token(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/SubmitAbjaData;->setUser_id(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0078

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->edt_BlanksReceived:Landroid/widget/EditText;

    .line 98
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a00f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lyt_main:Landroid/widget/LinearLayout;

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "name"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->edt_BlanksReceived:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p3, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->edt_BlanksReceived:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 p1, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const-string v0, "newsampleDescription.json"

    invoke-static {p3, v0}, Lcom/dp/sgp/util/AssestParser;->getJsonFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "data"

    .line 114
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 116
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_0
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    .line 123
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)V

    .line 124
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 126
    invoke-virtual {p3, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->SevaModels:Ljava/util/List;

    .line 129
    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "appUpdateBody "

    .line 130
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->SevaModels:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 135
    new-instance p1, Lcom/dp/sgp/Adapters/PlanningAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->SevaModels:Ljava/util/List;

    invoke-direct {p1, p3, v0}, Lcom/dp/sgp/Adapters/PlanningAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    .line 138
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 139
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 141
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 142
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 144
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    const p3, 0x7f0a0091

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->radioGroup:Landroid/widget/RadioGroup;

    .line 151
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    const p3, 0x7f0a015a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->radioButton:Landroid/widget/RadioButton;

    .line 152
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    const p3, 0x7f0a015b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->radia_id2:Landroid/widget/RadioButton;

    .line 153
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    const p3, 0x7f0a015c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->radia_id3:Landroid/widget/RadioButton;

    .line 154
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 155
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lBliSelected:Ljava/lang/Boolean;

    .line 158
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance p2, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 188
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lyt_main:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->v:Landroid/view/View;

    return-object p1
.end method
