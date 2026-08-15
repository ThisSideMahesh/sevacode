.class Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;
.super Ljava/lang/Object;
.source "VibaghDetailsViewFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->VibhagDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/ProductDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 330
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/ProductDetailsResponse;Lretrofit/client/Response;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 279
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 280
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 281
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->message:Ljava/lang/String;

    .line 285
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->status:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getData()Lcom/dp/sgp/Model/CommonData;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 290
    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getData()Lcom/dp/sgp/Model/CommonData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_1

    .line 291
    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getData()Lcom/dp/sgp/Model/CommonData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getData()Lcom/dp/sgp/Model/CommonData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/Model/CommonData;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->LoadImage(Ljava/lang/String;)V

    .line 299
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getData()Lcom/dp/sgp/Model/CommonData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/Model/CommonData;->getLinks()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->lStrLink:Ljava/lang/String;

    .line 300
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getData()Lcom/dp/sgp/Model/CommonData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p1}, Lcom/dp/sgp/Model/ProductDetailsResponse;->getData()Lcom/dp/sgp/Model/CommonData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 304
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->access$000(Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->lStrLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->Lyt_Ordernow:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->Lyt_Ordernow:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 273
    check-cast p1, Lcom/dp/sgp/Model/ProductDetailsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/Details/VibaghDetailsViewFragment$2;->success(Lcom/dp/sgp/Model/ProductDetailsResponse;Lretrofit/client/Response;)V

    return-void
.end method
