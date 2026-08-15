.class public Lcom/dp/sgp/View/Activity/Language/LanguageActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LanguageActivity.java"


# instance fields
.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field lStrCode:Ljava/lang/String;

.field lStrSelectedLang:Ljava/lang/String;

.field private languageModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/LanguageModel;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/dp/sgp/Adapters/LangagueAdapter;

.field rvArticles:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->lStrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->lStrSelectedLang:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Language/LanguageActivity;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->languageModels:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0027

    .line 40
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->setContentView(I)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->languageModels:Ljava/util/List;

    .line 43
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const p1, 0x7f0a0111

    .line 45
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "languages.json"

    .line 51
    invoke-static {p0, v0}, Lcom/dp/sgp/util/AssestParser;->getJsonFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "data"

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    new-instance v1, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Language/LanguageActivity;)V

    .line 62
    invoke-virtual {v1}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 64
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->languageModels:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 72
    new-instance p1, Lcom/dp/sgp/Adapters/LangagueAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->languageModels:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/dp/sgp/Adapters/LangagueAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->mAdapter:Lcom/dp/sgp/Adapters/LangagueAdapter;

    .line 74
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 75
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 78
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->mAdapter:Lcom/dp/sgp/Adapters/LangagueAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Language/LanguageActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Language/LanguageActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method
