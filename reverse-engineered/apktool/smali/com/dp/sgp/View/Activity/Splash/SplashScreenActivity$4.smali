.class Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->NextAcitvity()V
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

    .line 165
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v2, 0x7f010012

    const v3, 0x7f010011

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v4, Lcom/dp/sgp/View/Activity/Country/CountryActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, v3, v2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->overridePendingTransition(II)V

    .line 180
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    goto/16 :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrotp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "91"

    const-string v5, "DialingCode"

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v0, v5}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v4, Lcom/dp/sgp/View/Activity/Login/NewLoginActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, v3, v2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->overridePendingTransition(II)V

    .line 195
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    goto/16 :goto_0

    .line 199
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v4, Lcom/dp/sgp/View/Activity/Login/CountryLoginActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, v3, v2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->overridePendingTransition(II)V

    .line 202
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    goto/16 :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrprofile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v0, v5}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Mobile_No"

    if-eqz v0, :cond_3

    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v5, Lcom/dp/sgp/View/Activity/Profile/UpdateProfileActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    iget-object v4, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v4, v4, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, v3, v2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->overridePendingTransition(II)V

    .line 214
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    goto/16 :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v4, "Email"

    invoke-virtual {v0, v4}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v6, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, v4}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, v3, v2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->overridePendingTransition(II)V

    .line 222
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->ValDate:Ljava/lang/String;

    const-string v1, "Stored Val"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->TodayDate_String:Ljava/lang/String;

    const-string v1, "Today date"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->ValDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    iget-object v1, v1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->TodayDate_String:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->access$100(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 236
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->HomeScreen()V

    goto :goto_0

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    const-string v0, "Comments"

    const-string v1, "Second TIme"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    const-class v4, Lcom/dp/sgp/View/Activity/Home/MainActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0, v3, v2}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->overridePendingTransition(II)V

    .line 252
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;->this$0:Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->finish()V

    :goto_0
    return-void
.end method
