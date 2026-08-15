.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfflineModeFragment.java"


# instance fields
.field private adapter:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

.field private bookmarkType:Ljava/lang/String;

.field private listDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/ListData;",
            ">;"
        }
    .end annotation
.end field

.field private listType:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private rootView:Landroid/view/View;

.field private titles:[Ljava/lang/String;

.field private tvAdhya:Landroid/widget/TextView;

.field private tvParayan:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 141
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->listDatas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->listType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->tvAdhya:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->tvParayan:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->adapter:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;)Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->adapter:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method private findViews()V
    .locals 8

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->tvAdhya:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->tvParayan:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->listType:Ljava/lang/String;

    const-string v1, "LIST_SWAMI_CHARITRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "swami_charitra_bookmark"

    .line 74
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "swami_charitra_700_bookmark"

    .line 77
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->tvAdhya:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->tvParayan:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "parayan"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 83
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 84
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->listDatas:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->titles:[Ljava/lang/String;

    .line 91
    :goto_3
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->titles:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 93
    new-instance v0, Lcom/dp/sgp/Model/ListData;

    invoke-direct {v0}, Lcom/dp/sgp/Model/ListData;-><init>()V

    .line 94
    invoke-virtual {v0, v3}, Lcom/dp/sgp/Model/ListData;->setId(I)V

    .line 95
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->titles:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/ListData;->setTitle(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 101
    :cond_3
    new-instance v0, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->listDatas:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->bookmarkType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->adapter:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    .line 102
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->adapter:Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;

    new-instance v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;)V

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Adapters/SwamiCharitraListAdapter;->setOnRecyclerItemClickListener(Lcom/dp/sgp/listener/OnRecyclerItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d008a

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->rootView:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930 \u0911\u092b\u0932\u093e\u0907\u0928"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "EXTRA_PARAMS_RESULT_KEY"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->listType:Ljava/lang/String;

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->findViews()V

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 131
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 132
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineModeFragment;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "swami_charitra_bookmark"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
