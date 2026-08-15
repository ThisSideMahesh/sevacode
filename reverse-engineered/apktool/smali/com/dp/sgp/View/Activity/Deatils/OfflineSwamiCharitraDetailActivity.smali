.class public Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OfflineSwamiCharitraDetailActivity.java"


# instance fields
.field Description:Ljava/lang/String;

.field LstrID:Ljava/lang/String;

.field Status:Ljava/lang/String;

.field Title:Ljava/lang/String;

.field content:Landroid/widget/LinearLayout;

.field counter:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

.field device_token:Ljava/lang/String;

.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private freshdatalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field img_Overflow:Landroid/widget/ImageView;

.field intValue:I

.field lyt_main:Landroid/widget/LinearLayout;

.field private message:Ljava/lang/String;

.field panelIconLeft:Landroid/widget/LinearLayout;

.field panelIconLeftreverse:Landroid/widget/LinearLayout;

.field panelIconRight:Landroid/widget/LinearLayout;

.field parayancounter:I

.field private progressBar:Landroid/view/View;

.field progressDialog:Landroid/app/ProgressDialog;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

.field status:Ljava/lang/String;

.field t1:Landroid/speech/tts/TextToSpeech;

.field textView2:Landroid/widget/TextView;

.field transaction:Landroid/support/v4/app/FragmentTransaction;

.field txtHeading:Landroid/widget/TextView;

.field txt_completed:Landroid/widget/TextView;

.field user_id:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->intValue:I

    iput v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    iput v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->parayancounter:I

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->LstrID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->Title:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->Description:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->Status:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public BookmarkFilldata(I)V
    .locals 8

    .line 386
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 389
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->textView2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    const-string v3, ""

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v1, 0x7f08013d

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v1, 0x7f08013e

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void
.end method

