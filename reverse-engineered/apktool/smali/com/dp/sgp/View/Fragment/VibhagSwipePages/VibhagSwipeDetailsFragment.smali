.class public Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "VibhagSwipeDetailsFragment.java"


# instance fields
.field Channel_id:Ljava/lang/String;

.field LstrImage:Ljava/lang/String;

.field Lyt_Ordernow:Landroid/widget/LinearLayout;

.field NewNewlStrMSPIN:Ljava/lang/String;

.field backdrop:Landroid/widget/ImageView;

.field commonData:Lcom/dp/sgp/Model/CommonData;

.field private currentPageId:I

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field lStrLink:Ljava/lang/String;

.field lStrSubtitle:Ljava/lang/String;

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

.field textView:Landroid/widget/TextView;

.field textView2:Landroid/widget/TextView;

.field tv_Order_Now:Landroid/widget/TextView;

.field txt_cat1:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->Channel_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->lStrSubtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->LstrImage:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->NewNewlStrMSPIN:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->lStrLink:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->strtext:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->storedata:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->currentPageId:I

    return-void
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

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    check-cast p0, Ljava/util/ArrayList;

    const-string v1, "list"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "pos"

    .line 52
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    new-instance p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;

    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;-><init>()V

    .line 54
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public LoadImage(Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->backdrop:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method protected displayTuto()V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->from(Landroid/app/Activity;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->setListener(Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object v0

    const v1, 0x7f0d00e1

    .line 131
    invoke-virtual {v0, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->setContentView(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->setFitsSystemWindows(Z)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object v0

    const v2, 0x7f0a01b9

    .line 133
    invoke-virtual {v0, v2}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->on(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addCircle()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;->withBorder()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;

    move-result-object v0

    new-instance v3, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment$1;

    invoke-direct {v3, p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;)V

    .line 136
    invoke-virtual {v0, v3}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;->onClick(Landroid/view/View$OnClickListener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v2}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;->on(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->displaySwipableLeft()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;

    move-result-object v0

    const/16 v2, 0x18f

    .line 145
    invoke-virtual {v0, v2}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;->delayed(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;->animated(Z)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;->show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->storedata:Ljava/util/List;

    .line 65
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->currentPageId:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0d009b

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a002c

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->backdrop:Landroid/widget/ImageView;

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    .line 82
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0155

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->progressBar:Landroid/view/View;

    .line 84
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 86
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 91
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 92
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    const p2, 0x7f080299

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 94
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 103
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->lStrSubtitle:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->strtext:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->storedata:Ljava/util/List;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->currentPageId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->LstrImage:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->strtext:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->LstrImage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->LoadImage(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagSwipeDetailsFragment;->v:Landroid/view/View;

    return-object p1
.end method
