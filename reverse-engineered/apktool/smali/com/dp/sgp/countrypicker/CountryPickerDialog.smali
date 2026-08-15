.class public Lcom/dp/sgp/countrypicker/CountryPickerDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "CountryPickerDialog.java"


# instance fields
.field private callbacks:Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;

.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/countrypicker/Country;",
            ">;"
        }
    .end annotation
.end field

.field private headingCountryCode:Ljava/lang/String;

.field private listview:Landroid/widget/ListView;

.field private showDialingCode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;-><init>(Landroid/content/Context;Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;-><init>(Landroid/content/Context;Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;Ljava/lang/String;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->callbacks:Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;

    .line 51
    iput-object p3, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->headingCountryCode:Ljava/lang/String;

    .line 52
    iput-boolean p4, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->showDialingCode:Z

    .line 53
    invoke-virtual {p0}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/dp/sgp/countrypicker/Utils;->getCountriesJSON(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/dp/sgp/countrypicker/Utils;->parseCountries(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->countries:Ljava/util/List;

    .line 54
    new-instance p2, Lcom/dp/sgp/countrypicker/CountryPickerDialog$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/countrypicker/CountryPickerDialog$1;-><init>(Lcom/dp/sgp/countrypicker/CountryPickerDialog;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/countrypicker/CountryPickerDialog;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->countries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/countrypicker/CountryPickerDialog;)Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->callbacks:Lcom/dp/sgp/countrypicker/CountryPickerCallbacks;

    return-object p0
.end method

.method private scrollToHeadingCountry()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->headingCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->listview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/countrypicker/Country;

    invoke-virtual {v1}, Lcom/dp/sgp/countrypicker/Country;->getIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->headingCountryCode:Ljava/lang/String;

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCountryFromIsoCode(Ljava/lang/String;)Lcom/dp/sgp/countrypicker/Country;
    .locals 3

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->countries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->countries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/countrypicker/Country;

    invoke-virtual {v1}, Lcom/dp/sgp/countrypicker/Country;->getIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->countries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/countrypicker/Country;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0051

    .line 70
    invoke-virtual {p0, p1}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    const p1, 0x7f0a0057

    .line 72
    invoke-virtual {p0, p1}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->listview:Landroid/widget/ListView;

    .line 74
    new-instance p1, Lcom/dp/sgp/countrypicker/CountryListAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->countries:Ljava/util/List;

    iget-boolean v2, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->showDialingCode:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/dp/sgp/countrypicker/CountryListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 75
    iget-object v0, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object p1, p0, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->listview:Landroid/widget/ListView;

    new-instance v0, Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/countrypicker/CountryPickerDialog$2;-><init>(Lcom/dp/sgp/countrypicker/CountryPickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    invoke-direct {p0}, Lcom/dp/sgp/countrypicker/CountryPickerDialog;->scrollToHeadingCountry()V

    return-void
.end method
