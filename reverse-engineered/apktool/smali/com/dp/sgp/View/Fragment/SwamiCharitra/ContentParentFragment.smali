.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContentParentFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapterViewPager:Lcom/dp/sgp/Adapters/ContentPagerAdapter;

.field private bookmarkType:Ljava/lang/String;

.field private currentPageId:I

.field private dayMarathi:[Ljava/lang/String;

.field private isBookmarked:Z

.field private ivBookmark:Landroid/widget/ImageView;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/ListData;",
            ">;"
        }
    .end annotation
.end field

.field private listType:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private stringName:Ljava/lang/String;

.field private tvNext:Landroid/widget/TextView;

.field private tvPrev:Landroid/widget/TextView;

.field private vpPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    .line 47
    iput-boolean v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->isBookmarked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->isBookmarked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->isBookmarked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->ivBookmark:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->bookmarkType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    return p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkBookmark()V
    .locals 4

    .line 166
    iget v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->bookmarkType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->isBookmarked:Z

    .line 169
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->ivBookmark:Landroid/widget/ImageView;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 171
    :cond_0
    iput-boolean v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->isBookmarked:Z

    .line 172
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->ivBookmark:Landroid/widget/ImageView;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private findViews()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    .line 135
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->tvPrev:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->tvNext:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->ivBookmark:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->tvPrev:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->tvNext:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;
    .locals 1

    .line 52
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setBottomCount()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->tvPrev:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->dayMarathi:[Ljava/lang/String;

    iget v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->dayMarathi:[Ljava/lang/String;

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a020c

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a020e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 184
    iput p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 189
    :cond_2
    iget p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 190
    iget p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 194
    :goto_0
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->setBottomCount()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_RESULT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->list:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    .line 66
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_LIST_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->listType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0d007c

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->rootView:Landroid/view/View;

    .line 75
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->findViews()V

    .line 76
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->dayMarathi:[Ljava/lang/String;

    .line 78
    new-instance p1, Lcom/dp/sgp/Adapters/ContentPagerAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->listType:Ljava/lang/String;

    invoke-direct {p1, p2, p3, v1}, Lcom/dp/sgp/Adapters/ContentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->adapterViewPager:Lcom/dp/sgp/Adapters/ContentPagerAdapter;

    .line 79
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 80
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    new-instance p2, Lcom/dp/sgp/viewpagertransformer/StackTransformer;

    invoke-direct {p2}, Lcom/dp/sgp/viewpagertransformer/StackTransformer;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 82
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->vpPager:Landroid/support/v4/view/ViewPager;

    iget p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 85
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->listType:Ljava/lang/String;

    const-string p2, "LIST_SWAMI_CHARITRA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->listType:Ljava/lang/String;

    const-string p3, "LIST_SWAMI_CHARITRA_700"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->ivBookmark:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 87
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->listType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "swami_charitra_bookmark"

    .line 88
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->bookmarkType:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "swami_charitra_700_bookmark"

    .line 90
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->bookmarkType:Ljava/lang/String;

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a00bf

    .line 94
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110098

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110090

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v5, "help_booking"

    .line 93
    invoke-static/range {v1 .. v6}, Lcom/dp/sgp/util/ShowCaseManager;->showHelp(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dp/sgp/util/ShowCaseManager$ShowCaseManagerListener;)V

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->ivBookmark:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->ivBookmark:Landroid/widget/ImageView;

    new-instance p2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :goto_2
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->checkBookmark()V

    .line 123
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->rootView:Landroid/view/View;

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
    .locals 0

    .line 154
    iput p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->currentPageId:I

    .line 155
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->setBottomCount()V

    .line 156
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/ContentParentFragment;->checkBookmark()V

    return-void
.end method
