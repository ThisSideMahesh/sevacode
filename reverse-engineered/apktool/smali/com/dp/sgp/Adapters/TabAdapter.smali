.class public Lcom/dp/sgp/Adapters/TabAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TabAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 27
    new-instance p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Weekly"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "Mnthly"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
