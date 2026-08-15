.class Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$6;
.super Ljava/lang/Object;
.source "OfflineSwamiCharitraDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 338
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$6;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 341
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$6;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$6;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->intValue:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object p1

    .line 342
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$6;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget-object v0, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->t1:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method
