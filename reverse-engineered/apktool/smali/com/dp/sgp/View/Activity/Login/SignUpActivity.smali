.class public Lcom/dp/sgp/View/Activity/Login/SignUpActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SignUpActivity.java"


# instance fields
.field private btnRegister:Landroid/widget/Button;

.field private btnSignIn:Landroid/widget/Button;

.field private introImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private assignViews()V
    .locals 1

    const v0, 0x7f0a0037

    .line 20
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->btnSignIn:Landroid/widget/Button;

    const v0, 0x7f0a0039

    .line 21
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->btnRegister:Landroid/widget/Button;

    const v0, 0x7f0a00ba

    .line 22
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->introImg:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003b

    .line 29
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->assignViews()V

    .line 34
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->btnRegister:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/SignUpActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/SignUpActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Login/SignUpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Login/SignUpActivity;->btnSignIn:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/View/Activity/Login/SignUpActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Login/SignUpActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Login/SignUpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
