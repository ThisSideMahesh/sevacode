.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;
.super Landroid/support/v4/app/Fragment;
.source "SevaMonthlyFragment.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/AbjachnadiData;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field lStrCode:Ljava/lang/String;

.field lStrSelectedLang:Ljava/lang/String;

.field private languageModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/LanguageModel;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/dp/sgp/Adapters/SevaAdapter;

.field private message:Ljava/lang/String;

.field private modifieddata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/AbjachnadiData;",
            ">;"
        }
    .end annotation
.end field

.field progressDialog:Landroid/app/ProgressDialog;

.field rvArticles:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field status:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->lStrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->lStrSelectedLang:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->data:Ljava/util/List;

    .line 53
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->modifieddata:Ljava/util/List;

    .line 55
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->device_token:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->user_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->modifieddata:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public abjachandi()V
    .locals 3

    .line 133
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 136
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 137
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 142
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

    .line 144
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 146
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->abjachandi(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0092

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->v:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u092e\u093e\u091d\u0940 \u0938\u0947\u0935\u093e"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 72
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 74
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->device_token:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->user_id:Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->data:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->modifieddata:Ljava/util/List;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->languageModels:Ljava/util/List;

    .line 82
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    :goto_0
    const/16 p1, 0x1e

    if-ge v0, p1, :cond_0

    .line 86
    new-instance p1, Lcom/dp/sgp/Model/LanguageModel;

    invoke-direct {p1}, Lcom/dp/sgp/Model/LanguageModel;-><init>()V

    .line 87
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    const/16 p3, 0x385

    .line 91
    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x64

    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/LanguageModel;->setCode(Ljava/lang/String;)V

    const-string p2, "SwamiCharitra \nParayan"

    .line 93
    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/LanguageModel;->setName(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->languageModels:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->abjachandi()V

    .line 127
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;->v:Landroid/view/View;

    return-object p1
.end method
