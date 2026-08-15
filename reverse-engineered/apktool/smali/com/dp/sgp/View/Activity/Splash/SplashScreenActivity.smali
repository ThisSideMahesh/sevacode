.class public Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashScreenActivity.java"


# static fields
.field public static final KEY_TODAY_DATE_ANDTIME:Ljava/lang/String; = "TimeToday"

.field private static SPLASH_TIME_OUT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SplashScreenActivity"


# instance fields
.field LstrToken:Ljava/lang/String;

.field TodayDate_String:Ljava/lang/String;

.field ValDate:Ljava/lang/String;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field device_token:Ljava/lang/String;

.field lStrCode:Ljava/lang/String;

.field lStrFullname:Ljava/lang/String;

.field lStrotp:Ljava/lang/String;

.field lStrprofile:Ljava/lang/String;

.field private mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field message:Ljava/lang/String;

.field mobileNumber:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field status:Ljava/lang/String;

.field updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

.field user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->LstrToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->user_id:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrFullname:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->TodayDate_String:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrprofile:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrotp:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->mobileNumber:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->device_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->ValDate:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->displayFirebaseRegId()V

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method

.method private displayFirebaseRegId()V
    .locals 5

    .line 285
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ah_firebase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "regId"

    const/4 v2, 0x0

    .line 286
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    sget-object v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firebase reg id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v3, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firebase Reg Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v2, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    const-string v1, "Firebase Reg Id is not received yet!"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public Aarti()V
    .locals 3

    .line 617
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 619
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 621
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$10;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$10;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public DeviceInfo()V
    .locals 12

    .line 386
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "regId"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "FCM ID NOT FOUND FOR THIS DEVICE"

    .line 395
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 396
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 399
    :cond_1
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 400
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 405
    :goto_0
    :try_start_1
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 406
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 410
    :goto_1
    :try_start_2
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 411
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 415
    :goto_2
    :try_start_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    if-lez v5, :cond_5

    .line 416
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 422
    :goto_3
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 423
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :cond_6
    move-object v7, v1

    .line 428
    :goto_4
    :try_start_4
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 429
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :cond_7
    move-object v8, v1

    .line 434
    :goto_5
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sdk="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 436
    :try_start_6
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v6

    move-object v11, v3

    move-object v3, v2

    move-object v2, v6

    move-object v6, v5

    goto :goto_7

    :catch_1
    move-exception v5

    move-object v6, v1

    goto :goto_6

    :catch_2
    move-exception v5

    move-object v6, v1

    move-object v8, v6

    goto :goto_6

    :catch_3
    move-exception v5

    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    :goto_6
    move-object v11, v3

    move-object v3, v2

    move-object v2, v5

    :goto_7
    move-object v5, v4

    goto :goto_8

    :catch_4
    move-exception v4

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v11, v3

    move-object v3, v2

    move-object v2, v4

    :goto_8
    move-object v4, v11

    goto :goto_9

    :catch_5
    move-exception v3

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_9

    :catch_6
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 438
    :goto_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    .line 441
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DEVICETOKEN :- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\nOS NAME :- "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "android"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\nUSER-ID :- "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\nFCM-ID :- "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\nBRAND :- "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\nOS-SDK :- "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nAPP-CURRENT_VERSION :- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nMAC-ID :- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nMODEL NAME :- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nMANUFACTURER :- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v7}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setManufacturer(Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v3}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setBrand(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    const-string v3, "Not Mention"

    invoke-virtual {v1, v3}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setNetwork_type(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setIp_address(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v4}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setOs_version(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->device_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setDevice_token(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v6}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setApp_version(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v9}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setPlatform(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v8}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setModel(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setFcm_id(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setUser_id(Ljava/lang/String;)V

    .line 460
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 461
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateDeviceInFo"

    .line 462
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 469
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 470
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$7;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->update_mobileinfo(Lcom/dp/sgp/Model/UpdateDeviceInFo;Lretrofit/Callback;)V

    return-void
.end method

.method public DindoriYoutube()V
    .locals 3

    .line 811
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 813
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 814
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$13;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$13;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->dindoriyoutube(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public HomeScreen()V
    .locals 3

    .line 326
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 329
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 330
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 335
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 337
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 338
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$6;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$6;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->HomeScreen(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public NextAcitvity()V
    .locals 4

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$4;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    sget v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->SPLASH_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$5;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$5;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    sget v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->SPLASH_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Nitya()V
    .locals 3

    .line 573
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 575
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 577
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$9;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public ProductsCommon()V
    .locals 3

    .line 528
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 530
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 532
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$8;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$8;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->ProductsCommon(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public Sanvar()V
    .locals 3

    .line 766
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 768
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 770
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$12;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$12;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method public VibhagDetails()V
    .locals 3

    .line 722
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 724
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 726
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$11;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$11;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->Vibhag(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 80
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d003c

    .line 81
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->setContentView(I)V

    .line 83
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    .line 85
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 86
    new-instance p1, Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-direct {p1}, Lcom/dp/sgp/Model/UpdateDeviceInFo;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    .line 87
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v0, "user_id"

    .line 88
    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->user_id:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->LstrToken:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "lang"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrCode:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "Mobile"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->mobileNumber:Ljava/lang/String;

    .line 92
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "otp"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrotp:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "profile"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->lStrprofile:Ljava/lang/String;

    .line 96
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 98
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 100
    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->TodayDate_String:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "TimeToday"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->ValDate:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "device_token"

    invoke-virtual {p1, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->device_token:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->user_id:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->device_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setType(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setId(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->device_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 119
    new-instance p1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$1;

    invoke-direct {p1, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->displayFirebaseRegId()V

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    sget v1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->SPLASH_TIME_OUT:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;)V

    sget v1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->SPLASH_TIME_OUT:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 319
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 302
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 305
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "registrationComplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 310
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->mRegistrationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "pushNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 314
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dp/sgp/util/NotificationUtils;->clearNotifications(Landroid/content/Context;)V

    return-void
.end method

.method public saveAarti(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V
    .locals 2

    .line 688
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 689
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 691
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 692
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 693
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveDindori(Lcom/dp/sgp/Model/YoutubeResponse;Ljava/lang/String;)V
    .locals 2

    .line 852
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 853
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 854
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 855
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 856
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 857
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveHome(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Ljava/lang/String;)V
    .locals 2

    .line 658
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 660
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 661
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 663
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveNitya(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V
    .locals 2

    .line 678
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 679
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 680
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 681
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 682
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 683
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveProductsCommon(Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;Ljava/lang/String;)V
    .locals 2

    .line 668
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 669
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 670
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 671
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 673
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveSanvar(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Ljava/lang/String;)V
    .locals 2

    .line 708
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 710
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 711
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 712
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 713
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveVibhag(Lcom/dp/sgp/Model/CommonResponse;Ljava/lang/String;)V
    .locals 2

    .line 698
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 700
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 701
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 702
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
