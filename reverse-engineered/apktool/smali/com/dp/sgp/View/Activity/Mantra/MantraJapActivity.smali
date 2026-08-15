.class public Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MantraJapActivity.java"


# instance fields
.field panelIconLeftreverse:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002b

    .line 16
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;->setContentView(I)V

    const p1, 0x7f0a0149

    .line 18
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    .line 20
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    const-string v1, "\u092e\u0902\u0924\u094d\u0930 \u091c\u092a"

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a00d1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 26
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 29
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
