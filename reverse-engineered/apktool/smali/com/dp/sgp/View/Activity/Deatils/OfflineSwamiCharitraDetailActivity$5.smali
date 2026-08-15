.class Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;
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

    .line 306
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 310
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget p1, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-static {v0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    .line 312
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v0, 0x7f08013e

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 316
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget p1, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    add-int/2addr p1, v1

    .line 317
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v2, v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-virtual {v0, v2, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->UpdateOffflineData(II)V

    .line 318
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 319
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v1, v1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adhaycount"

    invoke-virtual {p1, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v1, v1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->UpdateIncrementalData(II)V

    .line 322
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->Filldata(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iget v0, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->UpdateOffflineData(II)V

    .line 328
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-virtual {p1, v2}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->Filldata(I)V

    .line 329
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    iput v2, p1, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 330
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->FillRawData()V

    :goto_0
    return-void
.end method
