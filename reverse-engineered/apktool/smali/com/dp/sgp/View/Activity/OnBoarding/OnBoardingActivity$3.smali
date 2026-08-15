.class Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;
.super Ljava/lang/Object;
.source "OnBoardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->access$200(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)V

    .line 110
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->finish()V

    return-void
.end method
