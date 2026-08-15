.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;
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

    .line 391
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 395
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    const-string v0, "adhaycount"

    const-string v1, "1"

    const v2, 0x7f08013e

    const-string v3, "0"

    const-string v4, "\u0911\u092b\u0932\u093e\u0907\u0928 \u092e\u094b\u0921\u092e\u0927\u094d\u092f\u0947 \u0915\u093e\u0930\u094d\u092f \u0915\u0930\u0947\u0932"

    const-string v5, "2"

    const/16 v6, 0x14

    const/4 v7, 0x0

    const-string v8, ""

    if-le p1, v6, :cond_a

    .line 396
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iput v7, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    const/4 p1, 0x0

    .line 401
    :try_start_0
    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-string v10, "newswamicharitra.json"

    invoke-static {v9, v10}, Lcom/dp/sgp/util/AssestParser;->getJsonFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v9, "data"

    .line 402
    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .line 404
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    :goto_0
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    .line 411
    new-instance v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4$1;

    invoke-direct {v10, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;)V

    .line 412
    invoke-virtual {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 414
    invoke-virtual {v9, p1, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/SwamiExample;

    if-eqz p1, :cond_5

    .line 419
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 420
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 421
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 425
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {v10, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$202(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 428
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 429
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 431
    new-instance p1, Lcom/dp/sgp/database/DatabaseHelperClass;

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {p1, v10}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->deleteAll()V

    .line 438
    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object v10

    .line 440
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    if-eqz v10, :cond_1

    .line 442
    invoke-interface {v10}, Ljava/util/List;->size()I

    :cond_1
    const/4 v10, 0x0

    .line 457
    :goto_1
    iget-object v11, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v11}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 460
    new-instance v11, Lcom/dp/sgp/database/DatabaseHelperClass;

    iget-object v12, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {v12}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    .line 461
    new-instance v12, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v12}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 464
    iget-object v13, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v13}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v13}, Lcom/dp/sgp/Model/SwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 465
    iget-object v13, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v13}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v13}, Lcom/dp/sgp/Model/SwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v12, v3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    if-nez v10, :cond_2

    .line 468
    invoke-virtual {v12, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v13, "3"

    .line 470
    invoke-virtual {v12, v13}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 472
    :goto_2
    invoke-virtual {v12, v3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v12, v4}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 474
    iget-object v13, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v13}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v13}, Lcom/dp/sgp/Model/SwamiDatum;->getImage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v11, v12}, Lcom/dp/sgp/database/DatabaseHelperClass;->addEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 481
    :cond_3
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 482
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 483
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v10}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 486
    :cond_4
    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object p1

    invoke-static {v10, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 488
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v9, "newlist"

    .line 489
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v9, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->parayancounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->parayancounter:I

    .line 493
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->parayancounter:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "parayancount"

    invoke-virtual {p1, v10, v9}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_5
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setAdhyayid(Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 511
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object p1

    .line 513
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 514
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 515
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v2, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 519
    :cond_6
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 525
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    add-int/lit8 p1, p1, 0x1

    .line 526
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 527
    new-instance v7, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 528
    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 529
    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 530
    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v7, v3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v7, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {v1, v7}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    if-le p1, v6, :cond_7

    .line 542
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 543
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v7, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v7, v4}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1, v7}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    goto/16 :goto_3

    .line 552
    :cond_7
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 553
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v7, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v7, v4}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 560
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1, v7}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    .line 586
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object p1

    .line 588
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 589
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 590
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 593
    :cond_9
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 594
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 597
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v1, v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 598
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 601
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 613
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 626
    :cond_a
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setAdhyayid(Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 628
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object p1

    .line 630
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 631
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 632
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v2, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 636
    :cond_b
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 642
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    add-int/lit8 p1, p1, 0x1

    .line 643
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 644
    new-instance v7, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 645
    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 646
    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 647
    iget-object v9, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v9}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v10, v10, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v7, v3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v7, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {v1, v7}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    if-le p1, v6, :cond_c

    .line 659
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 660
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v7, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v7, v4}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 667
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1, v7}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    goto/16 :goto_4

    .line 669
    :cond_c
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 670
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v7, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v7, v4}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1, v7}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    .line 703
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object p1

    .line 705
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 706
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 707
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1, p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$002(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;Ljava/util/List;)Ljava/util/List;

    .line 710
    :cond_e
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 711
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 714
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v1, v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 715
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 718
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 730
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_5
    return-void
.end method
