.class public Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;
.super Landroid/support/v4/app/Fragment;
.source "HomeFragmenFragment.java"

# interfaces
.implements Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;


# static fields
.field public static final NAME:Ljava/lang/String; = "HomeFragmenFragment"


# instance fields
.field VibhaggridViewImageId:[I

.field VibhaggridViewString:[Ljava/lang/String;

.field androidGridView:Landroid/widget/GridView;

.field banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field private dindori_youtube_horizontalrecyclerView:Landroid/support/v7/widget/RecyclerView;

.field dindoriyoutubeResponse:Lcom/dp/sgp/Model/YoutubeResponse;

.field dindoriyoutubelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Youtube;",
            ">;"
        }
    .end annotation
.end field

.field dinvishesh:Landroid/widget/TextView;

.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field gridViewString:[Ljava/lang/String;

.field homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

.field message:Ljava/lang/String;

.field newVibhagAdapter:Lcom/dp/sgp/Adapters/NewVibhagAdapter;

.field panchangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Panchang;",
            ">;"
        }
    .end annotation
.end field

.field private productsbanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field sevamarg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Sevamarg;",
            ">;"
        }
    .end annotation
.end field

.field private sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

.field sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

.field status:Ljava/lang/String;

.field suvichar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Suvichar;",
            ">;"
        }
    .end annotation
.end field

.field transaction:Landroid/support/v4/app/FragmentTransaction;

.field tv_added_on_sevamarg:Landroid/widget/TextView;

.field tv_ashle:Landroid/widget/TextView;

.field tv_bhadrapad:Landroid/widget/TextView;

.field tv_datetime:Landroid/widget/TextView;

.field tv_desc_suvichar:Landroid/widget/TextView;

.field tv_description_sevamarg:Landroid/widget/TextView;

.field tv_dindori_see_all:Landroid/widget/TextView;

.field tv_krishnakunj:Landroid/widget/TextView;

.field tv_nakshatra:Landroid/widget/TextView;

.field tv_panchangs_title:Landroid/widget/TextView;

.field tv_rahukal:Landroid/widget/TextView;

.field tv_see_all:Landroid/widget/TextView;

.field tv_shubharambh:Landroid/widget/TextView;

.field tv_tithi:Landroid/widget/TextView;

.field tv_title_sevamarg:Landroid/widget/TextView;

.field tv_title_suvichar:Landroid/widget/TextView;

.field tv_var:Landroid/widget/TextView;

.field tv_vibhag_see_all:Landroid/widget/TextView;

.field txt_Weather:Landroid/widget/TextView;

.field txt_maal_count:Landroid/widget/TextView;

.field txt_seva_nav:Landroid/widget/TextView;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field vibhag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Vibhag;",
            ">;"
        }
    .end annotation
.end field

.field youtubeVideoAdapter:Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

