.class Lcom/dp/sgp/View/Activity/Country/CountryActivity$1;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Country/CountryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dp/sgp/countrypicker/Country;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Country/CountryActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dp/sgp/countrypicker/Country;Lcom/dp/sgp/countrypicker/Country;)I
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 66
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 68
    new-instance v2, Ljava/util/Locale;

    .line 69
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dp/sgp/countrypicker/Country;->getIsoCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/Locale;

    .line 70
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dp/sgp/countrypicker/Country;->getIsoCode()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {v1, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 62
    check-cast p1, Lcom/dp/sgp/countrypicker/Country;

    check-cast p2, Lcom/dp/sgp/countrypicker/Country;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Activity/Country/CountryActivity$1;->compare(Lcom/dp/sgp/countrypicker/Country;Lcom/dp/sgp/countrypicker/Country;)I

    move-result p1

    return p1
.end method
