.class public Lcom/dp/sgp/View/Activity/Home/CalTestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CalTestActivity.java"


# instance fields
.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 33
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 34
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->invalidateOptionsMenu()V

    .line 43
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->finish()V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 51
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 20
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 24
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 25
    new-instance p1, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "HomeFragmenFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
