.class Lcom/dp/sgp/View/Activity/Country/CountryActivity$2;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


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

    .line 141
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->mAdapter:Lcom/dp/sgp/Adapters/DataAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Country/CountryActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Country/CountryActivity;->mAdapter:Lcom/dp/sgp/Adapters/DataAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/Adapters/DataAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
