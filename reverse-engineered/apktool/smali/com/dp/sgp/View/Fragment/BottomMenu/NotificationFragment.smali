.class public Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;
.super Landroid/support/v4/app/Fragment;
.source "NotificationFragment.java"


# instance fields
.field LstrToken:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field lStrToken:Ljava/lang/String;

.field message:Ljava/lang/String;

.field newsAdapter:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

.field notifation_msg:Landroid/widget/TextView;

.field private pdialog:Landroid/app/ProgressDialog;

.field progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field status:Ljava/lang/String;

.field transaction:Landroid/support/v4/app/FragmentTransaction;

.field updateIndex:I

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field private vibhag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Vibhag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->fragment:Landroid/support/v4/app/Fragment;

    const-string v1, ""

    .line 57
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->lStrToken:Ljava/lang/String;

    const/4 v2, 0x0

    .line 58
    iput v2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->updateIndex:I

    .line 66
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->device_token:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->user_id:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public HomeScreen()V
    .locals 3

    .line 163
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 166
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 167
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 172
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

    .line 174
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 175
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Notifications(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0089

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0172

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0136

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->notifation_msg:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0905\u0927\u093f\u0915\u0943\u0924 \u0938\u0902\u0926\u0947\u0936"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->vibhag:Ljava/util/List;

    .line 84
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 85
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->data:Ljava/util/List;

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->device_token:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->user_id:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->HomeScreen()V

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 156
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/NotificationFragment;->v:Landroid/view/View;

    return-object p1
.end method
