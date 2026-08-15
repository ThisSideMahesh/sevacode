.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;
.super Landroid/support/v4/app/Fragment;
.source "AbhjaChandiFragment.java"


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

.field lytmain:Landroid/widget/LinearLayout;

.field mAdapter:Lcom/dp/sgp/Adapters/AbhjaChandiAdapter;

.field private message:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field rvArticles:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field status:Ljava/lang/String;

.field strtext:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->lStrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->lStrSelectedLang:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->strtext:Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->data:Ljava/util/List;

    .line 59
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->device_token:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->user_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->data:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public abjachandi()V
    .locals 3

    .line 140
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 143
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 144
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 149
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

    .line 151
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 153
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->abjachandi(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d006b

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->v:Landroid/view/View;

    .line 73
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 74
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 76
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->device_token:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->user_id:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->languageModels:Ljava/util/List;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->data:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->strtext:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->strtext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    .line 87
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->v:Landroid/view/View;

    const p2, 0x7f0a00f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->lytmain:Landroid/widget/LinearLayout;

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->lytmain:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->abjachandi()V

    .line 134
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->v:Landroid/view/View;

    return-object p1
.end method
