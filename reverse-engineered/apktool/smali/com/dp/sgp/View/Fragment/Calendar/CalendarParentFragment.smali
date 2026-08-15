.class public Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;
.super Lcom/dp/sgp/Base/BaseFragment;
.source "CalendarParentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;
    }
.end annotation


# instance fields
.field private adapterViewPager:Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

.field private bottomNavigationViewEx:Lcom/dp/sgp/util/BottomNavigationViewEx;

.field private calendarPagerDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/calendar/CalendarPagerData;",
            ">;"
        }
    .end annotation
.end field

.field private currentPageId:I

.field private ivNext:Landroid/widget/ImageView;

.field private ivPrev:Landroid/widget/ImageView;

.field private monthTitles:[Ljava/lang/String;

.field private numberOfMonth:I

.field private pageMonth:I

.field private pageYear:I

.field private rootView:Landroid/view/View;

.field private tvMonthTitle:Landroid/widget/TextView;

.field private vpPager:Landroid/support/v4/view/ViewPager;

.field private yearTitles:[Ljava/lang/String;

.field private years:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;-><init>()V

    const/16 v0, 0xc

    .line 39
    iput v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->numberOfMonth:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->pageYear:I

    return p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->pageMonth:I

    return p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->years:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->monthTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->yearTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    return p0
.end method

.method static synthetic access$702(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    return p1
.end method

.method static synthetic access$800(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Lcom/dp/sgp/Adapters/CalendarPagerAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->adapterViewPager:Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;Lcom/dp/sgp/Adapters/CalendarPagerAdapter;)Lcom/dp/sgp/Adapters/CalendarPagerAdapter;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->adapterViewPager:Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private findView()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->tvMonthTitle:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->ivPrev:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->ivNext:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    .line 107
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/util/BottomNavigationViewEx;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->bottomNavigationViewEx:Lcom/dp/sgp/util/BottomNavigationViewEx;

    .line 110
    new-instance v1, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)V

    invoke-virtual {v0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 166
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->tvMonthTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->ivPrev:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;
    .locals 2

    .line 53
    new-instance v0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    invoke-virtual {v0, v1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setupViewPager()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->years:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 176
    :goto_1
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->monthTitles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 178
    new-instance v3, Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-direct {v3}, Lcom/dp/sgp/calendar/CalendarPagerData;-><init>()V

    .line 179
    invoke-virtual {v3, v2}, Lcom/dp/sgp/calendar/CalendarPagerData;->setMonth(I)V

    .line 180
    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->monthTitles:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/dp/sgp/calendar/CalendarPagerData;->setMonthTitle(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->years:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dp/sgp/calendar/CalendarPagerData;->setYear(I)V

    .line 182
    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->yearTitles:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/dp/sgp/calendar/CalendarPagerData;->setYearTitle(Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getCalendarYear()I

    move-result v3

    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->years:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getCalendarMonth()I

    move-result v3

    if-ne v3, v2, :cond_0

    mul-int/lit8 v3, v1, 0xc

    add-int/2addr v3, v2

    .line 187
    iput v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_2
    new-instance v0, Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/dp/sgp/Adapters/CalendarPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->adapterViewPager:Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

    .line 193
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 195
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 197
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00c6

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a00c8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getMinLimit()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 257
    iget p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 262
    :cond_2
    iget p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dp/sgp/calendar/DateUtils;->getMaxLimit(Landroid/content/Context;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 263
    iget p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    .line 264
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/dp/sgp/Base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getArguments()Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0072

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getrootView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030003

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->monthTitles:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030005

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->years:[Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->yearTitles:[Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->findView()V

    .line 88
    new-instance p1, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;-><init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$1;)V

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->rootView:Landroid/view/View;

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
    .locals 3

    .line 278
    iput p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->currentPageId:I

    .line 279
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {v0}, Lcom/dp/sgp/calendar/CalendarPagerData;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->pageMonth:I

    .line 280
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {v0}, Lcom/dp/sgp/calendar/CalendarPagerData;->getYear()I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->pageYear:I

    .line 282
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->tvMonthTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/CalendarPagerData;->getMonthTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->calendarPagerDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalendarPagerData;->getYearTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public reloadData()V
    .locals 0

    return-void
.end method
