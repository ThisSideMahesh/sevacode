.class public Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NotificationActivity.java"


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

.field img_Home:Landroid/widget/ImageView;

.field lStrToken:Ljava/lang/String;

.field message:Ljava/lang/String;

.field newsAdapter:Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;

.field notifation_msg:Landroid/widget/TextView;

.field private pdialog:Landroid/app/ProgressDialog;

.field progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field status:Ljava/lang/String;

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
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->lStrToken:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->updateIndex:I

    .line 53
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->device_token:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->user_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public HomeScreen()V
    .locals 3

    .line 148
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 152
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 157
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

    .line 159
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 160
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Notifications(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 65
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->setContentView(I)V

    const p1, 0x7f0a0136

    .line 66
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->notifation_msg:Landroid/widget/TextView;

    const p1, 0x7f0a0172

    .line 67
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const p1, 0x7f0a00b3

    .line 68
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->img_Home:Landroid/widget/ImageView;

    .line 69
    new-instance v0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->vibhag:Ljava/util/List;

    .line 79
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-direct {p1, p0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 80
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->data:Ljava/util/List;

    .line 83
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v0, "device_token"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->device_token:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->user_id:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->device_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->HomeScreen()V

    .line 92
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method
