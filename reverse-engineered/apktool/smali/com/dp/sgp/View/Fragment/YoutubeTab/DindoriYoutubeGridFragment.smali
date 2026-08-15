.class public Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;
.super Landroid/support/v4/app/Fragment;
.source "DindoriYoutubeGridFragment.java"


# instance fields
.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field message:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field status:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

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
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->device_token:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->user_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->youtubelist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public HomeScreen()V
    .locals 3

    .line 103
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 107
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 112
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

    .line 114
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 115
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->dindoriyoutube(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d009d

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->v:Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "New Videos"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0271

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->youtubelist:Ljava/util/List;

    .line 66
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 67
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 70
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->device_token:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->user_id:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->HomeScreen()V

    .line 79
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 98
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/DindoriYoutubeGridFragment;->v:Landroid/view/View;

    return-object p1
.end method
