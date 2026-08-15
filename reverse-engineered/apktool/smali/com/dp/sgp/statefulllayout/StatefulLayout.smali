.class public Lcom/dp/sgp/statefulllayout/StatefulLayout;
.super Landroid/widget/LinearLayout;
.source "StatefulLayout.java"


# static fields
.field private static final DEFAULT_ANIM_ENABLED:Z = true

.field private static final DEFAULT_IN_ANIM:I = 0x10a0000

.field private static final DEFAULT_OUT_ANIM:I = 0x10a0001

.field private static final MSG_ONE_CHILD:Ljava/lang/String; = "StatefulLayout must have one child!"


# instance fields
.field private animCounter:I

.field private animationEnabled:Z

.field private content:Landroid/view/View;

.field private inAnimation:Landroid/view/animation/Animation;

.field private outAnimation:Landroid/view/animation/Animation;

.field private stButton:Landroid/widget/Button;

.field private stContainer:Landroid/widget/LinearLayout;

.field private stImage:Landroid/widget/ImageView;

.field private stMessage:Landroid/widget/TextView;

.field private stProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/dp/sgp/R$styleable;->stfStatefulLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animationEnabled:Z

    const/high16 v0, 0x10a0000

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->anim(I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->inAnimation:Landroid/view/animation/Animation;

    const/4 p2, 0x2

    const v0, 0x10a0001

    .line 68
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->anim(I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/statefulllayout/StatefulLayout;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animCounter:I

    return p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->content:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/statefulllayout/StatefulLayout;)Landroid/view/animation/Animation;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->inAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/statefulllayout/StatefulLayout;Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->state(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    return-void
.end method

.method private anim(I)Landroid/view/animation/Animation;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method private state(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V
    .locals 4

    .line 286
    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    :goto_0
    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getImageRes()I

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getImageRes()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :goto_1
    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->getButtonText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 313
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private str(I)Ljava/lang/String;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->inAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public isAnimationEnabled()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animationEnabled:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 107
    invoke-virtual {p0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->setOrientation(I)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->content:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00d4

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a01ab

    .line 114
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01ae

    .line 116
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a01ac

    .line 117
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01ad

    .line 118
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stMessage:Landroid/widget/TextView;

    const v0, 0x7f0a01aa

    .line 119
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stButton:Landroid/widget/Button;

    return-void

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StatefulLayout must have one child!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animationEnabled:Z

    return-void
.end method

.method public setInAnimation(I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->anim(I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->inAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->inAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setOutAnimation(I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->anim(I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public showContent()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 127
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 128
    iget v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animCounter:I

    .line 129
    iget-object v1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout$1;-><init>(Lcom/dp/sgp/statefulllayout/StatefulLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->content:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->isAnimationEnabled()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 250
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 251
    iget v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->animCounter:I

    .line 252
    iget-object v2, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/dp/sgp/statefulllayout/StatefulLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout$2;-><init>(Lcom/dp/sgp/statefulllayout/StatefulLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 262
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->content:Landroid/view/View;

    iget-object v1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->state(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout$3;-><init>(Lcom/dp/sgp/statefulllayout/StatefulLayout;ILcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    iget-object p1, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->content:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/StatefulLayout;->stContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->state(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    :goto_0
    return-void
.end method

.method public showEmpty()V
    .locals 1

    const v0, 0x7f110075

    .line 165
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty(I)V

    return-void
.end method

.method public showEmpty(I)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty(Ljava/lang/String;)V

    return-void
.end method

.method public showEmpty(ILjava/lang/String;)V
    .locals 1

    .line 179
    new-instance v0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-direct {v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;-><init>()V

    .line 180
    invoke-virtual {v0, p2}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p2

    .line 181
    invoke-virtual {p2, p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->image(I)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    return-void
.end method

.method public showEmpty(Ljava/lang/String;)V
    .locals 1

    .line 173
    new-instance v0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-direct {v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;-><init>()V

    .line 174
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    const v0, 0x7f08012c

    .line 175
    invoke-virtual {p1, v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->image(I)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    return-void
.end method

.method public showError(ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showError(Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f110148

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showError(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 196
    new-instance v0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-direct {v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;-><init>()V

    .line 197
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    const v0, 0x7f0802a7

    .line 198
    invoke-virtual {p1, v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->image(I)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    const v0, 0x7f110147

    .line 199
    invoke-direct {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonText(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p2}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonClickListener(Landroid/view/View$OnClickListener;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    return-void
.end method

.method public showLoading()V
    .locals 1

    const v0, 0x7f110149

    .line 149
    invoke-virtual {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading(I)V

    return-void
.end method

.method public showLoading(I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading(Ljava/lang/String;)V

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-direct {v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;-><init>()V

    .line 158
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->loading()Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    return-void
.end method

.method public showLocationOff(ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLocationOff(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLocationOff(Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f11014a

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLocationOff(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showLocationOff(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 232
    new-instance v0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-direct {v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;-><init>()V

    .line 233
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    const v0, 0x7f0802a8

    .line 234
    invoke-virtual {p1, v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->image(I)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    const v0, 0x7f110147

    .line 235
    invoke-direct {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonText(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 236
    invoke-virtual {p1, p2}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonClickListener(Landroid/view/View$OnClickListener;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    return-void
.end method

.method public showOffline(ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showOffline(Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x7f11014b

    .line 206
    invoke-virtual {p0, v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showOffline(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    invoke-direct {v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;-><init>()V

    .line 215
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    const v0, 0x7f0802a9

    .line 216
    invoke-virtual {p1, v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->image(I)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    const v0, 0x7f110147

    .line 217
    invoke-direct {p0, v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->str(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonText(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 218
    invoke-virtual {p1, p2}, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonClickListener(Landroid/view/View$OnClickListener;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;

    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showCustom(Lcom/dp/sgp/statefulllayout/CustomStateOptions;)V

    return-void
.end method
