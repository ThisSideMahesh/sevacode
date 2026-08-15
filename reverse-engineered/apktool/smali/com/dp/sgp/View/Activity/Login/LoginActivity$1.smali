.class Lcom/dp/sgp/View/Activity/Login/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Login/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    const-class v1, Lcom/dp/sgp/View/Activity/ForgotPassword/ForgotPasswordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Login/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
