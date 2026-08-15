.class public Lcom/dp/sgp/View/Activity/Login/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"


# instance fields
.field private button:Landroid/widget/Button;

.field private connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private edit_Email:Landroid/widget/EditText;

.field private edit_Password:Landroid/widget/EditText;

.field private facebookLoginButton:Landroid/widget/Button;

.field private googleLoginButton:Landroid/widget/Button;

.field private imageView:Landroid/widget/ImageView;

.field lStrConfirmPassword:Ljava/lang/String;

.field lStrCountry:Ljava/lang/String;

.field lStrEmailID:Ljava/lang/String;

.field lStrPassword:Ljava/lang/String;

.field lStrUserName:Ljava/lang/String;

.field private textView:Landroid/widget/ImageView;

.field private textView2:Landroid/widget/TextView;

.field private textView3:Landroid/widget/TextView;

.field private textView4:Landroid/widget/TextView;

.field private txtNewreg:Landroid/widget/LinearLayout;

.field txt_Register:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrEmailID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->lStrConfirmPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->edit_Email:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->edit_Password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/Login/LoginActivity;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->isValidEmailId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    return-object p0
.end method

.method private assignViews()V
    .locals 1

    const v0, 0x7f0a01c5

    .line 39
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->textView:Landroid/widget/ImageView;

    const v0, 0x7f0a01c6

    .line 40
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->textView2:Landroid/widget/TextView;

    const v0, 0x7f0a00a6

    .line 41
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0073

    .line 42
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->edit_Email:Landroid/widget/EditText;

    const v0, 0x7f0a006f

    .line 43
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->edit_Password:Landroid/widget/EditText;

    const v0, 0x7f0a01c7

    .line 44
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->textView3:Landroid/widget/TextView;

    const v0, 0x7f0a003c

    .line 45
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->button:Landroid/widget/Button;

    const v0, 0x7f0a01c8

    .line 46
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->textView4:Landroid/widget/TextView;

    const v0, 0x7f0a0258

    .line 47
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->txtNewreg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0082

    .line 48
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->facebookLoginButton:Landroid/widget/Button;

    const v0, 0x7f0a008e

    .line 49
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->googleLoginButton:Landroid/widget/Button;

    return-void
.end method

.method private isValidEmailId(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$"

    .line 128
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0028

    .line 59
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->setContentView(I)V

    .line 61
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 62
    new-instance p1, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    const p1, 0x7f0a0242

    .line 63
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->txt_Register:Landroid/widget/TextView;

    .line 64
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->assignViews()V

    .line 67
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->textView3:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->txt_Register:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/LoginActivity;->button:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/LoginActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
