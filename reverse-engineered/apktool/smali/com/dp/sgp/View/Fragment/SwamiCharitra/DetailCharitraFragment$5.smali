.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$5;
.super Ljava/lang/Object;
.source "DetailCharitraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$5;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 769
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$5;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$5;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->intValue:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object p1

    .line 770
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$5;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->t1:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method
