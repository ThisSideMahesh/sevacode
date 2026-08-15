.class public Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;
.super Lcom/google/android/youtube/player/YouTubeBaseActivity;
.source "YoutubeActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# static fields
.field private static final RECOVERY_DIALOG_REQUEST:I = 0x1

.field private static final YoutubeDeveloperKey:Ljava/lang/String; = "AIzaSyCpMIfwABV3t6NzYtAFq1uLkBwqlHFM8rs"


# instance fields
.field private VideoId:Ljava/lang/String;

.field private YPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

.field private desc_short:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field txt_desc:Landroid/widget/TextView;

.field txt_desc1:Landroid/widget/TextView;

.field txt_desc2:Landroid/widget/TextView;

.field txt_header:Landroid/widget/TextView;

.field txt_header1:Landroid/widget/TextView;

.field txt_header2:Landroid/widget/TextView;

.field youTubeView:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->VideoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->desc_short:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .locals 1

    const v0, 0x7f0a0272

    .line 89
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;

    move-result-object p1

    const-string p2, "AIzaSyCpMIfwABV3t6NzYtAFq1uLkBwqlHFM8rs"

    invoke-interface {p1, p2, p0}, Lcom/google/android/youtube/player/YouTubePlayer$Provider;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0041

    .line 33
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "media_url"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->extra:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a0272

    .line 42
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->youTubeView:Lcom/google/android/youtube/player/YouTubePlayerView;

    const-string v1, "AIzaSyCpMIfwABV3t6NzYtAFq1uLkBwqlHFM8rs"

    .line 43
    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 44
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->extra:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->extra:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->extra:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->VideoId:Ljava/lang/String;

    return-void
.end method

.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 2

    .line 70
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p2, p0, v0}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "There was an error initializing the YouTubePlayer"

    .line 73
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 0

    .line 55
    iput-object p2, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->YPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez p3, :cond_0

    .line 63
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Youtube/YoutubeActivity;->VideoId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->cueVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
