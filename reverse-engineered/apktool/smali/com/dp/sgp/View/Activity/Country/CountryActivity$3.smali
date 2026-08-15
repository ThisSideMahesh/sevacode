.class Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Country/CountryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Country/CountryActivity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    iget-object v0, p1, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->mAdapter:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/Adapters/DataAdapter;->getitemmsQty()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->access$002(Lcom/dp/sgp/View/Activity/Country/CountryActivity;Ljava/util/List;)Ljava/util/List;

    .line 168
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->access$000(Lcom/dp/sgp/View/Activity/Country/CountryActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/countrypicker/NewCountry;

    .line 169
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1}, Lcom/dp/sgp/countrypicker/NewCountry;->getCcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "country"

    invoke-virtual {p2, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1}, Lcom/dp/sgp/countrypicker/NewCountry;->getIsoCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsoCode"

    invoke-virtual {p2, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    iget-object p2, p2, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1}, Lcom/dp/sgp/countrypicker/NewCountry;->getDialingCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialingCode"

    invoke-virtual {p2, v0, p1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    const-class v0, Lcom/dp/sgp/View/Activity/Language/LanguageActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    const p2, 0x7f010011

    const v0, 0x7f010012

    invoke-virtual {p1, p2, v0}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->overridePendingTransition(II)V

    .line 179
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->finish()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
