.class public Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ProductsFragment.java"

# interfaces
.implements Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;


# instance fields
.field androidGridView:Landroid/widget/GridView;

.field private ayurveda:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field ayurvedaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

.field banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

.field device_token:Ljava/lang/String;

.field private granthasahitya:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field granthasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

.field gridViewString:[Ljava/lang/String;

.field private krushidhan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field krushidhanAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

.field private lokpriya:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field lokpriyaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

.field message:Ljava/lang/String;

.field private myAdapter:Lcom/dp/sgp/Adapters/MyAdapter;

.field private poojasahitya:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field poojasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

.field productCommonResponse:Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;

.field progressDialog:Landroid/app/ProgressDialog;

.field rv_aaruvedh_utpadan:Landroid/support/v7/widget/RecyclerView;

.field rv_grantha_sahitya:Landroid/support/v7/widget/RecyclerView;

.field rv_krishi_dhan:Landroid/support/v7/widget/RecyclerView;

.field rv_lokpriya:Landroid/support/v7/widget/RecyclerView;

.field rv_pooja_sahitya:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field private sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

.field sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

.field status:Ljava/lang/String;

.field title:Landroid/widget/TextView;

.field title1:Landroid/widget/TextView;

.field title2:Landroid/widget/TextView;

.field title3:Landroid/widget/TextView;

.field title4:Landroid/widget/TextView;

.field title5:Landroid/widget/TextView;

.field title6:Landroid/widget/TextView;

.field title8:Landroid/widget/TextView;

.field title_lag:Landroid/widget/ImageView;

.field title_lag1:Landroid/widget/ImageView;

.field title_lag2:Landroid/widget/ImageView;

.field title_lag3:Landroid/widget/ImageView;

.field title_lag4:Landroid/widget/ImageView;

.field title_lag5:Landroid/widget/ImageView;

.field title_lag6:Landroid/widget/ImageView;

.field title_lag8:Landroid/widget/ImageView;

.field txt_aurvedh_view:Landroid/widget/TextView;

.field txt_grantha_view:Landroid/widget/TextView;

.field txt_krishi_view:Landroid/widget/TextView;

.field txt_lokpriya_view:Landroid/widget/TextView;

.field txt_pooja_view:Landroid/widget/TextView;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "\u0938\u0930\u094d\u0935\u093e\u0924 \u0932\u094b\u0915\u092a\u094d\u0930\u093f\u092f"

    const-string v1, "\u0938\u0902\u092a\u0941\u0930\u094d\u0923 \u092a\u0939\u093e"

    const-string v2, "\u092a\u0942\u091c\u093e \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    const-string v3, "\u0938\u0902\u092a\u0941\u0930\u094d\u0923 \u092a\u0939\u093e"

    const-string v4, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926\u093f\u0915 \u0909\u0924\u094d\u092a\u093e\u0926\u0928\u0947"

    const-string v5, "\u0938\u0902\u092a\u0941\u0930\u094d\u0923 \u092a\u0939\u093e"

    .line 63
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->gridViewString:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    const-string v1, ""

    .line 76
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->device_token:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->user_id:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    .line 93
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriya:Ljava/util/List;

    .line 94
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahitya:Ljava/util/List;

    .line 95
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurveda:Ljava/util/List;

    .line 96
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahitya:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhan:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriya:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriya:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahitya:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahitya:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahitya:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahitya:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurveda:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurveda:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhan:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhan:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Model/nityaseva/ProductData;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    return-object p0
.end method

.method static synthetic access$502(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Lcom/dp/sgp/Model/nityaseva/ProductData;)Lcom/dp/sgp/Model/nityaseva/ProductData;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Adapters/SliderAdapterExample;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    return-object p0
.end method


# virtual methods
.method public DetailedViewClicked(Lcom/dp/sgp/Model/HomeResponse/Banner;)V
    .locals 3

    .line 735
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    const-string v2, "\u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917\u093e\u091a\u0947 \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    .line 737
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "media_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;-><init>()V

    .line 740
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 742
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008c

    .line 744
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 745
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 746
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public ProductsCommon()V
    .locals 3

    .line 531
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 533
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 534
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 535
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 540
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

    .line 542
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 544
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->ProductsCommon(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public getBanner(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 522
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 523
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 524
    new-instance v0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$12;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$12;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    .line 525
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 526
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getProduct(Ljava/lang/String;)Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;
    .locals 3

    .line 751
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 752
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 753
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 754
    new-instance v0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$14;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$14;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    .line 755
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 756
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d008c

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917\u093e\u091a\u0947 \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a00a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/autoimageslider/SliderView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    .line 114
    new-instance p1, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;

    invoke-direct {p1}, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->productCommonResponse:Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0176

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_krishi_dhan:Landroid/support/v7/widget/RecyclerView;

    .line 117
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0171

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_aaruvedh_utpadan:Landroid/support/v7/widget/RecyclerView;

    .line 118
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0179

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_pooja_sahitya:Landroid/support/v7/widget/RecyclerView;

    .line 119
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0177

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_lokpriya:Landroid/support/v7/widget/RecyclerView;

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0175

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_grantha_sahitya:Landroid/support/v7/widget/RecyclerView;

    .line 122
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 123
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_krishi_dhan:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 126
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_aaruvedh_utpadan:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 128
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 129
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_pooja_sahitya:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 131
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 132
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_lokpriya:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 133
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 134
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_grantha_sahitya:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 137
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title1:Landroid/widget/TextView;

    .line 138
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title:Landroid/widget/TextView;

    .line 139
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01dd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title2:Landroid/widget/TextView;

    .line 140
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title3:Landroid/widget/TextView;

    .line 141
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title4:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title8:Landroid/widget/TextView;

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title5:Landroid/widget/TextView;

    .line 144
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title6:Landroid/widget/TextView;

    .line 146
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0254

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_lokpriya_view:Landroid/widget/TextView;

    .line 147
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0259

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_pooja_view:Landroid/widget/TextView;

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0251

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_grantha_view:Landroid/widget/TextView;

    .line 149
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0248

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_aurvedh_view:Landroid/widget/TextView;

    .line 150
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0252

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_krishi_view:Landroid/widget/TextView;

    .line 153
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag1:Landroid/widget/ImageView;

    .line 154
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag:Landroid/widget/ImageView;

    .line 155
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag2:Landroid/widget/ImageView;

    .line 156
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag3:Landroid/widget/ImageView;

    .line 157
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag4:Landroid/widget/ImageView;

    .line 158
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag8:Landroid/widget/ImageView;

    .line 159
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag5:Landroid/widget/ImageView;

    .line 160
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a01ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->title_lag6:Landroid/widget/ImageView;

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriya:Ljava/util/List;

    .line 163
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahitya:Ljava/util/List;

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurveda:Ljava/util/List;

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahitya:Ljava/util/List;

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhan:Ljava/util/List;

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    .line 170
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a008f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->androidGridView:Landroid/widget/GridView;

    .line 172
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 173
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 175
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->device_token:Ljava/lang/String;

    .line 176
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->user_id:Ljava/lang/String;

    .line 177
    new-instance p1, Lcom/dp/sgp/Model/nityaseva/ProductData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    .line 179
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 187
    new-instance p1, Lcom/dp/sgp/Adapters/SliderAdapterExample;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/dp/sgp/Adapters/SliderAdapterExample;-><init>(Landroid/content/Context;Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    .line 189
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setOnIndicatorClickListener(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;)V

    .line 224
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_lokpriya_view:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_pooja_view:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$3;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_grantha_view:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$4;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$4;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_aurvedh_view:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$5;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$5;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->txt_krishi_view:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$6;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$6;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_lokpriya:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_lokpriya:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$7;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$7;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 352
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_krishi_dhan:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_krishi_dhan:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$8;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$8;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 382
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_aaruvedh_utpadan:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_aaruvedh_utpadan:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$9;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$9;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 412
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_pooja_sahitya:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_pooja_sahitya:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$10;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$10;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 440
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_grantha_sahitya:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_grantha_sahitya:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$11;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$11;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    const-string p1, "Products"

    .line 470
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getProduct(Ljava/lang/String;)Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->productCommonResponse:Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;->getData()Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    .line 476
    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getLokpriya()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriya:Ljava/util/List;

    .line 477
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getPoojasahitya()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahitya:Ljava/util/List;

    .line 478
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getAyurveda()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurveda:Ljava/util/List;

    .line 479
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getGranthasahitya()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahitya:Ljava/util/List;

    .line 480
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getKrushidhan()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhan:Ljava/util/List;

    .line 481
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->dataList:Lcom/dp/sgp/Model/nityaseva/ProductData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getProductBanners()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    .line 483
    new-instance p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriya:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriyaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 484
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_lokpriya:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 486
    new-instance p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahitya:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 487
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_pooja_sahitya:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 490
    new-instance p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurveda:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurvedaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 491
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_aaruvedh_utpadan:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 493
    new-instance p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhan:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhanAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 494
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_krishi_dhan:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 497
    new-instance p1, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahitya:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 498
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_grantha_sahitya:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 501
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V

    .line 503
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorAnimation(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    .line 504
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object p2, Lcom/dp/sgp/autoimageslider/SliderAnimations;->SIMPLETRANSFORMATION:Lcom/dp/sgp/autoimageslider/SliderAnimations;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderTransformAnimation(Lcom/dp/sgp/autoimageslider/SliderAnimations;)V

    .line 505
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycleDirection(I)V

    .line 506
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorSelectedColor(I)V

    .line 507
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorUnselectedColor(I)V

    .line 508
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setScrollTimeInSec(I)V

    .line 509
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycle(Z)V

    .line 510
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/SliderView;->startAutoCycle()V

    .line 513
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->renewItems(Ljava/util/List;)V

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->v:Landroid/view/View;

    return-object p1
.end method

.method public saveProductBanner(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 724
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 726
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 727
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 729
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
