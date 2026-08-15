.class public Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "TestSwpieDetailsFragment.java"


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

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->lStrSubtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->lStrtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->NewNewlStrMSPIN:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->lStrLink:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->strtext:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->storedata:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    return p0
.end method

.method static synthetic access$008(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    return v0
.end method

.method static synthetic access$010(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->storedata:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static newInstance(Ljava/util/List;I)Landroid/support/v4/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    check-cast p0, Ljava/util/ArrayList;

    const-string v1, "list"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "pos"

    .line 48
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    new-instance p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;-><init>()V

    .line 50
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->storedata:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0d0096

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->v:Landroid/view/View;

    .line 84
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcom/dp/sgp/glvars/GlVars;->Title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a024d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->txt_cat1:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a014a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->panelIconLeftreversemain:Landroid/widget/LinearLayout;

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a014c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->panelIconRightmain:Landroid/widget/LinearLayout;

    .line 93
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0155

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->progressBar:Landroid/view/View;

    .line 95
    new-instance p1, Lcom/dp/sgp/Model/CommonData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/CommonData;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->commonData:Lcom/dp/sgp/Model/CommonData;

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 103
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    const p2, 0x7f080298

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 107
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 111
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->lStrSubtitle:Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->strtext:Ljava/lang/String;

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->txt_cat1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->lStrSubtitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->strtext:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->panelIconLeftreversemain:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->panelIconRightmain:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->v:Landroid/view/View;

    return-object p1
.end method
