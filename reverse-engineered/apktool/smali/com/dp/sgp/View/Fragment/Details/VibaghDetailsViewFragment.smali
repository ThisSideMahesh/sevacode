.class public Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "VibaghDetailsViewFragment.java"


# instance fields
.field LstrImage:Ljava/lang/String;

.field Lyt_Ordernow:Landroid/widget/LinearLayout;

.field Type:Ljava/lang/String;

.field backdrop:Landroid/widget/ImageView;

.field connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field device_token:Ljava/lang/String;

.field gridViewString:[Ljava/lang/String;

.field id:Ljava/lang/String;

.field lStrLink:Ljava/lang/String;

.field lStrText:Ljava/lang/String;

.field lstrTitle:Ljava/lang/String;

.field message:Ljava/lang/String;

.field private progressBar:Landroid/view/View;

.field progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field status:Ljava/lang/String;

.field strtext:Ljava/lang/String;

.field textView:Landroid/widget/TextView;

.field textView2:Landroid/widget/TextView;

.field tv_Order_Now:Landroid/widget/TextView;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "The Dindori Pranit model of service for the downtrodden was laid down directly by Bhagvan Shree Swami Samarth Maharaj (1149-1878). This work was carried forward by Sadguru Narayandasji Pithle Maharaj (1878-1974), Sadguru Moredada (1922-1988) and is being run now by His Holiness His Holiness Gurumauli well over four decades now.\n\n  For the past two decades, His Holiness Gurmauli has been executing a unique 18-point Rural Development Programme (RDP) from Shree Gurupeeth, Trimbakeshwar, that conducts practical workshops, study tours, seminars and training for one and all, free of cost, all over India.\n\n  The aim is to raise a new Indian, proud of his or her culture and with a scientific bent of mind and confident to face the future. The SevaMarg has achieved this to a great extent and hundreds of social and non-governmental organizations have recognized this work and honoured His Holiness His Holiness Gurumauli for the achievements.\n\n  This counselling sessions that are essentially a man-&-mind healing technique run across more than 5000 centres of Dindori Pranit in India and abroad take into consideration the spiritual, social, educational and ancestral background of the troubled and unhappy solution seeker and suggests him or her simple easy-to-do self-help techniques in the above fields.\n\n\n  Millions of distressed souls visit these centres every day. Some want to quit alcohol or other vices,  others a matrimonial match while some others are desperately trying to save a home that is falling apart. A huge number is of highly educated youth who find themselves lacking in contentment despite the perks of an elite modern-day life. There are others who want success in services as also an equally high number that wants to pull-out loss-making industries from the pit.\n\n  The link that unites these all is faith & spirituality. And the missing link is direction, self-esteem and a sense of purpose in life. His Holiness His Holiness Gurumauli believes that all human beings, including those with virtues & vices are essentially noble souls; it\u2019s the lack of direction, self-esteem and the sense of purpose in life that divides them in shades of grey. Depending on what way one chooses while leading one\u2019s life, the choice also gets divided between peace, happiness & contentment or decay, disease and disenchantment.\n\n  Dindori Pranit has showered bliss in the lives of millions over the past 100 years by imbibing value education in young minds raising an entire generation free from vice and abuse, trained millions of farmers into organic farming & modern techniques of agriculture, built bonds of communal harmony by enhancing interpersonal faith and mutual respect through various activities, conducted successful research to find cure for dreaded diseases like cancer, conducted millions of no-dowry marriages and de-addicted an equally large number of people."

    .line 43
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->lStrText:Ljava/lang/String;

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->strtext:Ljava/lang/String;

    const-string v1, "\u0938\u0930\u094d\u0935\u0924 \u0932\u094b\u0915\u092a\u094d\u0930\u093f\u092f"

    const-string v2, "\u0938\u0938\u0930\u094d\u0935\u0924 \u0932\u094b\u0915\u092a\u094d\u0930\u093f\u092f"

    const-string v3, "\u092a\u0942\u091c\u093e \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    const-string v4, "\u092a\u0942\u091c\u093e \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    const-string v5, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926"

    const-string v6, "\u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926"

    .line 69
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->gridViewString:[Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->device_token:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->lStrLink:Ljava/lang/String;

    const-string v1, "0"

    .line 81
    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->Type:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->LstrImage:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->lstrTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private initCollapsingToolbar(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a004f

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, " "

    .line 233
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0027

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x1

    .line 235
    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 238
    new-instance v1, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method


# virtual methods
.method public LoadImage(Ljava/lang/String;)V
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->backdrop:Landroid/widget/ImageView;

    .line 342
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public VibhagDetails()V
    .locals 3

    .line 260
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 263
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 264
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 269
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

    .line 271
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 273
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->VibhagDetails(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0d00eb

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->v:Landroid/view/View;

    const p2, 0x7f0a002c

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->backdrop:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 111
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->v:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->backdrop:Landroid/widget/ImageView;

    .line 112
    new-instance p2, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 113
    new-instance p2, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p3, "device_token"

    .line 115
    invoke-virtual {p2, p3}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->device_token:Ljava/lang/String;

    .line 116
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p3, "user_id"

    invoke-virtual {p2, p3}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->user_id:Ljava/lang/String;

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->dataList:Ljava/util/List;

    .line 119
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->v:Landroid/view/View;

    const p3, 0x7f0a0269

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    .line 120
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->v:Landroid/view/View;

    const p3, 0x7f0a0155

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->progressBar:Landroid/view/View;

    .line 122
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 124
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    .line 126
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 127
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 128
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 129
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 130
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    const v1, 0x7f080299

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 132
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    .line 133
    invoke-virtual {p2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->strtext:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "pos"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->id:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "selected_image"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->LstrImage:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->lstrTitle:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->lstrTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->strtext:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->LstrImage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->LoadImage(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 157
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 159
    invoke-virtual {p1}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result p1

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f11010c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 222
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->v:Landroid/view/View;

    return-object p1
.end method