.method public FillRawData()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "newswamicharitra.json"

    .line 452
    invoke-static {p0, v1}, Lcom/dp/sgp/util/AssestParser;->getJsonFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 453
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :goto_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 462
    new-instance v2, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$7;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$7;-><init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V

    .line 463
    invoke-virtual {v2}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 465
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/SwamiExample;

    if-eqz v0, :cond_5

    .line 470
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 471
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 475
    :cond_0
    invoke-virtual {v0}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 476
    invoke-virtual {v0}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 480
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 482
    new-instance v0, Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-direct {v0, p0}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-virtual {v0}, Lcom/dp/sgp/database/DatabaseHelperClass;->deleteAll()V

    .line 489
    invoke-virtual {v0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object v2

    .line 491
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_1

    .line 493
    invoke-interface {v2}, Ljava/util/List;->size()I

    :cond_1
    const/4 v2, 0x0

    .line 499
    :goto_1
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 501
    new-instance v3, Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-direct {v3, p0}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    .line 502
    new-instance v4, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v4}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 505
    iget-object v5, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v5}, Lcom/dp/sgp/Model/SwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 506
    iget-object v5, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v5}, Lcom/dp/sgp/Model/SwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    const-string v5, "0"

    .line 507
    invoke-virtual {v4, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    if-nez v2, :cond_2

    const-string v6, "2"

    .line 509
    invoke-virtual {v4, v6}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v6, "3"

    .line 511
    invoke-virtual {v4, v6}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 513
    :goto_2
    invoke-virtual {v4, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    const-string v5, "\u0911\u092b\u0932\u093e\u0907\u0928 \u092e\u094b\u0921\u092e\u0927\u094d\u092f\u0947 \u0915\u093e\u0930\u094d\u092f \u0915\u0930\u0947\u0932"

    .line 514
    invoke-virtual {v4, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 515
    iget-object v5, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v5}, Lcom/dp/sgp/Model/SwamiDatum;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v3, v4}, Lcom/dp/sgp/database/DatabaseHelperClass;->addEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 521
    :cond_3
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 522
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 523
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 526
    :cond_4
    invoke-virtual {v0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    .line 528
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "newlist"

    .line 529
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->parayancounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->parayancounter:I

    .line 533
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->parayancounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parayancount"

    invoke-virtual {v0, v2, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "adhaycount"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public Filldata(I)V
    .locals 7

    .line 373
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v1, 0x7f08013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 374
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 377
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RefereshData()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {v0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 444
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public UpdateIncrementalData(II)V
    .locals 2

    .line 424
    new-instance v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 426
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getComplete_prayan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    const-string v1, "2"

    .line 429
    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    const-string p2, "\u0911\u092b\u0932\u093e\u0907\u0928 \u092e\u094b\u0921\u092e\u0927\u094d\u092f\u0947 \u0915\u093e\u0930\u094d\u092f \u0915\u0930\u0947\u0932"

    .line 431
    invoke-virtual {v0, p2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 432
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 433
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p2, v0}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    .line 434
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adhaycount"

    invoke-virtual {p2, v0, p1}, Lcom/dp/sgp/DataHolder/DataHandler;->addData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public UpdateOffflineData(II)V
    .locals 3

    .line 405
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 408
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getIds()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setIds(I)V

    .line 409
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    const-string v2, "0"

    .line 411
    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    const-string v2, "1"

    .line 412
    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 415
    iget-object p2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1, v1}, Lcom/dp/sgp/database/DatabaseHelperClass;->updateEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 547
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0031

    .line 76
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->setContentView(I)V

    const p1, 0x7f0a01c6

    .line 78
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->textView2:Landroid/widget/TextView;

    const p1, 0x7f0a0237

    .line 79
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txtHeading:Landroid/widget/TextView;

    const p1, 0x7f0a024d

    .line 80
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const p1, 0x7f0a0149

    .line 82
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->panelIconLeft:Landroid/widget/LinearLayout;

    const p1, 0x7f0a014c

    .line 83
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->panelIconRight:Landroid/widget/LinearLayout;

    const p1, 0x7f0a014a

    .line 84
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0053

    .line 87
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->content:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00b4

    .line 88
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->img_Overflow:Landroid/widget/ImageView;

    const p1, 0x7f0a0269

    .line 89
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    const p1, 0x7f0a0155

    .line 90
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->progressBar:Landroid/view/View;

    .line 93
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v0, 0x7f08013e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 95
    new-instance p1, Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-direct {p1, p0}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    .line 96
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-direct {p1, p0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 97
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 98
    new-instance p1, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    .line 100
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "parayancount"

    invoke-virtual {p1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iput v1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->parayancounter:I

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 106
    iput p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->parayancounter:I

    .line 109
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->freshdatalist:Ljava/util/List;

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    .line 111
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "device_token"

    invoke-virtual {p1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->device_token:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setDevice_token(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->sendSubmitBody:Lcom/dp/sgp/Model/saramrut/SendSubmitBody;

    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/dp/sgp/Model/saramrut/SendSubmitBody;->setUser_id(Ljava/lang/String;)V

    .line 119
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V

    invoke-direct {p1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->t1:Landroid/speech/tts/TextToSpeech;

    .line 130
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "position"

    .line 131
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->intValue:I

    .line 133
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->databaseHelperClass:Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p1}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object p1

    .line 135
    iget v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->intValue:I

    iput v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz p1, :cond_2

    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 141
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    iget v3, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 151
    iget-object v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->counter:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    const v0, 0x7f08013d

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 172
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 173
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 174
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 176
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 177
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 178
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 180
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 181
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    const v1, 0x7f080298

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 182
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 186
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 187
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 188
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 191
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->panelIconLeft:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->panelIconRight:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->panelIconLeftreverse:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$4;-><init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->txt_completed:Landroid/widget/TextView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$5;-><init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;->img_Overflow:Landroid/widget/ImageView;

    new-instance v0, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity$6;-><init>(Lcom/dp/sgp/View/Activity/Deatils/OfflineSwamiCharitraDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
