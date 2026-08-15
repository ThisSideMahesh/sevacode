.class public Lcom/dp/sgp/View/Activity/Country/CountryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CountryActivity.java"


# instance fields
.field private FilterresponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/NewCountry;",
            ">;"
        }
    .end annotation
.end field

.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/Country;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field lStrCode:Ljava/lang/String;

.field lStrSelectedLang:Ljava/lang/String;

.field mAdapter:Lcom/dp/sgp/Adapters/DataAdapter;

.field private newCountryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/NewCountry;",
            ">;"
        }
    .end annotation
.end field

.field rvArticles:Landroid/support/v7/widget/RecyclerView;

.field searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->lStrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->lStrSelectedLang:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Country/CountryActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->FilterresponseList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Activity/Country/CountryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->FilterresponseList:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 46
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->setContentView(I)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->FilterresponseList:Ljava/util/List;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->newCountryList:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    .line 51
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const p1, 0x7f0a0187

    .line 52
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->searchView:Landroid/support/v7/widget/SearchView;

    const p1, 0x7f0a0043

    .line 53
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 57
    invoke-static {p0}, Lcom/dp/sgp/countrypicker/Utils;->getCountriesJSON(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/dp/sgp/countrypicker/Utils;->parseCountries(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    .line 58
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "appUpdateBody "

    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    new-instance v1, Lcom/dp/sgp/View/Activity/Country/CountryActivity$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Country/CountryActivity;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 79
    new-instance v1, Ljava/util/Locale;

    sget-object v2, Lcom/dp/sgp/application/GurupethApp;->mContext:Lcom/dp/sgp/application/GurupethApp;

    invoke-virtual {v2}, Lcom/dp/sgp/application/GurupethApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    .line 80
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/countrypicker/Country;

    invoke-virtual {v3}, Lcom/dp/sgp/countrypicker/Country;->getIsoCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    .line 82
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    new-instance v2, Lcom/dp/sgp/countrypicker/NewCountry;

    invoke-direct {v2}, Lcom/dp/sgp/countrypicker/NewCountry;-><init>()V

    .line 85
    invoke-virtual {v2, v1}, Lcom/dp/sgp/countrypicker/NewCountry;->setCcName(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/countrypicker/Country;

    invoke-virtual {v1}, Lcom/dp/sgp/countrypicker/Country;->getIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dp/sgp/countrypicker/NewCountry;->setIsoCode(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->countries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/countrypicker/Country;

    invoke-virtual {v1}, Lcom/dp/sgp/countrypicker/Country;->getDialingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dp/sgp/countrypicker/NewCountry;->setDialingCode(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->newCountryList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lcom/dp/sgp/Adapters/DataAdapter;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->newCountryList:Ljava/util/List;

    invoke-direct {p1, p0, v1}, Lcom/dp/sgp/Adapters/DataAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->mAdapter:Lcom/dp/sgp/Adapters/DataAdapter;

    .line 92
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 93
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->mAdapter:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->searchView:Landroid/support/v7/widget/SearchView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Country/CountryActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 163
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;

    invoke-direct {v3, p0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Country/CountryActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method
