.class public Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;
.super Landroid/support/v4/app/Fragment;
.source "PriductSeeAllGridFragment.java"


# instance fields
.field banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field message:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field status:Ljava/lang/String;

.field strtext:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->device_token:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->user_id:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->strtext:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->banners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBanner(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    .line 143
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;)V

    .line 145
    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 146
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d009d

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0271

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->banners:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->strtext:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->strtext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 69
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 72
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->device_token:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->user_id:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    const-string p1, "products"

    .line 78
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getBanner(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getBanner(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->banners:Ljava/util/List;

    .line 82
    new-instance p1, Lcom/dp/sgp/Adapters/ProductGridAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->banners:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/ProductGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 83
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 84
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 87
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->rv_popular_video_content:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 137
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Youtube/PriductSeeAllGridFragment;->v:Landroid/view/View;

    return-object p1
.end method
