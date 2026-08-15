.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;
.super Landroid/support/v4/app/Fragment;
.source "SwamiCharitraFragment.java"


# instance fields
.field private NewswamiCharitraModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiCharitraModel;",
            ">;"
        }
    .end annotation
.end field

.field btn_reset:Landroid/widget/Button;

.field private complete_prayan:Ljava/lang/String;

.field count:I

.field private current_adhyay:Ljava/lang/String;

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

.field delay:I

.field device_token:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field lStrCode:Ljava/lang/String;

.field lStrSelectedLang:Ljava/lang/String;

.field mAdapter:Lcom/dp/sgp/Adapters/SwamiCharitraAdapter;

.field private message:Ljava/lang/String;

.field pos:Landroid/widget/TextView;

.field postion:I

.field progressDialog:Landroid/app/ProgressDialog;

.field runnable:Ljava/lang/Runnable;

.field rvArticles:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field status:Ljava/lang/String;

.field strtext:Ljava/lang/String;

.field private swamiCharitraModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiCharitraModel;",
            ">;"
        }
    .end annotation
.end field

.field txt_adhayay:Landroid/widget/TextView;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->lStrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->lStrSelectedLang:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->strtext:Ljava/lang/String;

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->count:I

    iput v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->postion:I

    .line 62
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->device_token:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->user_id:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->handler:Landroid/os/Handler;

    const/16 v0, 0x2710

    .line 77
    iput v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->delay:I

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->message:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0094

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->v:Landroid/view/View;

    .line 85
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 86
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->data:Ljava/util/List;

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->device_token:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->user_id:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0247

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->txt_adhayay:Landroid/widget/TextView;

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0152

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->pos:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->swamiCharitraModelList:Ljava/util/List;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->NewswamiCharitraModelList:Ljava/util/List;

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    .line 105
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 139
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->v:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->saramrut()V

    .line 223
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public saramrut()V
    .locals 3

    .line 146
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 149
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 150
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 155
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

    .line 157
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 163
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/SwamiCharitraFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->saramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method
