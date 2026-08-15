.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;
.super Landroid/support/v4/app/Fragment;
.source "MantraJapFragment.java"


# instance fields
.field private DELAY:I

.field private chantingData:Lcom/dp/sgp/Model/ChantingData;

.field private imageView:Landroid/widget/ImageView;

.field private isBookmarked:Z

.field private ivBookmark:Landroid/widget/ImageView;

.field private loadingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCount:I

.field private mRound:I

.field mp:Landroid/media/MediaPlayer;

.field private myTimer:Ljava/util/Timer;

.field pattern:[J

.field private rlBookmark:Landroid/widget/RelativeLayout;

.field private rlRoot:Landroid/widget/RelativeLayout;

.field private rootView:Landroid/view/View;

.field private tvCount:Landroid/widget/TextView;

.field private tvCountTitle:Landroid/widget/TextView;

.field private tvRound:Landroid/widget/TextView;

.field private tvRoundTitle:Landroid/widget/TextView;

.field v:Landroid/view/View;

.field vibrt:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->isBookmarked:Z

    const/16 v1, 0x122

    .line 40
    iput v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->DELAY:I

    .line 44
    iput v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mRound:I

    .line 45
    iput v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 52
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->pattern:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x64
    .end array-data
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->startChanting()V

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->isBookmarked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->isBookmarked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->ivBookmark:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvRound:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->loadingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    return p0
.end method

.method static synthetic access$602(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Lcom/dp/sgp/Model/ChantingData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    return-object p0
.end method

.method static synthetic access$800(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mRound:I

    return p0
.end method

.method static synthetic access$808(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mRound:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mRound:I

    return v0
.end method

.method static synthetic access$900(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private checkFlagsForCount()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/ChantingData;->isSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 245
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 247
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100002

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mp:Landroid/media/MediaPlayer;

    .line 249
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/ChantingData;->isVibrate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->vibrt:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method private checkFlagsForRound()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/ChantingData;->isSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->vibrt:Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private findViews()V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvRoundTitle:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvCountTitle:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvRound:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvCount:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rlBookmark:Landroid/widget/RelativeLayout;

    .line 99
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->ivBookmark:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rlRoot:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvCountTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v3}, Lcom/dp/sgp/Model/ChantingData;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvRoundTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v3}, Lcom/dp/sgp/Model/ChantingData;->getRound()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->loadingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 109
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rlRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "chanting_count_bookmark"

    invoke-static {v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->isBookmarked:Z

    .line 122
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->ivBookmark:Landroid/widget/ImageView;

    const v4, 0x7f080166

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    .line 125
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v3}, Lcom/dp/sgp/Model/ChantingData;->getCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 126
    iget v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->isBookmarked:Z

    .line 130
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->ivBookmark:Landroid/widget/ImageView;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "chanting_round_bookmark"

    invoke-static {v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvRound:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/dp/sgp/Constants/PreferenceHelper;->getIntPreferenceValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mRound:I

    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->tvRound:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rlBookmark:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startChanting()V
    .locals 4

    .line 178
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    .line 179
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mRound:I

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/ChantingData;->getRound()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rlRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0

    .line 183
    :cond_0
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/ChantingData;->getCount()I

    move-result v1

    const v2, 0x7f0801ff

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->loadingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 187
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 189
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->checkFlagsForCount()V

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$3;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V

    iget v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 202
    :cond_1
    iget v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mCount:I

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/ChantingData;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->loadingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 206
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 208
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->checkFlagsForRound()V

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment$4;-><init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;)V

    iget v2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/dp/sgp/Base/UiHelper;->hideKeyboard(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_RESULT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/ChantingData;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->chantingData:Lcom/dp/sgp/Model/ChantingData;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0082

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u092e\u0902\u0924\u094d\u0930 \u091c\u092a"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->findViews()V

    .line 82
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->vibrt:Landroid/os/Vibrator;

    .line 83
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100002

    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->mp:Landroid/media/MediaPlayer;

    .line 87
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
