.class Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;
.super Ljava/lang/Object;
.source "CountryLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 150
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    const v0, 0x7f010011

    const v1, 0x7f010012

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->overridePendingTransition(II)V

    .line 153
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;->finish()V

    return-void
.end method
