.class Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;
.super Ljava/lang/Object;
.source "SwamiCharitraDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 326
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget v0, v0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->counter:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v1, 0x7f08013d

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-static {v1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->access$000(Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget v2, v2, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/SwamiDatum;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setAdhyayid(Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    iget-object p1, p1, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v1, 0x7f08013e

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 332
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity$5;->this$0:Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Activity/Deatils/SwamiCharitraDetailActivity;->Submitabjachandi()V

    :goto_0
    return-void
.end method
