.class Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;
.super Ljava/lang/Object;
.source "HomeFragmenFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->HomeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V
    .locals 3

    if-eqz p1, :cond_8

    .line 605
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 606
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 607
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->message:Ljava/lang/String;

    .line 611
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->status:Ljava/lang/String;

    .line 613
    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getData()Lcom/dp/sgp/Model/HomeResponse/HomeData;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 614
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;->getData()Lcom/dp/sgp/Model/HomeResponse/HomeData;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    .line 616
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getPanchangs()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 617
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getPanchangs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    .line 619
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_panchangs_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_tithi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getTithi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_var:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getVar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_nakshatra:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getNakshatra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_rahukal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getRahukal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_bhadrapad:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getBhadrapad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_krishnakunj:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getKrushnapaksha()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_shubharambh:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getShubhashubh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dinvishesh:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getDinvishesh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_datetime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getAashle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dinvishesh:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->panchangs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Panchang;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Panchang;->getDinvishesh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProfile()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 648
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProfile()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->profile:Ljava/util/List;

    .line 649
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->profile:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 650
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->profile:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/Profile;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/Profile;->getFull_name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSevamarg()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 656
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSevamarg()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    .line 658
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 659
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_added_on_sevamarg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getAdded_on()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_description_sevamarg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getAdded_on()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getList_type()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 663
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_Weather:Landroid/widget/TextView;

    const-string v0, "\u092e\u093e\u0933"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 665
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_Weather:Landroid/widget/TextView;

    const-string v0, "\u092a\u093e\u0930\u093e\u092f\u0923"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_title_sevamarg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getList_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->txt_maal_count:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getList_value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_added_on_sevamarg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sevamarg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Sevamarg;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getYoutube()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 678
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getYoutube()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    .line 679
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 681
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    new-instance v0, Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubelist:Ljava/util/List;

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {v2}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubeVideoAdapter:Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

    .line 682
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$100(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->youtubeVideoAdapter:Lcom/dp/sgp/Adapters/YoutubeVideoAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 686
    :cond_4
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getBanners()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 687
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getBanners()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    .line 689
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 691
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    const-string v1, "banners"

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->saveBanner(Ljava/util/List;Ljava/lang/String;)V

    .line 692
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$200(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Lcom/dp/sgp/Adapters/SliderAdapterExample;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V

    .line 693
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object v0, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorAnimation(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    .line 694
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object v0, Lcom/dp/sgp/autoimageslider/SliderAnimations;->SIMPLETRANSFORMATION:Lcom/dp/sgp/autoimageslider/SliderAnimations;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderTransformAnimation(Lcom/dp/sgp/autoimageslider/SliderAnimations;)V

    .line 695
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycleDirection(I)V

    .line 696
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const v0, -0xffff01

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorSelectedColor(I)V

    .line 697
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorUnselectedColor(I)V

    .line 698
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setScrollTimeInSec(I)V

    .line 699
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycle(Z)V

    .line 700
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/SliderView;->startAutoCycle()V

    .line 710
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$200(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Lcom/dp/sgp/Adapters/SliderAdapterExample;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->banners:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->renewItems(Ljava/util/List;)V

    .line 717
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSuvichar()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 718
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getSuvichar()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    .line 720
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 721
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_desc_suvichar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Suvichar;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Suvichar;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->tv_title_suvichar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->suvichar:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Suvichar;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Suvichar;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :cond_6
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getVibhag()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 728
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getVibhag()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    .line 730
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 731
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/NewVibhagAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->vibhag:Ljava/util/List;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/NewVibhagAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->newVibhagAdapter:Lcom/dp/sgp/Adapters/NewVibhagAdapter;

    .line 732
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$300(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->newVibhagAdapter:Lcom/dp/sgp/Adapters/NewVibhagAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 737
    :cond_7
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProductsBanner()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 739
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    iget-object p2, p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->data:Lcom/dp/sgp/Model/HomeResponse/HomeData;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/HomeData;->getProductsBanner()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$402(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;Ljava/util/List;)Ljava/util/List;

    .line 741
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$400(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 743
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->this$0:Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->access$400(Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;)Ljava/util/List;

    move-result-object p2

    const-string v0, "productsbanners"

    invoke-virtual {p1, p2, v0}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;->saveProductBanner(Ljava/util/List;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 599
    check-cast p1, Lcom/dp/sgp/Model/HomeResponse/HomeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment$9;->success(Lcom/dp/sgp/Model/HomeResponse/HomeResponse;Lretrofit/client/Response;)V

    return-void
.end method