.field youtubelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Youtube;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 67
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v1, "\u0938\u0930\u094d\u0935\u0924 \u0932\u094b\u0915\u092a\u094d\u0930\u093f\u092f"

    const-string v2, "\u0938\u0902\u092a\u0942\u0930\u094d\u0923 \u092a\u0939\u093e"

    const-string v3, "\u092a\u0942\u091c\u093e \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    const-string v4, "\u0938\u0902\u092a\u0942\u0930\u094d\u0923 \u092a\u0939\u093e"

    const-string v5, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926"

    const-string v6, "\u0938\u0902\u092a\u0942\u0930\u094d\u0923 \u092a\u0939\u093e"

    .line 72
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->gridViewString:[Ljava/lang/String;

    const-string v2, "\u092a\u094d\u0930\u0936\u094d\u0928\u094b\u0924\u094d\u0924\u0930"

    const-string v3, "\u0917\u0930\u094d\u092d\u0938\u0902\u0938\u094d\u0915\u093e\u0930 "

    const-string v4, "\u092c\u093e\u0932\u0938\u0902\u0938\u094d\u0915\u093e\u0930"

    const-string v5, "\u092f\u0941\u0935\u093e \u092a\u094d\u0930\u092c\u094b\u0927\u0928"

    const-string v6, "\u0906\u092f \u091f\u0940"

    const-string v7, "\u092a\u0930\u094d\u092f\u093e\u0935\u0930\u0923"

    const-string v8, "\u092d\u093e\u0930\u0924\u0940\u092f \u0938\u0902\u0938\u094d\u0915\u0943\u0924\u0940"

    const-string v9, "\u0935\u093f\u0935\u093e\u0939\u0938\u0902\u0938\u094d\u0915\u093e\u0930"

    const-string v10, "\u0935\u0947\u0926 \u0938\u0902\u0936\u094b\u0927\u0928"

    const-string v11, "\u092a\u094d\u0930\u0936\u093f\u0915\u094d\u0937\u0923"

    const-string v12, "\u092a\u094d\u0930\u0936\u093e\u0938\u0915\u093f\u092f"

    const-string v13, "\u0938\u094d\u0935\u092f\u0902\u0930\u094b\u091c\u0917\u093e\u0930"

    const-string v14, "\u092a\u094d\u0930\u091a\u093e\u0930 \u092a\u094d\u0930\u0938\u093e\u0930"

    const-string v15, "\u0935\u093e\u0938\u094d\u0924\u0941\u0936\u093e\u0938\u094d\u0924\u094d\u0930"

    const-string v16, "\u0915\u0943\u0937\u0940 \u0935 \u092a\u0936\u0941\u0917\u094b\u0935\u0902\u0936"

    const-string v17, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926\u093f\u0915"

    const-string v18, "\u0915\u093e\u092f\u0926\u0947\u0935\u093f\u0937\u092f\u0915"

    const-string v19, "\u0926\u0947\u0936\u0935\u093f\u0926\u0947\u0936"

    .line 93
    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->VibhaggridViewString:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 116
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->fragment:Landroid/support/v4/app/Fragment;

    .line 119
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->productsbanners:Ljava/util/List;

    const/16 v2, 0x12

    new-array v2, v2, [I

    .line 121
    fill-array-data v2, :array_0

    iput-object v2, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->VibhaggridViewImageId:[I

    const-string v2, ""

    .line 138
    iput-object v2, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->device_token:Ljava/lang/String;

    .line 139
    iput-object v2, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->user_id:Ljava/lang/String;

    .line 145
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    .line 146
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    .line 147
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    .line 148
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindoriyoutubelist:Ljava/util/List;

    .line 149
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    .line 150
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    .line 151
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    .line 152
    iput-object v1, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->profile:Ljava/util/List;

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

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->loadFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Lcom/dp/sgp/Adapters/SliderAdapterExample;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->productsbanners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->productsbanners:Ljava/util/List;

    return-object p1
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    .line 768
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 769
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 770
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public DetailedViewClicked(Lcom/dp/sgp/Model/HomeResponse/Banner;)V
    .locals 3

    .line 815
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    const-string v2, "\u0936\u094d\u0930\u0940 \u0917\u0941\u0930\u0941\u092a\u0940\u0920 \u0924\u094d\u0930\u094d\u092f\u0902\u092c\u0915\u0947\u0936\u094d\u0935\u0930"

    .line 817
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "media_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance p1, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;-><init>()V

    .line 820
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/Details/ImageDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 822
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008c

    .line 824
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 825
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 826
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public HomeScreen()V
    .locals 3

    .line 596
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

    .line 598
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 599
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->HomeScreen(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public getDindori(Ljava/lang/String;)Lcom/dp/sgp/Model/YoutubeResponse;
    .locals 3

    .line 831
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 832
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 833
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 834
    new-instance v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$11;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$11;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    .line 835
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 836
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/YoutubeResponse;

    return-object p1
.end method

.method public getHome(Ljava/lang/String;)Lcom/dp/sgp/Model/HomeResponse/HomeResponse;
    .locals 3

    .line 805
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 806
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 807
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 808
    new-instance v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$10;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$10;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    .line 809
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 810
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0d00a4

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    .line 170
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0936\u094d\u0930\u0940 \u0917\u0941\u0930\u0941\u092a\u0940\u0920 \u0924\u094d\u0930\u094d\u092f\u0902\u092c\u0915\u0947\u0936\u094d\u0935\u0930"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    .line 173
    new-instance p1, Lcom/dp/sgp/Model/YoutubeResponse;

    invoke-direct {p1}, Lcom/dp/sgp/Model/YoutubeResponse;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindoriyoutubeResponse:Lcom/dp/sgp/Model/YoutubeResponse;

    .line 174
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0224

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_desc_suvichar:Landroid/widget/TextView;

    .line 175
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0234

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_title_suvichar:Landroid/widget/TextView;

    .line 176
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a022e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_see_all:Landroid/widget/TextView;

    .line 177
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0236

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_vibhag_see_all:Landroid/widget/TextView;

    .line 178
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0245

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_Weather:Landroid/widget/TextView;

    .line 179
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a021d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_added_on_sevamarg:Landroid/widget/TextView;

    .line 180
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0226

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_description_sevamarg:Landroid/widget/TextView;

    .line 181
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0233

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_title_sevamarg:Landroid/widget/TextView;

    .line 182
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0256

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_maal_count:Landroid/widget/TextView;

    .line 183
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a025b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_seva_nav:Landroid/widget/TextView;

    .line 184
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0231

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_tithi:Landroid/widget/TextView;

    .line 185
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0235

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_var:Landroid/widget/TextView;

    .line 186
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a022a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_nakshatra:Landroid/widget/TextView;

    .line 187
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a022c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_rahukal:Landroid/widget/TextView;

    .line 188
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a021f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_bhadrapad:Landroid/widget/TextView;

    .line 189
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0229

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_krishnakunj:Landroid/widget/TextView;

    .line 190
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a022f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_shubharambh:Landroid/widget/TextView;

    .line 191
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0228

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dinvishesh:Landroid/widget/TextView;

    .line 192
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a021e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_ashle:Landroid/widget/TextView;

    .line 193
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0222

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_datetime:Landroid/widget/TextView;

    .line 194
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a022b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_panchangs_title:Landroid/widget/TextView;

    .line 195
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0227

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_dindori_see_all:Landroid/widget/TextView;

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->productsbanners:Ljava/util/List;

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    .line 199
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    .line 200
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    .line 201
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindoriyoutubelist:Ljava/util/List;

    .line 202
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    .line 206
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->profile:Ljava/util/List;

    .line 207
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 208
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 209
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    .line 211
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->device_token:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->user_id:Ljava/lang/String;

    .line 214
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a00a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/autoimageslider/SliderView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    .line 219
    new-instance p1, Lcom/dp/sgp/Adapters/SliderAdapterExample;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/dp/sgp/Adapters/SliderAdapterExample;-><init>(Landroid/content/Context;Lcom/dp/sgp/Adapters/SliderAdapterExample$OnItemClickedListner;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    .line 222
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setOnIndicatorClickListener(Lcom/dp/sgp/autoimageslider/IndicatorView/draw/controller/DrawController$ClickListener;)V

    .line 251
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0069

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindori_youtube_horizontalrecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 252
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 253
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindori_youtube_horizontalrecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 255
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a009a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 256
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0271

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    .line 259
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 260
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 262
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 263
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 266
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 267
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 270
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-direct {p2, p3, v1, v2}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    const-string p1, "home"

    .line 335
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getHome(Ljava/lang/String;)Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    const-string p1, "dindoriyoutube"

    .line 336
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getDindori(Ljava/lang/String;)Lcom/dp/sgp/Model/YoutubeResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindoriyoutubeResponse:Lcom/dp/sgp/Model/YoutubeResponse;

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 342
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindoriyoutubeResponse:Lcom/dp/sgp/Model/YoutubeResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/YoutubeResponse;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindoriyoutubelist:Ljava/util/List;

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 345
    new-instance p1, Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindoriyoutubelist:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubeVideoAdapter:Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

    .line 346
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindori_youtube_horizontalrecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    if-eqz p1, :cond_9

    .line 353
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 354
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appUpdateBody"

    .line 355
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->message:Ljava/lang/String;

    .line 359
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->status:Ljava/lang/String;

    .line 361
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getData()Lcom/dp/sgp/Model/HomeResponse/HomeData;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 362
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->homeResponse:Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getData()Lcom/dp/sgp/Model/HomeResponse/HomeData;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    .line 364
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getPanchangs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getPanchangs()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_panchangs_title:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_tithi:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getTithi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_var:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getVar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_nakshatra:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getNakshatra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_rahukal:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getRahukal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_bhadrapad:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getBhadrapad()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_krishnakunj:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getKrushnapaksha()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_shubharambh:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getShubhashubh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dinvishesh:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getDinvishesh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_datetime:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getAashle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dinvishesh:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getDinvishesh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProfile()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 396
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProfile()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->profile:Ljava/util/List;

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 398
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->profile:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/Profile;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/Profile;->getFull_name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "name"

    invoke-virtual {p1, p3, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSevamarg()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 404
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSevamarg()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    .line 406
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 407
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_added_on_sevamarg:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getAdded_on()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_description_sevamarg:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getAdded_on()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getList_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 411
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_Weather:Landroid/widget/TextView;

    const-string p2, "\u092e\u093e\u0933"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_Weather:Landroid/widget/TextView;

    const-string p2, "\u092a\u093e\u0930\u093e\u092f\u0923"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_title_sevamarg:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getList_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_maal_count:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getList_value()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_added_on_sevamarg:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getYoutube()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 426
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getYoutube()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    .line 427
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 429
    new-instance p1, Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubeVideoAdapter:Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

    .line 430
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 435
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getBanners()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 436
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getBanners()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    .line 438
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 440
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    const-string p2, "banners"

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->saveBanner(Ljava/util/List;Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V

    .line 442
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorAnimation(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    .line 443
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object p2, Lcom/dp/sgp/autoimageslider/SliderAnimations;->SIMPLETRANSFORMATION:Lcom/dp/sgp/autoimageslider/SliderAnimations;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderTransformAnimation(Lcom/dp/sgp/autoimageslider/SliderAnimations;)V

    .line 444
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycleDirection(I)V

    .line 445
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorSelectedColor(I)V

    .line 446
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorUnselectedColor(I)V

    .line 447
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setScrollTimeInSec(I)V

    .line 448
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycle(Z)V

    .line 449
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/SliderView;->startAutoCycle()V

    .line 459
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderAdapterExample:Lcom/dp/sgp/Adapters/SliderAdapterExample;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->renewItems(Ljava/util/List;)V

    .line 466
    :cond_6
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSuvichar()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 467
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSuvichar()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    .line 469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 470
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_desc_suvichar:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Suvichar;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Suvichar;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_title_suvichar:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Suvichar;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Suvichar;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_7
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getVibhag()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 477
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getVibhag()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    .line 479
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 480
    new-instance p1, Lcom/dp/sgp/Adapters/NewVibhagAdapter;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/NewVibhagAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->newVibhagAdapter:Lcom/dp/sgp/Adapters/NewVibhagAdapter;

    .line 481
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 486
    :cond_8
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProductsBanner()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 488
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProductsBanner()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->productsbanners:Ljava/util/List;

    .line 490
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 492
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->productsbanners:Ljava/util/List;

    const-string p2, "productsbanners"

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->saveProductBanner(Ljava/util/List;Ljava/lang/String;)V

    .line 502
    :cond_9
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$3;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 522
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dindori_youtube_horizontalrecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$4;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$4;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 543
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_see_all:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$5;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$5;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_dindori_see_all:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$6;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$6;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_vibhag_see_all:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$7;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$7;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_seva_nav:Landroid/widget/TextView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$8;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$8;-><init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->v:Landroid/view/View;

    return-object p1
.end method

.method public saveBanner(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 775
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 776
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 777
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 778
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 779
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveHome(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Ljava/lang/String;)V
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 797
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 798
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 799
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveProductBanner(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 784
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 785
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 786
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 787
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
