.class public Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SanvarPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private adapterViewPager:Lcom/dp/sgp/Adapters/SanwarPagerAdapter;

.field private currentPageId:I

.field private listType:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private storedata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private vpPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->currentPageId:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->storedata:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d008f

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->rootView:Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0938\u0923\u0935\u093e\u0930"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0267

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->storedata:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "position"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->currentPageId:I

    .line 51
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "Data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->storedata:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->storedata:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    new-instance p1, Lcom/dp/sgp/Adapters/SanwarPagerAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->storedata:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/SanwarPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->adapterViewPager:Lcom/dp/sgp/Adapters/SanwarPagerAdapter;

    .line 57
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 58
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 59
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    const/4 p2, 0x1

    new-instance p3, Lcom/dp/sgp/viewpagertransformer/StackTransformer;

    invoke-direct {p3}, Lcom/dp/sgp/viewpagertransformer/StackTransformer;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 60
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->currentPageId:I

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 73
    iput p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->currentPageId:I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPageSelected"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->storedata:Ljava/util/List;

    iget v0, p0, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->currentPageId:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SanvarSwipePages/SanvarPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
