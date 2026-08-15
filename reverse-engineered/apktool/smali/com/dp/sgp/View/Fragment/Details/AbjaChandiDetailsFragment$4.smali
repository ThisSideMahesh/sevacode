.class Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;
.super Ljava/lang/Object;
.source "AbjaChandiDetailsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->Submitabjachandi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0

    .line 370
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V
    .locals 1

    .line 330
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_1

    .line 333
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 334
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appUpdateBody"

    .line 335
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 340
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->message:Ljava/lang/String;

    .line 341
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->status:Ljava/lang/String;

    .line 343
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->status:Ljava/lang/String;

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->message:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 345
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "message"

    const-string v0, "\u0905\u092c\u094d\u091c\u091a\u0902\u0921\u0940"

    .line 346
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-direct {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;-><init>()V

    .line 349
    invoke-virtual {p2, p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;->setArguments(Landroid/os/Bundle;)V

    .line 351
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a008c

    .line 353
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 354
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->message:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 365
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 327
    check-cast p1, Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$4;->success(Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;Lretrofit/client/Response;)V

    return-void
.end method
