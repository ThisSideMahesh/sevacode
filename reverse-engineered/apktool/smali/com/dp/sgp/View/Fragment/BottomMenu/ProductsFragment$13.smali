.class Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;
.super Ljava/lang/Object;
.source "ProductsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ProductsCommon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 714
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;Lretrofit/client/Response;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 550
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 551
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 552
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->message:Ljava/lang/String;

    .line 556
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->status:Ljava/lang/String;

    .line 558
    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;->getData()Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 561
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;->getData()Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$502(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Lcom/dp/sgp/Model/nityaseva/ProductData;)Lcom/dp/sgp/Model/nityaseva/ProductData;

    .line 563
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$500(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getLokpriya()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$002(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;

    .line 564
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$500(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getPoojasahitya()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$102(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;

    .line 565
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$500(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getAyurveda()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$302(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;

    .line 566
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$500(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getGranthasahitya()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$202(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;

    .line 567
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$500(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getKrushidhan()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$402(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;Ljava/util/List;)Ljava/util/List;

    .line 568
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$500(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Model/nityaseva/ProductData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/nityaseva/ProductData;->getProductBanners()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    .line 570
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$000(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriyaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 571
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_lokpriya:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->lokpriyaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 573
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$100(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 574
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_pooja_sahitya:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->poojasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 577
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$300(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurvedaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 578
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_aaruvedh_utpadan:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->ayurvedaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 580
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$400(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhanAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 581
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_krishi_dhan:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->krushidhanAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 584
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    new-instance p2, Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$200(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/ProductVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    .line 585
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->rv_grantha_sahitya:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->granthasahityaAdapter:Lcom/dp/sgp/Adapters/ProductVideoAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 588
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$600(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Adapters/SliderAdapterExample;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderAdapter(Lcom/dp/sgp/autoimageslider/SliderViewAdapter;)V

    .line 590
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object p2, Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;->WORM:Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorAnimation(Lcom/dp/sgp/autoimageslider/IndicatorView/animation/type/IndicatorAnimationType;)V

    .line 591
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    sget-object p2, Lcom/dp/sgp/autoimageslider/SliderAnimations;->SIMPLETRANSFORMATION:Lcom/dp/sgp/autoimageslider/SliderAnimations;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setSliderTransformAnimation(Lcom/dp/sgp/autoimageslider/SliderAnimations;)V

    .line 592
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycleDirection(I)V

    .line 593
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorSelectedColor(I)V

    .line 594
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setIndicatorUnselectedColor(I)V

    .line 595
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setScrollTimeInSec(I)V

    .line 596
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dp/sgp/autoimageslider/SliderView;->setAutoCycle(Z)V

    .line 597
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->sliderView:Lcom/dp/sgp/autoimageslider/SliderView;

    invoke-virtual {p1}, Lcom/dp/sgp/autoimageslider/SliderView;->startAutoCycle()V

    .line 608
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->access$600(Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;)Lcom/dp/sgp/Adapters/SliderAdapterExample;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->banners:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/dp/sgp/Adapters/SliderAdapterExample;->renewItems(Ljava/util/List;)V

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->this$0:Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 544
    check-cast p1, Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/BottomMenu/ProductsFragment$13;->success(Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;Lretrofit/client/Response;)V

    return-void
.end method
