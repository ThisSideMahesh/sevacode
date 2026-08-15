.class public Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OnBoardingActivity.java"


# instance fields
.field btnAnim:Landroid/view/animation/Animation;

.field btnGetStarted:Landroid/widget/Button;

.field btnSkip:Landroid/widget/Button;

.field introViewPagerAdapter:Lcom/dp/sgp/Adapters/IntroViewPagerAdapter;

.field private screenPager:Landroid/support/v4/view/ViewPager;

.field tabIndicator:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->screenPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->loadLastScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->savePrefsData()V

    return-void
.end method

.method private loadLastScreen()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnSkip:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnGetStarted:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->tabIndicator:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnGetStarted:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private restorePrefData()Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isIntroOpened"

    .line 117
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private savePrefsData()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isIntroOpened"

    const/4 v2, 0x1

    .line 124
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-direct {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->restorePrefData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/dp/sgp/View/Activity/Splash/SplashScreenActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->finish()V

    :cond_0
    const p1, 0x7f0d0032

    .line 48
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->setContentView(I)V

    const p1, 0x7f0a003b

    .line 51
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnSkip:Landroid/widget/Button;

    const p1, 0x7f0a0038

    .line 52
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnGetStarted:Landroid/widget/Button;

    const p1, 0x7f0a01bc

    .line 54
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->tabIndicator:Landroid/support/design/widget/TabLayout;

    .line 55
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnAnim:Landroid/view/animation/Animation;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v0, Lcom/dp/sgp/Model/ScreenItem;

    const v1, 0x7f0801db

    const-string v2, "\u0926\u093f\u0902\u0921\u094b\u0930\u0940 \u092a\u094d\u0930\u0923\u0940\u0924 \u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u0938\u092e\u0930\u094d\u0925 \u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917\n\u0917\u0941\u0930\u0941\u092a\u094d\u0930\u0923\u093e\u0932\u0940"

    const-string v3, "\u0927\u0930\u094d\u092e \u0938\u0902\u0938\u094d\u0925\u093e\u092a\u0928\u093e \u0915\u093e\u0930\u0923\u0947 \u0964 \u092f\u0941\u0917\u093e\u092f\u0941\u0917\u0940 \u0905\u0935\u0924\u093e\u0930 \u0918\u0947\u0923\u0947 \u0964\n\u0928\u093e\u0928\u093e\u0935\u093f\u0927 \u0935\u0947\u0937 \u0928\u091f\u0923\u0947\u0902 \u0964 \u091c\u0917\u0924\u094d\u092a\u0924\u0940\u0902\u091a\u0947 \u0915\u0930\u094d\u0924\u0935\u094d\u092f \u0965"

    invoke-direct {v0, v2, v3, v1}, Lcom/dp/sgp/Model/ScreenItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/dp/sgp/Model/ScreenItem;

    const v1, 0x7f0801dd

    const-string v2, "\u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917\u093e\u0924\u0940\u0932 \u0967\u096e \u0938\u092e\u093e\u091c\u092a\u092f\u094b\u0917\u0940 \u0935\u093f\u092d\u093e\u0917"

    const-string v3, "\u092e\u093e\u0928\u0935\u093e\u091a\u094d\u092f\u093e \u0938\u092e\u0943\u0927\u094d\u0926 \u091c\u0940\u0935\u0928\u093e\u0938\u093e\u0920\u0940 \u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917\u093e\u091a\u0947 \u0967\u096e \u0917\u094d\u0930\u093e\u092e \u0935 \u0928\u093e\u0917\u0930\u0940 \u0935\u093f\u0915\u093e\u0938 \u0905\u092d\u093f\u092f\u093e\u0928\u093e\u0924\u0942\u0928 \u0938\u092e\u0938\u094d\u092f\u093e\u0917\u094d\u0930\u0938\u094d\u0924, \u0906\u0930\u094d\u0924 \u092a\u093f\u0921\u093f\u0924 \u0935\u094d\u092f\u0915\u094d\u0924\u0940\u0902\u0928\u093e \u092e\u093e\u0930\u094d\u0917\u0926\u0930\u094d\u0936\u0928 \u0935 \u0938\u0941\u0938\u0902\u0938\u094d\u0915\u093e\u0930\u0940\u0924, \u0928\u093f\u0924\u0940\u092e\u0941\u0932\u094d\u092f\u0938\u0902\u092a\u0928\u094d\u0928 \u092a\u093f\u0922\u0940\u091a\u094d\u092f\u093e \u0928\u093f\u0930\u094d\u092e\u093f\u0930\u094d\u0924\u0940\u0938\u093e\u0920\u0940 \u0938\u0902\u0938\u094d\u0915\u093e\u0930 \u091a\u0933\u0935\u0933, \u0935\u093f\u0937\u092e\u0941\u0915\u094d\u0924  \u0905\u0928\u094d\u0928\u0928\u093f\u0930\u094d\u092e\u093f\u0924\u0940\u0938\u093e\u0920\u0940 \u0938\u0947\u0902\u0926\u094d\u0930\u093f\u092f \u0936\u0947\u0924\u0940, \u0905\u0927\u094d\u092f\u093e\u0924\u094d\u092e \u0906\u0923\u093f \u0935\u093f\u091c\u094d\u091e\u093e\u0928\u093e\u091a\u0940 \u0938\u093e\u0902\u0917\u0921 \u0918\u093e\u0932\u0923\u093e\u0930\u0947  \u0935\u093e\u0938\u094d\u0924\u0941\u0936\u093e\u0938\u094d\u0924\u094d\u0930, \u0928\u093f\u0930\u094b\u0917\u0940 \u0938\u094d\u0935\u093e\u0938\u094d\u0925\u093e\u0938\u093e\u0920\u0940 \u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926 \u0905\u092d\u093f\u092f\u093e\u0928 \u092f\u093e\u0938\u093e\u0930\u0916\u094d\u092f\u093e \u0967\u096e \u0935\u093f\u0935\u093f\u0927  \u0935\u093f\u092d\u093e\u0917\u093e\u0924\u0942\u0928 \u0938\u092e\u093e\u091c\u0915\u0932\u094d\u092f\u093e\u0923\u093e\u091a\u0947 \u0915\u093e\u0930\u094d\u092f \u092a\u0930\u092e\u092a\u0942\u091c\u094d\u092f \u0917\u0941\u0930\u0941\u092e\u093e\u090a\u0932\u0940\u0902\u091a\u094d\u092f\u093e \u092e\u093e\u0930\u094d\u0917\u0926\u0930\u094d\u0936\u0928\u093e\u0928\u0947  \u0938\u0941\u0930\u0941 \u0906\u0939\u0947.\n"

    invoke-direct {v0, v2, v3, v1}, Lcom/dp/sgp/Model/ScreenItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lcom/dp/sgp/Model/ScreenItem;

    const v1, 0x7f0801dc

    const-string v2, "\u0911\u0928\u0932\u093e\u0908\u0928 \u0938\u093e\u0939\u093f\u0924\u094d\u092f"

    const-string v3, "\u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917\u093e\u0924\u0940\u0932 \u0917\u094d\u0930\u0902\u0925, \u092e\u0941\u0926\u094d\u0930\u0923, \u0915\u0943\u0937\u0940\u0927\u0928 \u0938\u093e\u0939\u093f\u0924\u094d\u092f \n\u0924\u0938\u0947\u091a \u0906\u092f\u0941\u0930\u094d\u0935\u0947\u0926 \u0938\u093e\u0939\u093f\u0924\u094d\u092f \u0918\u0930\u092a\u094b\u091a \u092e\u093f\u0933\u0935\u093f\u0923\u094d\u092f\u093e\u0938\u093e\u0920\u0940\nbesatvik.com \u092f\u093e \u0935\u0947\u092c\u0938\u093e\u0908\u091f\u0932\u093e \u0906\u0935\u0936\u094d\u092f \u092d\u0947\u091f \u0926\u094d\u092f\u093e."

    invoke-direct {v0, v2, v3, v1}, Lcom/dp/sgp/Model/ScreenItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/dp/sgp/Model/ScreenItem;

    const v1, 0x7f0801da

    const-string v2, "\u0905\u0916\u093f\u0932 \u092d\u093e\u0930\u0924\u0940\u092f \u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u0938\u092e\u0930\u094d\u0925  \u0917\u0941\u0930\u0941\u092a\u0940\u0920,\n \u0936\u094d\u0930\u0940 \u0915\u094d\u0937\u0947\u0924\u094d\u0930 \u0924\u094d\u0930\u094d\u092f\u0902\u092c\u0915\u0947\u0936\u094d\u0935\u0930, \u0928\u093e\u0936\u093f\u0915"

    const-string v3, "\u0926\u093f\u0902\u0921\u094b\u0930\u0940 \u092a\u094d\u0930\u0923\u0940\u0924 \u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917, \u0926\u093f\u0928\u0926\u0930\u094d\u0936\u093f\u0915\u093e, \u0905\u092c\u094d\u091c\u091a\u0902\u0921\u0940 \u0938\u0947\u0935\u093e \u0928\u094b\u0902\u0926, \u0935\u093f\u0935\u093f\u0927 \u0938\u093e\u092e\u093e\u091c\u093f\u0915 \u0909\u092a\u0915\u094d\u0930\u092e,  \u0926\u0924\u094d\u0924\u0927\u093e\u092e, \u0938\u0923\u0935\u093e\u0930 \u0909\u0924\u094d\u0938\u0935 \u0905\u091c\u0942\u0928 \u092c\u0930\u0947\u091a \u0915\u093e\u0939\u0940\n"

    invoke-direct {v0, v2, v3, v1}, Lcom/dp/sgp/Model/ScreenItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0181

    .line 68
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->screenPager:Landroid/support/v4/view/ViewPager;

    .line 69
    new-instance v0, Lcom/dp/sgp/Adapters/IntroViewPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/dp/sgp/Adapters/IntroViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->introViewPagerAdapter:Lcom/dp/sgp/Adapters/IntroViewPagerAdapter;

    .line 70
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->screenPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->tabIndicator:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->screenPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 77
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnSkip:Landroid/widget/Button;

    new-instance v1, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$1;-><init>(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->tabIndicator:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$2;-><init>(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->btnGetStarted:Landroid/widget/Button;

    new-instance v0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$3;-><init>(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
