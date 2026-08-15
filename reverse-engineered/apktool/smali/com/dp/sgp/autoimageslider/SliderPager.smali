.class public Lcom/dp/sgp/autoimageslider/SliderPager;
.super Landroid/view/ViewGroup;
.source "SliderPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/autoimageslider/SliderPager$ViewPositionComparator;,
        Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;,
        Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;,
        Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;,
        Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;,
        Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;,
        Lcom/dp/sgp/autoimageslider/SliderPager$DecorView;,
        Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;,
        Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;,
        Lcom/dp/sgp/autoimageslider/SliderPager$SimpleOnPageChangeListener;,
        Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;,
        Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field public static final DEFAULT_SCROLL_DURATION:I = 0xfa

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SliderPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/dp/sgp/autoimageslider/SliderPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 72
    sput-object v0, Lcom/dp/sgp/autoimageslider/SliderPager;->LAYOUT_ATTRS:[I

    .line 90
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$1;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/SliderPager$1;-><init>()V

    sput-object v0, Lcom/dp/sgp/autoimageslider/SliderPager;->COMPARATOR:Ljava/util/Comparator;

    .line 97
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$2;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/SliderPager$2;-><init>()V

    sput-object v0, Lcom/dp/sgp/autoimageslider/SliderPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 201
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/SliderPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/dp/sgp/autoimageslider/SliderPager;->sPositionComparator:Lcom/dp/sgp/autoimageslider/SliderPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 341
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    invoke-direct {p1}, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempItem:Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 108
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 112
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 114
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 129
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 130
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    .line 157
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    .line 184
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mNeedCalculatePageOffsets:Z

    .line 219
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/autoimageslider/SliderPager$3;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 227
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollState:I

    .line 342
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->initSliderPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    invoke-direct {p1}, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempItem:Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 108
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 112
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 113
    iput-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 114
    iput-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 129
    iput p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 130
    iput p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    const/4 p2, 0x1

    .line 139
    iput p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    .line 157
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    .line 184
    iput-boolean p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mNeedCalculatePageOffsets:Z

    .line 219
    new-instance p2, Lcom/dp/sgp/autoimageslider/SliderPager$3;

    invoke-direct {p2, p0}, Lcom/dp/sgp/autoimageslider/SliderPager$3;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;)V

    iput-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 227
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollState:I

    .line 347
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->initSliderPager()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    .line 59
    sget-object v0, Lcom/dp/sgp/autoimageslider/SliderPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;ILcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;)V
    .locals 10

    .line 1304
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1305
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 1306
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 1309
    iget v3, p3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    .line 1311
    iget v4, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 1314
    iget v4, p3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    iget p3, p3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    const/4 p3, 0x0

    .line 1316
    :goto_1
    iget v5, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 1317
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1318
    :goto_2
    iget v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 1320
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_2

    .line 1322
    :cond_1
    :goto_3
    iget v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    .line 1325
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1328
    :cond_2
    iput v4, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    .line 1329
    iget v5, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1331
    :cond_3
    iget v4, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-le v3, v4, :cond_6

    .line 1332
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1334
    iget p3, p3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 1336
    :goto_4
    iget v5, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 1337
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1338
    :goto_5
    iget v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1340
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_5

    .line 1342
    :cond_4
    :goto_6
    iget v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    .line 1345
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1348
    :cond_5
    iget v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1349
    iput p3, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1355
    :cond_6
    iget-object p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1356
    iget v3, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    .line 1357
    iget v4, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, -0x1

    .line 1358
    iget v5, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-nez v5, :cond_7

    iget v5, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    .line 1359
    iget v5, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_8

    iget v5, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_8

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    add-int/lit8 v5, p2, -0x1

    :goto_9
    if-ltz v5, :cond_b

    .line 1363
    iget-object v7, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1364
    :goto_a
    iget v8, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-le v4, v8, :cond_9

    .line 1365
    iget-object v8, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    move v4, v9

    goto :goto_a

    .line 1367
    :cond_9
    iget v8, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 1368
    iput v3, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    .line 1369
    iget v7, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-nez v7, :cond_a

    iput v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 1371
    :cond_b
    iget v3, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    iget v4, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1372
    iget p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 1375
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1376
    :goto_c
    iget v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    .line 1377
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    .line 1379
    :cond_c
    iget v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_d

    .line 1380
    iget v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    .line 1382
    :cond_d
    iput v3, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    .line 1383
    iget v4, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 1386
    :cond_e
    iput-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 1981
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1984
    invoke-direct {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    .line 1985
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 1987
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1988
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v3

    .line 1989
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollY()I

    move-result v4

    .line 1990
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1991
    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1993
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    .line 1995
    invoke-direct {p0, v5}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageScrolled(I)Z

    .line 2000
    :cond_2
    iput-boolean v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    const/4 v3, 0x0

    .line 2001
    :goto_1
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2002
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2003
    iget-boolean v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    .line 2005
    iput-boolean v2, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->scrolling:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 2010
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2012
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 2418
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2421
    :cond_1
    iget p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 2425
    :goto_1
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 2426
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2427
    iget-object p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2430
    iget p2, p2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget p3, p3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3

    .line 1930
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1931
    invoke-interface {v0, p1, p2, p3}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1934
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1935
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1937
    invoke-interface {v2, p1, p2, p3}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1941
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInternalPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1942
    invoke-interface {v0, p1, p2, p3}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3

    .line 1947
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1948
    invoke-interface {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1951
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1952
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1954
    invoke-interface {v2, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1958
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInternalPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1959
    invoke-interface {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3

    .line 1964
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1965
    invoke-interface {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1968
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1969
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1971
    invoke-interface {v2, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1975
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInternalPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1976
    invoke-interface {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 6

    .line 2022
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2024
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageTransformerLayerType:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2026
    :goto_1
    invoke-virtual {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 2669
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    .line 2670
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsUnableToDrag:Z

    .line 2672
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2674
    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2869
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2872
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2875
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2876
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2877
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2878
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2880
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2881
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2882
    check-cast p2, Landroid/view/ViewGroup;

    .line 2883
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2884
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2885
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2886
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2888
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 571
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;
    .locals 12

    .line 2375
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 2377
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2384
    :goto_2
    iget-object v10, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 2385
    iget-object v10, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    if-nez v9, :cond_2

    .line 2387
    iget v11, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 2389
    iget-object v10, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempItem:Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    .line 2390
    iput v1, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    .line 2391
    iput v7, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    .line 2392
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    invoke-virtual {v1, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, -0x1

    .line 2395
    :cond_2
    iget v1, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    .line 2398
    iget v5, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v9, :cond_4

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    cmpg-float v0, v2, v5

    if-ltz v0, :cond_6

    .line 2400
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_5

    goto :goto_4

    .line 2407
    :cond_5
    iget v7, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    .line 2409
    iget v5, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, 0x1

    move-object v0, v10

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v0
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 1

    .line 1505
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1506
    const-class v0, Lcom/dp/sgp/autoimageslider/SliderPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    .line 2018
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mGutterSize:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2655
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2656
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2660
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2661
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    .line 2662
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2663
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    .line 1825
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1826
    iget-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    if-eqz p1, :cond_0

    return v2

    .line 1831
    :cond_0
    iput-boolean v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 1832
    invoke-virtual {p0, v2, p1, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->onPageScrolled(IFI)V

    .line 1833
    iget-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCalledSuper:Z

    if-eqz p1, :cond_1

    return v2

    .line 1834
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1839
    :cond_2
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForCurrentScrollPosition()Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v0

    .line 1840
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v3

    .line 1841
    iget v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 1843
    iget v6, v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1844
    iget v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 1848
    iput-boolean v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCalledSuper:Z

    .line 1849
    invoke-virtual {p0, v6, p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->onPageScrolled(IFI)V

    .line 1850
    iget-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCalledSuper:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 1851
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performDrag(F)Z
    .locals 9

    .line 2324
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2325
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2327
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2329
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2331
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    mul-float v1, v1, v0

    .line 2332
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    mul-float v2, v2, v0

    .line 2336
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2337
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2338
    iget v6, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    .line 2340
    iget v1, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 2342
    :goto_0
    iget v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget-object v8, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2344
    iget v2, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    mul-float v2, v2, v0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 2350
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 2357
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_4
    move p1, v2

    .line 2363
    :cond_5
    :goto_2
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2364
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    .line 2365
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageScrolled(I)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 1666
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 1667
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1669
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 1673
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    goto :goto_1

    .line 1676
    :cond_1
    iget p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForPosition(I)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1677
    iget p2, p2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    iget p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1679
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 1680
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 1681
    invoke-direct {p0, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->completeScroll(Z)V

    .line 1682
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    .line 526
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 527
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 529
    iget-boolean v1, v1, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 530
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 2315
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2317
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    const/4 v0, -0x1

    .line 2306
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    .line 2307
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->endDrag()V

    .line 2308
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2309
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2310
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 651
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForPosition(I)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 655
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    iget v0, v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    .line 656
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 655
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 659
    invoke-virtual {p0, v0, v1, p3}, Lcom/dp/sgp/autoimageslider/SliderPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_3

    .line 661
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->triggerOnPageChangeEvent(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 665
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->triggerOnPageChangeEvent(I)V

    .line 667
    :cond_2
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->completeScroll(Z)V

    .line 668
    invoke-virtual {p0, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    .line 669
    invoke-direct {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageScrolled(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setAdapterViewPagerObserver(Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;)V
    .locals 6

    .line 517
    :try_start_0
    const-class v0, Landroid/support/v4/view/PagerAdapter;

    const-string v1, "setViewPagerObserver"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/database/DataSetObserver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 519
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 521
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2679
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2680
    iput-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1270
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1274
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1276
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1278
    invoke-virtual {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1279
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1281
    :cond_1
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/dp/sgp/autoimageslider/SliderPager;->sPositionComparator:Lcom/dp/sgp/autoimageslider/SliderPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private triggerOnPageChangeEvent(I)V
    .locals 4

    .line 1286
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v3, v2, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    if-eqz v3, :cond_1

    .line 1289
    check-cast v2, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    invoke-virtual {v2, p1}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealPosition(I)I

    move-result v2

    .line 1290
    invoke-interface {v1, v2}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 1292
    :cond_1
    invoke-interface {v1, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 1297
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInternalPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1298
    invoke-interface {v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2914
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2916
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2919
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2920
    invoke-virtual {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2921
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2922
    invoke-virtual {p0, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2923
    iget v4, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2924
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2935
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2938
    :cond_2
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2942
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2946
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;
    .locals 2

    .line 996
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;-><init>()V

    .line 997
    iput p1, v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    .line 998
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    .line 999
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_1

    .line 1000
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 1003
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1001
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public addOnAdapterChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnPageChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;)V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2959
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2960
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2961
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2962
    invoke-virtual {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2963
    iget v2, v2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2964
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1479
    invoke-virtual {p0, p3}, Lcom/dp/sgp/autoimageslider/SliderPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    invoke-virtual {p0, p3}, Lcom/dp/sgp/autoimageslider/SliderPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1482
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 1484
    iget-boolean v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    .line 1485
    iget-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInLayout:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 1486
    iget-boolean v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1487
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1489
    iput-boolean v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->needsMeasure:Z

    .line 1490
    invoke-virtual {p0, p1, p2, p3}, Lcom/dp/sgp/autoimageslider/SliderPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1492
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 7

    .line 2802
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 2807
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    .line 2808
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 2816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2817
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2820
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 2822
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2823
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SliderPager"

    .line 2822
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2830
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 2836
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2837
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 2839
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageLeft()Z

    move-result v0

    goto :goto_5

    .line 2841
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2846
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2847
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 2849
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageRight()Z

    move-result v0

    goto :goto_5

    .line 2851
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2859
    :cond_a
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageRight()Z

    move-result v2

    goto :goto_7

    .line 2856
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageLeft()Z

    move-result v2

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 2862
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 2539
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2542
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragging:Z

    .line 2543
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 2544
    iput v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    iput v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    .line 2545
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 2546
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2548
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2550
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 2551
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2552
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2553
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2554
    iput-wide v10, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2729
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2730
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2731
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2732
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2733
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2737
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2738
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2739
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2740
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2741
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2740
    invoke-virtual/range {v6 .. v11}, Lcom/dp/sgp/autoimageslider/SliderPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2747
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2702
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2706
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v0

    .line 2707
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 2709
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 2711
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3039
    instance-of v0, p1, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 720
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1800
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsScrollStarted:Z

    .line 1801
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1802
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v0

    .line 1803
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollY()I

    move-result v1

    .line 1804
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1805
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1808
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    .line 1809
    invoke-direct {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1810
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1811
    invoke-virtual {p0, v0, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    .line 1816
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 1821
    :cond_2
    invoke-direct {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->completeScroll(Z)V

    return-void
.end method

.method dataSetChanged()V
    .locals 10

    .line 1011
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1012
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mExpectedAdapterCount:I

    .line 1013
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    .line 1014
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1015
    :goto_0
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1018
    :goto_1
    iget-object v7, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1019
    iget-object v7, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1020
    iget-object v8, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 1027
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_2

    .line 1031
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v6, 0x1

    .line 1035
    :cond_2
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1038
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    iget v7, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v1, v7, :cond_3

    .line 1040
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_3
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 1046
    :cond_4
    iget v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    .line 1047
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v9, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne v1, v9, :cond_5

    move v2, v8

    .line 1052
    :cond_5
    iput v8, v7, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    .line 1058
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1061
    :cond_8
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    sget-object v5, Lcom/dp/sgp/autoimageslider/SliderPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_b

    .line 1065
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    .line 1067
    invoke-virtual {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1068
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 1069
    iget-boolean v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_9

    const/4 v6, 0x0

    .line 1070
    iput v6, v5, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->widthFactor:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1074
    :cond_a
    invoke-virtual {p0, v2, v4, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItemInternal(IZZ)V

    .line 1075
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2753
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 3007
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3008
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3012
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3014
    invoke-virtual {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3015
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3016
    invoke-virtual {p0, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3017
    iget v4, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3018
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 917
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2438
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2441
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2444
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2468
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2469
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2445
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2447
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2448
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2450
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2451
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2452
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2453
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2454
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2456
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2457
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2458
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getWidth()I

    move-result v2

    .line 2459
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2461
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2462
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2463
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2464
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2465
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2474
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 903
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 904
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .line 2565
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragging:Z

    if-eqz v0, :cond_1

    .line 2569
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 2571
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2572
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 2573
    iput-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    .line 2574
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v2

    .line 2575
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v3

    .line 2576
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForCurrentScrollPosition()Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v4

    .line 2577
    iget v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 2578
    iget v2, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 2579
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    iget v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2580
    invoke-direct {p0, v5, v3, v0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2582
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItemInternal(IZZI)V

    .line 2584
    :cond_0
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->endDrag()V

    const/4 v0, 0x0

    .line 2586
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragging:Z

    return-void

    .line 2566
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2766
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 2767
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2783
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2784
    invoke-virtual {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 2785
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2786
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    .line 2776
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2777
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageRight()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 2779
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    .line 2769
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2770
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageLeft()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 2772
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public fakeDragBy(F)V
    .locals 10

    .line 2597
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragging:Z

    if-eqz v0, :cond_5

    .line 2601
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2605
    :cond_0
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2607
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 2609
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2611
    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstOffset:F

    mul-float v1, v1, p1

    .line 2612
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastOffset:F

    mul-float v2, v2, p1

    .line 2614
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2615
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2616
    iget v5, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-eqz v5, :cond_1

    .line 2617
    iget v1, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    mul-float v1, v1, p1

    .line 2619
    :cond_1
    iget v3, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 2620
    iget v2, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    mul-float v2, v2, p1

    :cond_2
    cmpg-float p1, v0, v1

    if-gez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    cmpl-float p1, v0, v2

    if-lez p1, :cond_4

    move v0, v2

    .line 2629
    :cond_4
    :goto_0
    iget p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2630
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    .line 2631
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->pageScrolled(I)Z

    .line 2634
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2635
    iget-wide v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    iget v7, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2637
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 2598
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3029
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    invoke-direct {v0}, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3044
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3034
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 776
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 778
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 779
    :cond_1
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->sortChildDrawingOrder()V

    .line 781
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    iget p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->childIndex:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v1, v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    check-cast v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getRealPosition(I)I

    move-result v0

    return v0

    .line 604
    :cond_0
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 804
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 860
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;
    .locals 1

    .line 1530
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1531
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1534
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1536
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 1519
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1520
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1521
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method infoForPosition(I)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1540
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1541
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1542
    iget v2, v1, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initSliderPager()V
    .locals 5

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 352
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 353
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setFocusable(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 355
    new-instance v2, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;

    sget-object v3, Lcom/dp/sgp/autoimageslider/SliderPager;->sInterpolator:Landroid/view/animation/Interpolator;

    const/16 v4, 0xfa

    invoke-direct {v2, p0, v1, v4, v3}, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;Landroid/content/Context;ILandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    .line 356
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 357
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 359
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTouchSlop:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 360
    iput v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMinimumVelocity:I

    .line 361
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMaximumVelocity:I

    .line 362
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 363
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 365
    iput v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFlingDistance:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 366
    iput v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCloseEnough:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    .line 367
    iput v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDefaultGutterSize:I

    .line 369
    new-instance v1, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/dp/sgp/autoimageslider/SliderPager$MyAccessibilityDelegate;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 371
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 377
    :cond_0
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$4;

    invoke-direct {v0, p0}, Lcom/dp/sgp/autoimageslider/SliderPager$4;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 2650
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1551
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1552
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 431
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 434
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2480
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2483
    iget v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    .line 2484
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v1

    .line 2485
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getWidth()I

    move-result v2

    .line 2487
    iget v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2489
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 2490
    iget v7, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    .line 2491
    iget-object v8, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2492
    iget v9, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    .line 2493
    iget-object v10, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    iget v10, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 2495
    :goto_1
    iget v11, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2496
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_1

    .line 2500
    :cond_0
    iget v11, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1

    .line 2501
    iget v7, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    iget v11, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v11

    mul-float v7, v7, v4

    .line 2502
    iget v11, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    iget v12, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_2

    .line 2504
    :cond_1
    iget-object v11, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    .line 2509
    :goto_2
    iget v12, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 2510
    iget-object v12, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTopPageBounds:I

    iget v15, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    .line 2511
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mBottomPageBounds:I

    .line 2510
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2512
    iget-object v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v8, 0x0

    .line 2038
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v1, :cond_2

    .line 2051
    iget-boolean v2, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    return v9

    .line 2055
    :cond_1
    iget-boolean v2, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsUnableToDrag:Z

    if-eqz v2, :cond_2

    return v8

    :cond_2
    const/4 v2, 0x2

    if-eqz v1, :cond_a

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    goto/16 :goto_2

    .line 2156
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2072
    :cond_4
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    goto/16 :goto_2

    .line 2078
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2079
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2080
    iget v2, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    sub-float v11, v10, v2

    .line 2081
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 2082
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 2083
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionY:F

    sub-float v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v1, v11, v15

    if-eqz v1, :cond_6

    .line 2087
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    invoke-direct {v7, v1, v11}, Lcom/dp/sgp/autoimageslider/SliderPager;->isGutterDrag(FF)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v3, 0x0

    float-to-int v4, v11

    float-to-int v5, v10

    float-to-int v6, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    .line 2088
    invoke-virtual/range {v1 .. v6}, Lcom/dp/sgp/autoimageslider/SliderPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2090
    iput v10, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2091
    iput v13, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionY:F

    .line 2092
    iput-boolean v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsUnableToDrag:Z

    return v8

    .line 2095
    :cond_6
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mTouchSlop:I

    int-to-float v2, v1

    cmpl-float v2, v12, v2

    if-lez v2, :cond_8

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v12, v12, v2

    cmpl-float v2, v12, v14

    if-lez v2, :cond_8

    .line 2097
    iput-boolean v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    .line 2098
    invoke-direct {v7, v9}, Lcom/dp/sgp/autoimageslider/SliderPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2099
    invoke-virtual {v7, v9}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollState(I)V

    cmpl-float v1, v11, v15

    if-lez v1, :cond_7

    .line 2100
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    iget v2, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_7
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    iget v2, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mTouchSlop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2102
    iput v13, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionY:F

    .line 2103
    invoke-direct {v7, v9}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_8
    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-lez v1, :cond_9

    .line 2110
    iput-boolean v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsUnableToDrag:Z

    .line 2112
    :cond_9
    :goto_1
    iget-boolean v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_c

    .line 2114
    invoke-direct {v7, v10}, Lcom/dp/sgp/autoimageslider/SliderPager;->performDrag(F)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2115
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 2126
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    iput v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2127
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionY:F

    iput v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionY:F

    .line 2128
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    .line 2129
    iput-boolean v8, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsUnableToDrag:Z

    .line 2131
    iput-boolean v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsScrollStarted:Z

    .line 2132
    iget-object v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2133
    iget v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollState:I

    if-ne v1, v2, :cond_b

    iget-object v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    .line 2134
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v2, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mCloseEnough:I

    if-le v1, v2, :cond_b

    .line 2136
    iget-object v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2137
    iput-boolean v8, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    .line 2138
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    .line 2139
    iput-boolean v9, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    .line 2140
    invoke-direct {v7, v9}, Lcom/dp/sgp/autoimageslider/SliderPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2141
    invoke-virtual {v7, v9}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollState(I)V

    goto :goto_2

    .line 2143
    :cond_b
    invoke-direct {v7, v8}, Lcom/dp/sgp/autoimageslider/SliderPager;->completeScroll(Z)V

    .line 2144
    iput-boolean v8, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    .line 2160
    :cond_c
    :goto_2
    iget-object v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_d

    .line 2161
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2163
    :cond_d
    iget-object v1, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2169
    iget-boolean v0, v7, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    return v0

    .line 2044
    :cond_e
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->resetTouch()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception v0

    .line 2171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result v4

    .line 1693
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingTop()I

    move-result v5

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result v6

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingBottom()I

    move-result v7

    .line 1696
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 1703
    invoke-virtual {v0, v10}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1704
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1705
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 1708
    iget-boolean v14, v12, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 1709
    iget v14, v12, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1710
    iget v12, v12, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 1724
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1725
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1717
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 1720
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 1741
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1742
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 1734
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 1737
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 1747
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1748
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 1746
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    .line 1757
    invoke-virtual {v0, v6}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1758
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 1759
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 1761
    iget-boolean v10, v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    .line 1762
    iget v10, v10, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    .line 1765
    iget-boolean v14, v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1768
    iput-boolean v14, v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->needsMeasure:Z

    .line 1769
    iget v9, v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->widthFactor:F

    mul-float v13, v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 1772
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1775
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 1783
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    .line 1784
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1782
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1788
    :cond_a
    iput v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTopPageBounds:I

    sub-int/2addr v3, v7

    .line 1789
    iput v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mBottomPageBounds:I

    .line 1790
    iput v11, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDecorChildCount:I

    .line 1792
    iget-boolean v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1793
    iget v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollToItem(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 1795
    :goto_6
    iput-boolean v2, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1562
    invoke-static {v1, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    .line 1563
    invoke-static {v1, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->getDefaultSize(II)I

    move-result v3

    .line 1562
    invoke-virtual {v0, v2, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->setMeasuredDimension(II)V

    .line 1565
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getMeasuredWidth()I

    move-result v2

    .line 1566
    div-int/lit8 v3, v2, 0xa

    .line 1567
    iget v4, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mGutterSize:I

    .line 1570
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v5, v4, :cond_c

    .line 1580
    invoke-virtual {v0, v5}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1581
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    .line 1582
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    if-eqz v6, :cond_b

    .line 1583
    iget-boolean v10, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_b

    .line 1584
    iget v10, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1585
    iget v11, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v12, -0x80000000

    .line 1599
    :goto_5
    iget v13, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    .line 1601
    iget v10, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_6

    .line 1602
    iget v10, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->width:I

    goto :goto_6

    :cond_6
    move v10, v2

    :goto_6
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    move v13, v10

    move v10, v2

    .line 1605
    :goto_7
    iget v1, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_9

    .line 1607
    iget v1, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_8

    .line 1608
    iget v1, v6, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->height:I

    goto :goto_8

    :cond_8
    move v1, v3

    goto :goto_8

    :cond_9
    move v1, v3

    move v8, v12

    .line 1611
    :goto_8
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1612
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1613
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    .line 1616
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    goto :goto_9

    :cond_a
    if-eqz v7, :cond_b

    .line 1618
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v2, v1

    :cond_b
    :goto_9
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1624
    :cond_c
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mChildWidthMeasureSpec:I

    .line 1625
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mChildHeightMeasureSpec:I

    .line 1628
    iput-boolean v7, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInLayout:Z

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    const/4 v1, 0x0

    .line 1630
    iput-boolean v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInLayout:Z

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v3

    :goto_a
    if-ge v1, v3, :cond_f

    .line 1635
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1636
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_e

    .line 1641
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    if-eqz v5, :cond_d

    .line 1642
    iget-boolean v7, v5, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v2

    .line 1643
    iget v5, v5, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->widthFactor:F

    mul-float v7, v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1645
    iget v7, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 12

    .line 1872
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDecorChildCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 1873
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v0

    .line 1874
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result v3

    .line 1875
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result v4

    .line 1876
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getWidth()I

    move-result v5

    .line 1877
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    .line 1879
    invoke-virtual {p0, v7}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1880
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 1881
    iget-boolean v10, v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 1883
    :cond_0
    iget v9, v9, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    sub-int v9, v5, v4

    .line 1898
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1899
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 1891
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 1894
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 1904
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_4

    .line 1906
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1911
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/dp/sgp/autoimageslider/SliderPager;->dispatchOnPageScrolled(IFI)V

    .line 1913
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageTransformer:Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;

    if-eqz p1, :cond_7

    .line 1914
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result p1

    .line 1915
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    .line 1917
    invoke-virtual {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1918
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 1920
    iget-boolean v0, v0, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_6

    goto :goto_5

    .line 1921
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1922
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageTransformer:Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1926
    :cond_7
    iput-boolean v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2979
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2990
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2991
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2992
    invoke-virtual {p0, v5}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2993
    iget v6, v6, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v7, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2994
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1459
    instance-of v0, p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;

    if-nez v0, :cond_0

    .line 1460
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1464
    :cond_0
    check-cast p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;

    .line 1465
    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1467
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1468
    iget-object v1, p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1469
    iget p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1471
    :cond_1
    iget v0, p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->position:I

    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredCurItem:I

    .line 1472
    iget-object v0, p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1473
    iget-object p1, p1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1448
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1449
    new-instance v1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;

    invoke-direct {v1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1450
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    iput v0, v1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->position:I

    .line 1451
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/dp/sgp/autoimageslider/SliderPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1653
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1657
    iget p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/dp/sgp/autoimageslider/SliderPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2178
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2185
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2191
    :cond_1
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 2196
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2197
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2199
    :cond_3
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 2294
    :cond_4
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2295
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2287
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2288
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2289
    iput v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2290
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2281
    :cond_6
    iget-boolean p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    .line 2282
    iget p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollToItem(IZIZ)V

    .line 2283
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2217
    :cond_7
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    if-nez v0, :cond_a

    .line 2218
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    .line 2222
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2225
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2226
    iget v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2228
    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2232
    iget v6, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 2234
    iput-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    .line 2235
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2236
    iget v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2238
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionY:F

    .line 2239
    invoke-virtual {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollState(I)V

    .line 2240
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    .line 2243
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2245
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2250
    :cond_a
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2252
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2253
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2254
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 2258
    :cond_b
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2259
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 2260
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2261
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2262
    iput-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    .line 2263
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v2

    .line 2264
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v3

    .line 2265
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForCurrentScrollPosition()Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v4

    .line 2266
    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 2267
    iget v6, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2268
    iget v2, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 2270
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2271
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2272
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 2273
    invoke-direct {p0, v6, v3, v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2275
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItemInternal(IZZI)V

    .line 2277
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->resetTouch()Z

    move-result v2

    goto :goto_1

    .line 2206
    :cond_c
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2207
    iput-boolean v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    .line 2208
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    .line 2211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionX:F

    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionX:F

    .line 2212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInitialMotionY:F

    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mLastMotionY:F

    .line 2213
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mActivePointerId:I

    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 2299
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    return v1

    :cond_f
    :goto_2
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 2894
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2895
    invoke-virtual {p0, v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 2902
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2903
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 1

    .line 1080
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1085
    iget v2, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-eq v2, v1, :cond_0

    .line 1086
    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForPosition(I)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v2

    .line 1087
    iput v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1090
    :goto_0
    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_1

    .line 1091
    invoke-direct/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->sortChildDrawingOrder()V

    return-void

    .line 1099
    :cond_1
    iget-boolean v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    if-eqz v1, :cond_2

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->sortChildDrawingOrder()V

    return-void

    .line 1108
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1112
    :cond_3
    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1114
    iget v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    .line 1115
    iget v4, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1116
    iget-object v6, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1117
    iget v8, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1119
    iget v7, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mExpectedAdapterCount:I

    if-ne v6, v7, :cond_1e

    const/4 v7, 0x0

    .line 1137
    :goto_1
    iget-object v8, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1138
    iget-object v8, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 1139
    iget v9, v8, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v10, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-lt v9, v10, :cond_4

    .line 1140
    iget v9, v8, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v10, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1146
    iget v8, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {v0, v8, v7}, Lcom/dp/sgp/autoimageslider/SliderPager;->addNewItem(II)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_17

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    .line 1155
    iget-object v11, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1156
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    const/4 v14, 0x0

    goto :goto_4

    .line 1157
    :cond_8
    iget v14, v8, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    sub-float v14, v13, v14

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    .line 1159
    :goto_4
    iget v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    add-int/lit8 v3, v3, -0x1

    const/4 v15, 0x0

    :goto_5
    if-ltz v3, :cond_e

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_a

    if-ge v3, v4, :cond_a

    if-nez v11, :cond_9

    goto :goto_7

    .line 1164
    :cond_9
    iget v5, v11, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_d

    iget-boolean v5, v11, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_d

    .line 1165
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1166
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v11, v11, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_c

    .line 1173
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    .line 1175
    iget v5, v11, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_b

    .line 1176
    iget v5, v11, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_c

    .line 1178
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_6

    :cond_b
    add-int/lit8 v5, v10, 0x1

    .line 1180
    invoke-virtual {v0, v3, v5}, Lcom/dp/sgp/autoimageslider/SliderPager;->addNewItem(II)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v5

    .line 1181
    iget v5, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_c

    .line 1183
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    move-object v11, v5

    :cond_d
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 1187
    :cond_e
    :goto_7
    iget v3, v8, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_16

    .line 1190
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    if-gtz v12, :cond_10

    const/4 v10, 0x0

    goto :goto_9

    .line 1192
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    .line 1193
    :goto_9
    iget v11, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    :goto_a
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_16

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_13

    if-le v11, v1, :cond_13

    if-nez v5, :cond_11

    goto :goto_c

    .line 1198
    :cond_11
    iget v12, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_15

    iget-boolean v12, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_15

    .line 1199
    iget-object v12, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1200
    iget-object v12, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1205
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    goto :goto_b

    :cond_13
    if-eqz v5, :cond_14

    .line 1207
    iget v12, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_14

    .line 1208
    iget v5, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 1210
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    goto :goto_b

    .line 1212
    :cond_14
    invoke-virtual {v0, v11, v4}, Lcom/dp/sgp/autoimageslider/SliderPager;->addNewItem(II)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1214
    iget v5, v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    .line 1215
    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    iget-object v5, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    :cond_15
    :goto_b
    goto :goto_a

    .line 1220
    :cond_16
    :goto_c
    invoke-direct {v0, v8, v7, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->calculatePageOffsets(Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;ILcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;)V

    .line 1222
    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v2, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    iget-object v3, v8, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1232
    :cond_17
    iget-object v1, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1236
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_19

    .line 1238
    invoke-virtual {v0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1239
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;

    .line 1240
    iput v2, v4, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->childIndex:I

    .line 1241
    iget-boolean v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_18

    iget v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->widthFactor:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_18

    .line 1243
    invoke-virtual {v0, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1245
    iget v5, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->widthFactor:F

    iput v5, v4, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->widthFactor:F

    .line 1246
    iget v3, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iput v3, v4, Lcom/dp/sgp/autoimageslider/SliderPager$LayoutParams;->position:I

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1250
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->sortChildDrawingOrder()V

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1254
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForAnyChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v3

    goto :goto_e

    :cond_1a
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_1b

    .line 1255
    iget v1, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v2, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-eq v1, v2, :cond_1d

    :cond_1b
    const/4 v5, 0x0

    .line 1256
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1d

    .line 1257
    invoke-virtual {v0, v5}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1258
    invoke-virtual {v0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->infoForChild(Landroid/view/View;)Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1259
    iget v2, v2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    .line 1260
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1d
    :goto_10
    return-void

    .line 1122
    :cond_1e
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    .line 1124
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1126
    :goto_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Pager class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1130
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Problematic adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 1131
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :goto_12
    throw v2

    :goto_13
    goto :goto_12
.end method

.method public removeOnAdapterChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 711
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1511
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1514
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .line 456
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 457
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setAdapterViewPagerObserver(Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;)V

    .line 458
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 459
    :goto_0
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    .line 461
    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->position:I

    iget-object v3, v3, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 464
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 465
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->removeNonDecorViews()V

    .line 466
    iput v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    .line 467
    invoke-virtual {p0, v2, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollTo(II)V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 471
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 472
    iput v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mExpectedAdapterCount:I

    if-eqz p1, :cond_5

    .line 475
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mObserver:Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;

    if-nez v3, :cond_2

    .line 476
    new-instance v3, Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;

    invoke-direct {v3, p0}, Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;)V

    iput-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mObserver:Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;

    .line 478
    :cond_2
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mObserver:Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;

    invoke-direct {p0, v3}, Lcom/dp/sgp/autoimageslider/SliderPager;->setAdapterViewPagerObserver(Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;)V

    .line 480
    :try_start_0
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mObserver:Lcom/dp/sgp/autoimageslider/SliderPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 484
    :goto_1
    iput-boolean v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    .line 485
    iget-boolean v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 486
    iput-boolean v4, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    .line 487
    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mExpectedAdapterCount:I

    .line 488
    iget v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 489
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 490
    iget v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v2, v4}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItemInternal(IZZ)V

    const/4 v3, -0x1

    .line 491
    iput v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredCurItem:I

    .line 492
    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 493
    iput-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    .line 495
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    goto :goto_2

    .line 497
    :cond_4
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->requestLayout()V

    .line 502
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 503
    iget-object v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_6

    .line 504
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/dp/sgp/autoimageslider/SliderPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    .line 583
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v1, v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    if-eqz v1, :cond_0

    .line 594
    check-cast v0, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/autoimageslider/InfiniteAdapter/InfinitePagerAdapter;->getMiddlePosition(I)I

    move-result p1

    :cond_0
    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPopulatePending:Z

    .line 597
    invoke-virtual {p0, p1, p2, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    .line 616
    iget p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 617
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 624
    iget-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 626
    :cond_3
    :goto_0
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    .line 627
    iget v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 631
    :goto_1
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 632
    iget-object v2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;

    iput-boolean p3, v2, Lcom/dp/sgp/autoimageslider/SliderPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 635
    :cond_5
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    .line 637
    :cond_6
    iget-boolean p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mFirstLayout:Z

    if-eqz p3, :cond_7

    .line 640
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    .line 641
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->triggerOnPageChangeEvent(I)V

    .line 642
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->requestLayout()V

    goto :goto_2

    .line 644
    :cond_7
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate(I)V

    .line 645
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->scrollToItem(IZIZ)V

    :goto_2
    return-void

    .line 613
    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method setInternalPageChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;)Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInternalPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    .line 792
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mInternalPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " too small; defaulting to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SliderPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 830
    :cond_0
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 831
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOffscreenPageLimit:I

    .line 832
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mOnPageChangeListener:Lcom/dp/sgp/autoimageslider/SliderPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 845
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    .line 846
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    .line 848
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getWidth()I

    move-result v1

    .line 849
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->recomputeScrollPosition(IIII)V

    .line 851
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 871
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setWillNotDraw(Z)V

    .line 872
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;)V
    .locals 1

    const/4 v0, 0x2

    .line 743
    invoke-virtual {p0, p1, p2, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 762
    :goto_0
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageTransformer:Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 763
    :goto_2
    iput-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageTransformer:Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;

    .line 764
    invoke-virtual {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 766
    :cond_3
    iput v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrder:I

    .line 767
    iput p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageTransformerLayerType:I

    goto :goto_3

    .line 769
    :cond_4
    iput v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mDrawingOrder:I

    :goto_3
    if-eqz v3, :cond_5

    .line 771
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    :cond_5
    return-void
.end method

.method public setScrollDuration(I)V
    .locals 1

    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, p1, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollDuration(ILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setScrollDuration(ILandroid/view/animation/Interpolator;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 891
    new-instance v0, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;Landroid/content/Context;ILandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    goto :goto_0

    .line 893
    :cond_0
    new-instance p2, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;

    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager$OwnScroller;-><init>(Lcom/dp/sgp/autoimageslider/SliderPager;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    :goto_0
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 438
    iget v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 442
    :cond_0
    iput p1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScrollState:I

    .line 443
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageTransformer:Lcom/dp/sgp/autoimageslider/SliderPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 445
    :goto_0
    invoke-direct {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->enableLayers(Z)V

    .line 447
    :cond_2
    invoke-direct {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, p1, p2, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 9

    .line 938
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 940
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 951
    iget-boolean v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 953
    :goto_1
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 954
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 956
    :cond_3
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollX()I

    move-result v0

    :goto_2
    move v4, v0

    .line 958
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 962
    invoke-direct {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->completeScroll(Z)V

    .line 963
    invoke-virtual {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->populate()V

    .line 964
    invoke-virtual {p0, v1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollState(I)V

    return-void

    .line 968
    :cond_4
    invoke-direct {p0, v2}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 969
    invoke-virtual {p0, p1}, Lcom/dp/sgp/autoimageslider/SliderPager;->setScrollState(I)V

    .line 971
    invoke-direct {p0}, Lcom/dp/sgp/autoimageslider/SliderPager;->getClientWidth()I

    move-result p1

    .line 972
    div-int/lit8 p2, p1, 0x2

    .line 973
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 975
    invoke-virtual {p0, v0}, Lcom/dp/sgp/autoimageslider/SliderPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    .line 978
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_5

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 980
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 982
    :cond_5
    iget-object p2, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mCurItem:I

    invoke-virtual {p2, p3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float p1, p1, p2

    .line 983
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    .line 986
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 990
    iput-boolean v1, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mIsScrollStarted:Z

    .line 991
    iget-object v3, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 992
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 886
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dp/sgp/autoimageslider/SliderPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
