.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;
.super Landroid/support/v4/app/Fragment;
.source "NityaSevaCommonWebFragment.java"


# instance fields
.field Channel_id:Ljava/lang/String;

.field NewNewlStrMSPIN:Ljava/lang/String;

.field commonData:Lcom/dp/sgp/Model/CommonData;

.field private currentPageId:I

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field lStrLink:Ljava/lang/String;

.field lStrSubtitle:Ljava/lang/String;

.field lStrtitle:Ljava/lang/String;

.field panelIconLeftreversemain:Landroid/widget/LinearLayout;

.field panelIconRightmain:Landroid/widget/LinearLayout;

.field private progressBar:Landroid/view/View;

.field private storedata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field strtext:Ljava/lang/String;

.field txt_cat1:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrSubtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->NewNewlStrMSPIN:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrLink:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->strtext:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->storedata:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    return p0
.end method

.method static synthetic access$008(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    return v0
.end method

.method static synthetic access$010(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->storedata:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0d0086

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->v:Landroid/view/View;

    const p2, 0x7f0a014c

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->panelIconRightmain:Landroid/widget/LinearLayout;

    .line 50
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->v:Landroid/view/View;

    const p2, 0x7f0a014a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->panelIconLeftreversemain:Landroid/widget/LinearLayout;

    .line 52
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->v:Landroid/view/View;

    const p2, 0x7f0a024d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->txt_cat1:Landroid/widget/TextView;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->storedata:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->v:Landroid/view/View;

    const p3, 0x7f0a0269

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    .line 57
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->v:Landroid/view/View;

    const p3, 0x7f0a0155

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->progressBar:Landroid/view/View;

    .line 58
    new-instance p2, Lcom/dp/sgp/Model/CommonData;

    invoke-direct {p2}, Lcom/dp/sgp/Model/CommonData;-><init>()V

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->commonData:Lcom/dp/sgp/Model/CommonData;

    .line 60
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 62
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    .line 64
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 65
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 66
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 67
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 68
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    const p3, 0x7f080298

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 70
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrtitle:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "position"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    .line 82
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "Data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->storedata:Ljava/util/List;

    .line 83
    iget p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrSubtitle:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->strtext:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrtitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->txt_cat1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrSubtitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->strtext:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->panelIconRightmain:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->panelIconLeftreversemain:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->v:Landroid/view/View;

    return-object p1
.end method
