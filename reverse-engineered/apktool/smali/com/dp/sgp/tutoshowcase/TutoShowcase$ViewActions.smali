.class public Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;
.super Ljava/lang/Object;
.source "TutoShowcase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewActions"
.end annotation


# instance fields
.field private final fitsSystemWindow:Z

.field private final settings:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

.field private final tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;Landroid/view/View;Z)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    .line 216
    iput-object p2, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    .line 217
    new-instance p1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;)V

    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->settings:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    .line 218
    iput-boolean p3, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->fitsSystemWindow:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)I
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->getStatusBarOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;F)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addRoundRectOnView(F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;F)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addCircleOnView(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->settings:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    return-object p0
.end method

.method static synthetic access$700(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;Z)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->displaySwipable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Landroid/view/View;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->displayScrollableOnView()V

    return-void
.end method

.method private addCircleOnView(F)V
    .locals 5

    .line 347
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 350
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 351
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->getStatusBarOffset()I

    move-result v3

    sub-int/2addr v2, v3

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    .line 353
    new-instance v4, Lcom/dp/sgp/tutoshowcase/shapes/Circle;

    invoke-direct {v4, v1, v2, v3}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;-><init>(III)V

    .line 354
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->settings:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$1100(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/dp/sgp/tutoshowcase/shapes/Circle;->setDisplayBorder(Z)V

    .line 355
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$1200(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/dp/sgp/tutoshowcase/TutoView;->addCircle(Lcom/dp/sgp/tutoshowcase/shapes/Circle;)V

    .line 357
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->settings:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$1300(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addClickableView(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;F)V

    .line 359
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$1200(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/tutoshowcase/TutoView;->postInvalidate()V

    return-void
.end method

.method private addClickableView(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;F)V
    .locals 4

    .line 432
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int v1, v1

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int p3, v2

    .line 435
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 436
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int p1, p3, p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v3, p1

    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->getStatusBarOffset()I

    move-result p1

    sub-int/2addr v3, p1

    .line 437
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p1, v1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p1, v3

    .line 438
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    int-to-float p1, v2

    .line 439
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 440
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$600(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 442
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$600(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private addRoundRectOnView(F)V
    .locals 6

    .line 395
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 396
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 400
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x28

    .line 401
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->getStatusBarOffset()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x28

    .line 402
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, 0x50

    .line 403
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, 0x50

    .line 405
    new-instance v5, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;-><init>(IIII)V

    .line 406
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->settings:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$1100(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;->setDisplayBorder(Z)V

    .line 407
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$1200(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/dp/sgp/tutoshowcase/TutoView;->addRoundRect(Lcom/dp/sgp/tutoshowcase/shapes/RoundRect;)V

    .line 408
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->settings:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    invoke-static {v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$1300(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addClickableView(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;F)V

    .line 409
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$1200(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/tutoshowcase/TutoView;->postInvalidate()V

    return-void
.end method

.method private displayScrollableOnView()V
    .locals 5

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 317
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800f8

    .line 318
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$5;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$5;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;Landroid/graphics/Rect;Landroid/widget/ImageView;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 341
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$600(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$600(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private displaySwipable(Z)V
    .locals 4

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 237
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v2, 0x7f0800f9

    .line 239
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0800fa

    .line 241
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$1;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;Landroid/graphics/Rect;Landroid/widget/ImageView;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 272
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$600(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 273
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-static {p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->access$600(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private getStatusBarOffset()I
    .locals 4

    .line 420
    iget-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->fitsSystemWindow:Z

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 423
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addCircle()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 379
    invoke-virtual {p0, v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addCircle(F)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;

    move-result-object v0

    return-object v0
.end method

.method public addCircle(F)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$7;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 391
    new-instance p1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;

    invoke-direct {p1, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    return-object p1
.end method

.method public addRoundRect()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 363
    invoke-virtual {p0, v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->addRoundRect(F)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;

    move-result-object v0

    return-object v0
.end method

.method public addRoundRect(F)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$6;

    invoke-direct {v1, p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$6;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 375
    new-instance p1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;

    invoke-direct {p1, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    return-object p1
.end method

.method public displayScrollable()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$4;

    invoke-direct {v1, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$4;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 309
    new-instance v0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;

    invoke-direct {v0, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    return-object v0
.end method

.method public displaySwipableLeft()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$2;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 285
    new-instance v0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;

    invoke-direct {v0, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    return-object v0
.end method

.method public displaySwipableRight()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$3;

    invoke-direct {v1, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions$3;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 297
    new-instance v0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;

    invoke-direct {v0, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    return-object v0
.end method

.method public on(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->on(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    move-result-object p1

    return-object p1
.end method

.method public on(Landroid/view/View;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->on(Landroid/view/View;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    move-result-object p1

    return-object p1
.end method

.method public onClickContentView(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->onClickContentView(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object p1

    return-object p1
.end method

.method public show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object v0

    return-object v0
.end method

.method public showOnce(Ljava/lang/String;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->tutoShowcase:Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->showOnce(Ljava/lang/String;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object p1

    return-object p1
.end method
