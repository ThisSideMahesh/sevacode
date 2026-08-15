.class public Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfflineSwamiCharitraFragment.java"


# instance fields
.field private NewswamiCharitraModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiCharitraModel;",
            ">;"
        }
    .end annotation
.end field

.field btn_reset:Landroid/widget/Button;

.field private complete_prayan:Ljava/lang/String;

.field count:I

.field private current_adhyay:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field private dbSwamiData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field private dbSwamiDatumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field delay:I

.field device_token:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field lStrCode:Ljava/lang/String;

.field lStrSelectedLang:Ljava/lang/String;

.field mAdapter:Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

.field private message:Ljava/lang/String;

.field pos:Landroid/widget/TextView;

.field postion:I

.field progressDialog:Landroid/app/ProgressDialog;

.field runnable:Ljava/lang/Runnable;

.field rvArticles:Landroid/support/v7/widget/RecyclerView;

.field sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

.field status:Ljava/lang/String;

.field strtext:Ljava/lang/String;

.field private swamiCharitraModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SwamiCharitraModel;",
            ">;"
        }
    .end annotation
.end field

.field txt_adhayay:Landroid/widget/TextView;

.field user_id:Ljava/lang/String;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->lStrCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->lStrSelectedLang:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->strtext:Ljava/lang/String;

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->count:I

    iput v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->postion:I

    .line 67
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->device_token:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->user_id:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->handler:Landroid/os/Handler;

    const/16 v0, 0x2710

    .line 84
    iput v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->delay:I

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiDatumList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public display()V
    .locals 8

    .line 249
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "adhaycount"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "1"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->txt_adhayay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->txt_adhayay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 261
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->txt_adhayay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    .line 265
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->txt_adhayay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string v1, "parayancount"

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "0"

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->pos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {v0, v1}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->pos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 281
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->pos:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v0, 0x0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "newswamicharitra.json"

    invoke-static {v1, v2}, Lcom/dp/sgp/util/AssestParser;->getJsonFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 290
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 292
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    :goto_2
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 299
    new-instance v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$3;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$3;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)V

    .line 300
    invoke-virtual {v2}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 302
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/SwamiExample;

    if-eqz v0, :cond_8

    .line 308
    invoke-virtual {v0}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 309
    invoke-virtual {v0}, Lcom/dp/sgp/Model/SwamiExample;->getData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 316
    new-instance v0, Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {v0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object v2

    .line 319
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v2, :cond_8

    .line 322
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 324
    iput-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiDatumList:Ljava/util/List;

    .line 326
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offlineBody"

    .line 327
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->mAdapter:Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

    .line 334
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 335
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 336
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 337
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->mAdapter:Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 338
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    goto/16 :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 345
    :goto_3
    iget-object v5, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 348
    new-instance v5, Lcom/dp/sgp/database/DatabaseHelperClass;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dp/sgp/database/DatabaseHelperClass;-><init>(Landroid/content/Context;)V

    .line 349
    new-instance v6, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-direct {v6}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;-><init>()V

    .line 351
    iget-object v7, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v7}, Lcom/dp/sgp/Model/SwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setTitle(Ljava/lang/String;)V

    .line 352
    iget-object v7, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v7}, Lcom/dp/sgp/Model/SwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setDescription(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v6, v3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setComplete_prayan(Ljava/lang/String;)V

    if-nez v2, :cond_6

    const-string v7, "2"

    .line 355
    invoke-virtual {v6, v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v7, "3"

    .line 357
    invoke-virtual {v6, v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setStatus(Ljava/lang/String;)V

    .line 359
    :goto_4
    invoke-virtual {v6, v3}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCurrent_adhyay(Ljava/lang/String;)V

    const-string v7, "\u0911\u092b\u0932\u093e\u0907\u0928 \u092e\u094b\u0921\u092e\u0927\u094d\u092f\u0947 \u0915\u093e\u0930\u094d\u092f \u0915\u0930\u0947\u0932"

    .line 360
    invoke-virtual {v6, v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setCompleted_on(Ljava/lang/String;)V

    .line 361
    iget-object v7, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dp/sgp/Model/SwamiDatum;

    invoke-virtual {v7}, Lcom/dp/sgp/Model/SwamiDatum;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->setImage(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5, v6}, Lcom/dp/sgp/database/DatabaseHelperClass;->addEmployee(Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 369
    :cond_7
    invoke-virtual {v0}, Lcom/dp/sgp/database/DatabaseHelperClass;->getEmployeeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiData:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 375
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiData:Ljava/util/List;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiDatumList:Ljava/util/List;

    .line 376
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "savinglineBody"

    .line 377
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiData:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->mAdapter:Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

    .line 382
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 383
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 384
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 385
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->mAdapter:Lcom/dp/sgp/Adapters/OfflineSwamiCharitraAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 386
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0094

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->v:Landroid/view/View;

    .line 92
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    .line 93
    new-instance p1, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-direct {p1}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->data:Ljava/util/List;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiDatumList:Ljava/util/List;

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "device_token"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->device_token:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dataHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lcom/dp/sgp/DataHolder/DataHandler;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->user_id:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->device_token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setDevice_token(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;->setUser_id(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0247

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->txt_adhayay:Landroid/widget/TextView;

    .line 102
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0152

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->pos:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930 \u0911\u092b\u0932\u093e\u0907\u0928"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->dbSwamiData:Ljava/util/List;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->swamiCharitraModelList:Ljava/util/List;

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->NewswamiCharitraModelList:Ljava/util/List;

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->v:Landroid/view/View;

    const p2, 0x7f0a0111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    .line 117
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->rvArticles:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)V

    invoke-direct {p2, p3, v0, v1}, Lcom/dp/sgp/TouchListener/RecyclerTouchListener;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/dp/sgp/TouchListener/RecyclerTouchListener$ClickListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 164
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->v:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->display()V

    .line 240
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public saramrut()V
    .locals 3

    .line 170
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120008

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 173
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 174
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 179
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v1, Lcom/dp/sgp/Constants/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 181
    const-class v1, Lcom/dp/sgp/ApiService/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/ApiService/ApiService;

    .line 182
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 183
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendCommonBody"

    .line 184
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;->sendCommonBody:Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;

    new-instance v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;

    invoke-direct {v2, p0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/SwamiCharitra/OfflineSwamiCharitraFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/dp/sgp/ApiService/ApiService;->saramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V

    return-void
.end method
