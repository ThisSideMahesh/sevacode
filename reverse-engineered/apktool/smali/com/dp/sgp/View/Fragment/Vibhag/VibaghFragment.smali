.class public Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;
.super Landroid/support/v4/app/Fragment;
.source "VibaghFragment.java"


# instance fields
.field Type:Ljava/lang/String;

.field androidGridView:Landroid/widget/GridView;

.field connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field dataresponse:Lcom/dp/sgp/Model/CommonResponse;

.field device_token:Ljava/lang/String;

.field gridViewImageId:[I

.field gridViewString:[Ljava/lang/String;

.field id:Ljava/lang/String;

.field lStrLink:Ljava/lang/String;

.field mAdapter:Lcom/dp/sgp/Adapters/VibhagAdapterArticles;

.field message:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field rvArticles:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field snapHelper:Landroid/support/v7/widget/SnapHelper;

.field status:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 48
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v1, "\u092a\u094d\u0930\u0936\u094d\u0928\u094b\u0924\u094d\u0924\u0930"

    const-string v2, "\u0917\u0930\u094d\u092d\u0938\u0902\u0938\u094d\u0915\u093e\u0930 "

    const-string v3, "\u092c\u093e\u0932\u0938\u0902\u0938\u094d\u0915\u093e\u0930"

    const-string v4, "\u092f\u0941\u0935\u093e \u092a\u094d\u0930\u092c\u094b\u0927\u0928"

    const-string v5, "\u0906\u092f \u091f\u0940"

    const-string v6, "\u092a\u0930\u094d\u092f\u093e\u0935\u0930\u0923"

    const-string v7, "\u092d\u093e\u0930\u0924\u0940\u092f \u0938\u0902\u0938\u094d\u0915\u0943\u0924\u0940"

    const-string v8, "\u0935\u093f\u0935\u093e\u0939\u0938\u0902\u0938\u094d\u0915\u093e\u0930"

    const-string v9, "\u0935\u0947\u0926 \u0938\u0902\u0936\u094b\u0927\u0928"

    const-string v10, "\u092a\u094d\u0930\u0936\u093f\u0915\u094d\u0937\u0923"

    const-string v11, "\u092a\u094d\u0930\u0936\u093e\u0938\u0915\u093f\u092f"

    const-string v12, "\u0938\u094d\u0935\u092f\u0902\u0930\u094b\u091c\u0917\u093e\u0930"

    const-string v13, "\u092a\u094d\u0930\u091a\u093e\u0930 \u092a\u094d\u0930\u0938\u093e\u0930"

    const-string v14, "\u0935\u093e\u0938\u094d\u0924\u0941\u0936\u093e\u0938\u094d\u0924\u094d\u0930"

    const-string v15, "\u0915\u0943\u0937\u0940 \u0935 \u092a\u0936\u0941\u0917\u094b\u0935\u0902\u0936"

    const-string v16, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926\u093f\u0915"

    const-string v17, "\u0915\u093e\u092f\u0926\u0947\u0935\u093f\u0937\u092f\u0915"

    const-string v18, "\u0926\u0947\u0936\u0935\u093f\u0926\u0947\u0936"

    .line 60
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->gridViewString:[Ljava/lang/String;

    const/16 v1, 0x12

    new-array v1, v1, [I

    .line 81
    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->gridViewImageId:[I

    const-string v1, ""

    .line 107
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->device_token:Ljava/lang/String;

    .line 108
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->user_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->lStrLink:Ljava/lang/String;

    const-string v2, "0"

    .line 112
    iput-object v2, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->Type:Ljava/lang/String;

    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->id:Ljava/lang/String;

    const/4 v1, 0x0

    .line 113
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataList:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x7f080189
        0x7f08017d
        0x7f08017b
        0x7f080193
        0x7f080180
        0x7f080185
        0x7f08018d
        0x7f080192
        0x7f080191
        0x7f080188
        0x7f080187
        0x7f08018c
        0x7f080186
        0x7f080190
        0x7f080182
        0x7f08017a
        0x7f080181
        0x7f08017c
    .end array-data
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataList:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public VibhagDetails()V
    .locals 3

    .line 284
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 286
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 287
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 288
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 293
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

    .line 295
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 297
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Vibhag(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public getvibhag(Ljava/lang/String;)Lcom/dp/sgp/Model/CommonResponse;
    .locals 3

    .line 368
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 370
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    new-instance v0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)V

    .line 372
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 373
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonResponse;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0098

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->v:Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0935\u093f\u092d\u093e\u0917"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    new-instance p1, Lcom/dp/sgp/Model/CommonResponse;

    invoke-direct {p1}, Lcom/dp/sgp/Model/CommonResponse;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataresponse:Lcom/dp/sgp/Model/CommonResponse;

    .line 128
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0170

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    .line 129
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 131
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 132
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 134
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 135
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    .line 137
    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->device_token:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->user_id:Ljava/lang/String;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataList:Ljava/util/List;

    .line 141
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 146
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 153
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->v:Landroid/view/View;

    const p2, 0x7f0a008f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->androidGridView:Landroid/widget/GridView;

    .line 207
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    const-string p1, "Vibhag"

    .line 241
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getvibhag(Ljava/lang/String;)Lcom/dp/sgp/Model/CommonResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataresponse:Lcom/dp/sgp/Model/CommonResponse;

    .line 242
    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonResponse;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 254
    new-instance p1, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->dataList:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/VibaghhDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 256
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 257
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 259
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 260
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghFragment;->v:Landroid/view/View;

    return-object p1
.end method
