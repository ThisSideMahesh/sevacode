.class Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$2;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$2;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->NextAcitvity()V

    return-void
.end method
