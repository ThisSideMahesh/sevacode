.class Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$1;
.super Ljava/lang/Object;
.source "OfflineSwamiCharitraDetailActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 123
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$1;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->t1:Landroid/speech/tts/TextToSpeech;

    const-string v0, "mr-IN"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_0
    return-void
.end method
