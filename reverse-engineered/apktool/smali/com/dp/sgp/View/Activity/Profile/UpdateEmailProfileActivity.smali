.class public Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UpdateEmailProfileActivity.java"


# instance fields
.field private button:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private editTextConfirmPassword:Landroid/widget/EditText;

.field private editTextCountry:Landroid/widget/EditText;

.field private editTextEmail:Landroid/widget/EditText;

.field private editTextName:Landroid/widget/EditText;

.field private editTextPassword:Landroid/widget/EditText;

.field private editText_lastname:Landroid/widget/EditText;

.field private editText_middlename:Landroid/widget/EditText;

.field private editText_mobile:Landroid/widget/EditText;

.field private facebookLoginButton:Landroid/widget/Button;

.field private googleLoginButton:Landroid/widget/Button;

.field private imageView:Landroid/widget/TextView;

.field lStrConfirmPassword:Ljava/lang/String;

.field lStrCountry:Ljava/lang/String;

.field lStrEmailID:Ljava/lang/String;

.field lStrPassword:Ljava/lang/String;

.field lStrUserName:Ljava/lang/String;

.field message:Ljava/lang/String;

.field private mobileNumber:Ljava/lang/String;

.field myProgressDialog:Landroid/app/ProgressDialog;

.field pstrDeviceId:Ljava/lang/String;

.field sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

.field sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

.field status:Ljava/lang/String;

.field private textView:Landroid/widget/ImageView;

.field private textView2:Landroid/widget/TextView;

.field private textView3:Landroid/widget/LinearLayout;

.field private textView4:Landroid/widget/TextView;

.field private txtNewreg:Landroid/widget/LinearLayout;

.field private txtPaasword:Landroid/widget/TextView;

.field txt_Register:Landroid/widget/TextView;

.field updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrEmailID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->pstrDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->lStrConfirmPassword:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextEmail:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextCountry:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextConfirmPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editText_middlename:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editText_lastname:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->isValidEmailId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->mobileNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)Lcom/dp/sgp/DataHolder/DataHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    return-object p0
.end method

.method private assignViews()V
    .locals 1

    const v0, 0x7f0a0070

    .line 66
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editText_lastname:Landroid/widget/EditText;

    const v0, 0x7f0a0071

    .line 67
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editText_middlename:Landroid/widget/EditText;

    const v0, 0x7f0a01c5

    .line 69
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->textView:Landroid/widget/ImageView;

    const v0, 0x7f0a01c6

    .line 70
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->textView2:Landroid/widget/TextView;

    const v0, 0x7f0a00a6

    .line 71
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->imageView:Landroid/widget/TextView;

    const v0, 0x7f0a0072

    .line 72
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editText_mobile:Landroid/widget/EditText;

    const v0, 0x7f0a0073

    .line 73
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextName:Landroid/widget/EditText;

    const v0, 0x7f0a006f

    .line 74
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextEmail:Landroid/widget/EditText;

    const v0, 0x7f0a006d

    .line 75
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextCountry:Landroid/widget/EditText;

    const v0, 0x7f0a01c7

    .line 76
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->textView3:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0246

    .line 77
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->txtPaasword:Landroid/widget/TextView;

    const v0, 0x7f0a0074

    .line 78
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextPassword:Landroid/widget/EditText;

    const v0, 0x7f0a006e

    .line 79
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextConfirmPassword:Landroid/widget/EditText;

    const v0, 0x7f0a003c

    .line 80
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->button:Landroid/widget/Button;

    const v0, 0x7f0a01c8

    .line 81
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->textView4:Landroid/widget/TextView;

    const v0, 0x7f0a0258

    .line 82
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->txtNewreg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0082

    .line 83
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->facebookLoginButton:Landroid/widget/Button;

    const v0, 0x7f0a008e

    .line 84
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->googleLoginButton:Landroid/widget/Button;

    return-void
.end method

.method private isValidEmailId(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$"

    .line 216
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public DeviceInfo()V
    .locals 13

    .line 353
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "regId"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "FCM ID NOT FOUND FOR THIS DEVICE"

    .line 362
    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 363
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 366
    :cond_1
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 367
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 372
    :goto_0
    :try_start_1
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 373
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 377
    :goto_1
    :try_start_2
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 378
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 382
    :goto_2
    :try_start_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    if-lez v5, :cond_5

    .line 383
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 389
    :goto_3
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 390
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :cond_6
    move-object v7, v1

    .line 395
    :goto_4
    :try_start_4
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 396
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :cond_7
    move-object v8, v1

    .line 401
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

    .line 403
    :try_start_6
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v6

    move-object v12, v3

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
    move-object v12, v3

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

    move-object v12, v3

    move-object v3, v2

    move-object v2, v4

    :goto_8
    move-object v4, v12

    goto :goto_9

    :catch_5
    move-exception v3

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_9

    :catch_6
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 405
    :goto_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    .line 408
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

    iget-object v10, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v11, "user_id"

    invoke-virtual {v10, v11}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

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

    .line 414
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v7}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setManufacturer(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v3}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setBrand(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    const-string v3, "Not Mention"

    invoke-virtual {v1, v3}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setNetwork_type(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setIp_address(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v4}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setOs_version(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setDevice_token(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v6}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setApp_version(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v9}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setPlatform(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v8}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setModel(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v1, v0}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setFcm_id(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v1, v11}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/UpdateDeviceInFo;->setUser_id(Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateDeviceInFo"

    .line 429
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
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

    .line 436
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 437
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    new-instance v2, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$5;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$5;-><init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->update_mobileinfo(Lcom/dp/sgp/Model/UpdateDeviceInFo;Lretrofit/Callback;)V

    return-void
.end method

.method public DindoriYoutube()V
    .locals 3

    .line 491
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 493
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 494
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 495
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 498
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 503
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

    .line 505
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 506
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$6;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$6;-><init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->dindoriyoutube(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method public HomeScreen()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->pstrDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setDevice_token(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;->setUser_id(Ljava/lang/String;)V

    .line 303
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

    .line 305
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 306
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$4;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$4;-><init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->HomeScreen(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003f

    .line 103
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->setContentView(I)V

    .line 104
    new-instance p1, Lcom/dp/sgp/Model/UpdateDeviceInFo;

    invoke-direct {p1}, Lcom/dp/sgp/Model/UpdateDeviceInFo;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->updateDeviceInFo:Lcom/dp/sgp/Model/UpdateDeviceInFo;

    .line 105
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 106
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    const p1, 0x7f0a0242

    .line 107
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->txt_Register:Landroid/widget/TextView;

    .line 108
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendHomeBody:Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;

    .line 110
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->pstrDeviceId:Ljava/lang/String;

    .line 113
    new-instance p1, Lcom/dp/sgp/Model/SendProfileBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/SendProfileBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    .line 114
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->assignViews()V

    .line 116
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Mobile_No"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->mobileNumber:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->txt_Register:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->button:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public profile_update()V
    .locals 3

    .line 226
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f120008

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 229
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Updating Profile Details..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 233
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestBody"

    .line 235
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
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

    .line 242
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 243
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;->sendProfileBody:Lcom/dp/sgp/Model/SendProfileBody;

    new-instance v2, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Profile/UpdateEmailProfileActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->profile_update(Lcom/dp/sgp/Model/SendProfileBody;Lretrofit/Callback;)V

    return-void
.end method

.method public saveDindori(Lcom/dp/sgp/Model/YoutubeResponse;Ljava/lang/String;)V
    .locals 2

    .line 543
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 545
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 546
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveHome(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Ljava/lang/String;)V
    .locals 2

    .line 480
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 482
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 483
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
