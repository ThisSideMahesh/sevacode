.class public Lcom/dp/sgp/util/BottomNavigationViewEx;
.super Landroid/support/design/widget/BottomNavigationView;
.source "BottomNavigationViewEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;,
        Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;
    }
.end annotation


# static fields
.field private static isNavigationItemClicking:Z = false


# instance fields
.field private animationRecord:Z

.field private mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private mItemHeight:I

.field private mLargeLabelSize:F

.field private mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private mMyOnNavigationItemSelectedListener:Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;

.field private mPageChangeListener:Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;

.field private mScaleDownFactor:F

.field private mScaleUpFactor:F

.field private mShiftAmount:I

.field private mSmallLabelSize:F

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private textVisibility:Z

.field private visibilityHeightRecord:Z

.field private visibilityTextSizeRecord:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->textVisibility:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->textVisibility:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->textVisibility:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/util/BottomNavigationViewEx;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->refreshTextViewVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/util/BottomNavigationViewEx;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mItemHeight:I

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/dp/sgp/util/BottomNavigationViewEx;->isNavigationItemClicking:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 31
    sput-boolean p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->isNavigationItemClicking:Z

    return p0
.end method

.method private addAnimationListener()V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAnimationHelper"

    invoke-direct {p0, v1, v0, v2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSet"

    invoke-direct {p0, v1, v0, v2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 89
    new-instance v1, Lcom/dp/sgp/util/BottomNavigationViewEx$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/util/BottomNavigationViewEx$1;-><init>(Lcom/dp/sgp/util/BottomNavigationViewEx;)V

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 758
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    if-nez v0, :cond_0

    .line 552
    const-class v0, Landroid/support/design/widget/BottomNavigationView;

    const-string v1, "mMenuView"

    invoke-direct {p0, v0, p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationMenuView;

    iput-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    return-object v0
.end method

.method private getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 802
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p3, 0x1

    .line 803
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 804
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 808
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 806
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getFontHeight(F)I
    .locals 2

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 308
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 310
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private init()V
    .locals 1

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->addAnimationListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private refreshTextViewVisibility()V
    .locals 10

    .line 115
    iget-boolean v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->textVisibility:Z

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    .line 120
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getCurrentItem()I

    move-result v1

    .line 125
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 126
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mLargeLabel"

    invoke-direct {p0, v6, v5, v7}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 127
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mSmallLabel"

    invoke-direct {p0, v7, v5, v8}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 129
    invoke-virtual {v6}, Landroid/widget/TextView;->clearAnimation()V

    .line 130
    invoke-virtual {v7}, Landroid/widget/TextView;->clearAnimation()V

    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mShiftingMode"

    invoke-direct {p0, v8, v5, v9}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 134
    invoke-virtual {v5}, Landroid/support/design/internal/BottomNavigationItemView;->getItemPosition()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x4

    if-eqz v8, :cond_3

    if-eqz v5, :cond_2

    .line 137
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_2
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    .line 144
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 147
    :cond_4
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 823
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p3, 0x1

    .line 824
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 825
    invoke-virtual {p1, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 829
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 827
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public enableAnimation(Z)V
    .locals 13

    .line 339
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 343
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 344
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mLargeLabel"

    invoke-direct {p0, v6, v5, v7}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 345
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mSmallLabel"

    invoke-direct {p0, v7, v5, v8}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "mScaleDownFactor"

    const-string v9, "mScaleUpFactor"

    const-string v10, "mShiftAmount"

    if-nez p1, :cond_1

    .line 349
    iget-boolean v11, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->animationRecord:Z

    const/4 v12, 0x1

    if-nez v11, :cond_0

    .line 350
    iput-boolean v12, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->animationRecord:Z

    .line 351
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11, v5, v10}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mShiftAmount:I

    .line 352
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11, v5, v9}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iput v11, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mScaleUpFactor:F

    .line 353
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11, v5, v8}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iput v11, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mScaleDownFactor:F

    .line 355
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    iput v11, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mLargeLabelSize:F

    .line 356
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    iput v7, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mSmallLabelSize:F

    .line 363
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v7, v5, v10, v11}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v7, v5, v9, v10}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    iget v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mSmallLabelSize:F

    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 377
    :cond_1
    iget-boolean v7, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->animationRecord:Z

    if-nez v7, :cond_2

    return-void

    .line 380
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget v11, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mShiftAmount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v7, v5, v10, v11}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget v10, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mScaleUpFactor:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {p0, v7, v5, v9, v10}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget v9, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mScaleDownFactor:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    iget v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mLargeLabelSize:F

    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 387
    :cond_3
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public enableItemShiftingMode(Z)V
    .locals 8

    .line 428
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 432
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 433
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "mShiftingMode"

    invoke-direct {p0, v5, v4, v7, v6}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public enableShiftingMode(Z)V
    .locals 3

    .line 404
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "mShiftingMode"

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    return-object v0

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mButtons"

    invoke-direct {p0, v1, v0, v2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 5

    .line 457
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    .line 459
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 460
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 461
    invoke-interface {v1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getIconAt(I)Landroid/widget/ImageView;
    .locals 2

    .line 595
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    .line 596
    const-class v0, Landroid/support/design/internal/BottomNavigationItemView;

    const-string v1, "mIcon"

    invoke-direct {p0, v0, p1, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 642
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 645
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getItemHeight()I
    .locals 3

    .line 745
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mItemHeight"

    invoke-direct {p0, v1, v0, v2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLargeLabelAt(I)Landroid/widget/TextView;
    .locals 2

    .line 631
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    .line 632
    const-class v0, Landroid/support/design/internal/BottomNavigationItemView;

    const-string v1, "mLargeLabel"

    invoke-direct {p0, v0, p1, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getMenuItemPosition(Landroid/view/MenuItem;)I
    .locals 4

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 478
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 479
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 481
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getOnNavigationItemSelectedListener()Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 2

    .line 530
    const-class v0, Landroid/support/design/widget/BottomNavigationView;

    const-string v1, "mSelectedListener"

    invoke-direct {p0, v0, p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method public getSmallLabelAt(I)Landroid/widget/TextView;
    .locals 2

    .line 613
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    .line 614
    const-class v0, Landroid/support/design/internal/BottomNavigationItemView;

    const-string v1, "mSmallLabel"

    invoke-direct {p0, v0, p1, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public setCurrentItem(I)V
    .locals 4

    if-ltz p1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getMaxItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 515
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mOnClickListener"

    invoke-direct {p0, v2, v0, v3}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 519
    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item is out of bounds, we expected 0 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 497
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getMaxItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Actually "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIconMarginTop(II)V
    .locals 2

    .line 1017
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    .line 1018
    const-class v0, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "mDefaultMargin"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1019
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setIconSize(FF)V
    .locals 2

    .line 718
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 720
    invoke-virtual {p0, v1, p1, p2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setIconSizeAt(IFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconSizeAt(IFF)V
    .locals 2

    .line 701
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getIconAt(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 704
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/dp/sgp/util/BottomNavigationViewEx;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 705
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/dp/sgp/util/BottomNavigationViewEx;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 706
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setIconTintList(ILandroid/content/res/ColorStateList;)V
    .locals 0

    .line 988
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setIconVisibility(Z)V
    .locals 8

    .line 176
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 180
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "mIcon"

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 181
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, v7, v6, v5}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v6, 0x4

    .line 183
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 189
    iget-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityHeightRecord:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityHeightRecord:Z

    .line 191
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemHeight()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mItemHeight:I

    .line 195
    :cond_2
    aget-object p1, v1, v3

    if-eqz p1, :cond_5

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p1, v5}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 200
    new-instance v1, Lcom/dp/sgp/util/BottomNavigationViewEx$2;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx$2;-><init>(Lcom/dp/sgp/util/BottomNavigationViewEx;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 211
    :cond_3
    iget-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityHeightRecord:Z

    if-nez p1, :cond_4

    return-void

    .line 215
    :cond_4
    iget p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mItemHeight:I

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setItemHeight(I)V

    .line 218
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setIconsMarginTop(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1001
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1002
    invoke-virtual {p0, v0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setIconMarginTop(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(II)V
    .locals 0

    .line 984
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    return-void
.end method

.method public setItemHeight(I)V
    .locals 3

    .line 731
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "mItemHeight"

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setLargeTextSize(F)V
    .locals 3

    .line 673
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 675
    invoke-virtual {p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getLargeLabelAt(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMyOnNavigationItemSelectedListener:Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;

    if-nez v0, :cond_0

    .line 538
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void

    .line 542
    :cond_0
    invoke-virtual {v0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public setSmallTextSize(F)V
    .locals 3

    .line 657
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 659
    invoke-virtual {p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getSmallLabelAt(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 689
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setLargeTextSize(F)V

    .line 690
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setSmallTextSize(F)V

    return-void
.end method

.method public setTextTintList(ILandroid/content/res/ColorStateList;)V
    .locals 0

    .line 992
    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemView(I)Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 10

    .line 227
    iput-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->textVisibility:Z

    .line 242
    invoke-direct {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationMenuView()Landroid/support/design/internal/BottomNavigationMenuView;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getBottomNavigationItemViews()[Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v1

    .line 247
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 248
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mLargeLabel"

    invoke-direct {p0, v7, v6, v8}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 249
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mSmallLabel"

    invoke-direct {p0, v8, v6, v9}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 253
    iget-boolean v8, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityTextSizeRecord:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->animationRecord:Z

    if-nez v8, :cond_0

    .line 254
    iput-boolean v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityTextSizeRecord:Z

    .line 255
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iput v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mLargeLabelSize:F

    .line 256
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iput v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mSmallLabelSize:F

    :cond_0
    const/4 v5, 0x0

    .line 260
    invoke-virtual {v7, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 265
    :cond_1
    iget-boolean v8, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityTextSizeRecord:Z

    if-nez v8, :cond_2

    goto :goto_2

    .line 269
    :cond_2
    iget v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mLargeLabelSize:F

    invoke-virtual {v7, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    iget v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mSmallLabelSize:F

    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez p1, :cond_5

    .line 277
    iget-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityHeightRecord:Z

    if-nez p1, :cond_4

    .line 278
    iput-boolean v5, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityHeightRecord:Z

    .line 279
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemHeight()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mItemHeight:I

    .line 287
    :cond_4
    iget p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mItemHeight:I

    iget v1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mSmallLabelSize:F

    invoke-static {v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getFontHeight(F)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setItemHeight(I)V

    goto :goto_3

    .line 291
    :cond_5
    iget-boolean p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->visibilityHeightRecord:Z

    if-nez p1, :cond_6

    return-void

    .line 294
    :cond_6
    iget p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mItemHeight:I

    invoke-virtual {p0, p1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setItemHeight(I)V

    .line 297
    :goto_3
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 3

    .line 783
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 785
    invoke-virtual {p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getLargeLabelAt(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 786
    invoke-virtual {p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getSmallLabelAt(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    .line 769
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 771
    invoke-virtual {p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getLargeLabelAt(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 772
    invoke-virtual {p0, v1}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getSmallLabelAt(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 855
    iget-object v1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mPageChangeListener:Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 861
    iput-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 862
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void

    .line 866
    :cond_1
    iput-object p1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 869
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mPageChangeListener:Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;

    if-nez v0, :cond_2

    .line 870
    new-instance v0, Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;-><init>(Lcom/dp/sgp/util/BottomNavigationViewEx;)V

    iput-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mPageChangeListener:Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mPageChangeListener:Lcom/dp/sgp/util/BottomNavigationViewEx$BottomNavigationViewExOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 875
    invoke-virtual {p0}, Lcom/dp/sgp/util/BottomNavigationViewEx;->getOnNavigationItemSelectedListener()Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    .line 876
    new-instance v1, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;Lcom/dp/sgp/util/BottomNavigationViewEx;ZLandroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    iput-object v1, p0, Lcom/dp/sgp/util/BottomNavigationViewEx;->mMyOnNavigationItemSelectedListener:Lcom/dp/sgp/util/BottomNavigationViewEx$MyOnNavigationItemSelectedListener;

    .line 877
    invoke-super {p0, v1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method
