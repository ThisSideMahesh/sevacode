.class public Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "VibhagPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private adapterViewPager:Lcom/dp/sgp/Adapters/VibhagPagerAdapter;

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
    iput v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->currentPageId:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->storedata:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009a

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0267

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->storedata:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "position"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->currentPageId:I

    .line 54
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "Data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->storedata:Ljava/util/List;

    .line 59
    :cond_0
    new-instance p1, Lcom/dp/sgp/Adapters/VibhagPagerAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->storedata:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/dp/sgp/Adapters/VibhagPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->adapterViewPager:Lcom/dp/sgp/Adapters/VibhagPagerAdapter;

    .line 60
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 62
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    const/4 p2, 0x1

    new-instance p3, Lcom/dp/sgp/viewpagertransformer/StackTransformer;

    invoke-direct {p3}, Lcom/dp/sgp/viewpagertransformer/StackTransformer;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 63
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->currentPageId:I

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 65
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPageScrollStateChanged"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPageScrolled"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 78
    iput p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->currentPageId:I

    .line 79
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

    .line 80
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->storedata:Ljava/util/List;

    iget v0, p0, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->currentPageId:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/VibhagSwipePages/VibhagPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
