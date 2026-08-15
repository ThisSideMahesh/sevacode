.class Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SplashScreenActivity.java"


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

    .line 119
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "registrationComplete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    const-string p2, "global"

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 129
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->access$000(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pushNotification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "message"

    .line 134
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {p2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
