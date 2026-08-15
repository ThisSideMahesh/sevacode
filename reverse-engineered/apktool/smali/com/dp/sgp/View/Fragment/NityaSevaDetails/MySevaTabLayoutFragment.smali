.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;
.super Landroid/support/v4/app/Fragment;
.source "MySevaTabLayoutFragment.java"


# instance fields
.field USerImage:Ljava/lang/String;

.field private adapter:Lcom/dp/sgp/Adapters/TabAdapter;

.field private btnFollow:Landroid/widget/Button;

.field connectionDetector:Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private mActivity:Landroid/app/Activity;

.field myProgressDialog:Landroid/app/ProgressDialog;

.field prefs:Landroid/content/SharedPreferences;

.field private result_array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rlTop:Landroid/widget/RelativeLayout;

.field rootView:Landroid/view/View;

.field sevaMonthlyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

.field sevaWeeklyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;

.field sevinGroupFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;

.field strtext:Ljava/lang/String;

.field private tab:Landroid/support/design/widget/TabLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->result_array:Ljava/util/List;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->USerImage:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->strtext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method public static newInstance()Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;
    .locals 1

    .line 41
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;-><init>()V

    return-object v0
.end method

.method private setupViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    .line 121
    new-instance v0, Lcom/dp/sgp/Adapters/ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dp/sgp/Adapters/ViewPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 123
    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;

    invoke-direct {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;-><init>()V

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevaWeeklyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;

    .line 124
    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-direct {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;-><init>()V

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevaMonthlyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    .line 125
    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;

    invoke-direct {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;-><init>()V

    iput-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevinGroupFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;

    .line 127
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevaWeeklyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;

    const-string v2, "\u0935\u0948\u092f\u0915\u094d\u0924\u093f\u0915"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/Adapters/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevaMonthlyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    const-string v2, "\u0915\u094c\u091f\u0942\u0902\u092c\u093f\u0915"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/Adapters/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevinGroupFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;

    const-string v2, "\u0938\u093e\u092e\u0941\u0926\u093e\u092f\u093f\u0915"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/Adapters/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v0, 0x2

    .line 132
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 139
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0084

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->rootView:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->strtext:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->strtext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    new-instance p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevaWeeklyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaWeeklyFragment;

    .line 66
    new-instance p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevaMonthlyFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevaMonthlyFragment;

    .line 67
    new-instance p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->sevinGroupFragment:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SevinGroupFragment;

    .line 70
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0264

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a01ba

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->tab:Landroid/support/design/widget/TabLayout;

    .line 72
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 74
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->tab:Landroid/support/design/widget/TabLayout;

    const-string p2, "#DC2A42"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 75
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->tab:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorHeight(I)V

    .line 78
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->setupViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->tab:Landroid/support/design/widget/TabLayout;

    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment$2;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MySevaTabLayoutFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
