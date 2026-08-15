.class Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$3;
.super Ljava/lang/Object;
.source "NewLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 207
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    const v0, 0x7f010011

    const v1, 0x7f010012

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->overridePendingTransition(II)V

    .line 210
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity$3;->this$0:Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;->finish()V

    return-void
.end method
