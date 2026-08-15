.class Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;
.super Ljava/lang/Object;
.source "AbjaChandiDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 193
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->edt_BlanksReceived:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    const v1, 0x7f0f0002

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/Adapters/PlanningAdapter;->getallrecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/Adapters/PlanningAdapter;->getallrecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/Adapters/PlanningAdapter;->getallrecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 212
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->planningAdapter:Lcom/dp/sgp/Adapters/PlanningAdapter;

    invoke-virtual {v0}, Lcom/dp/sgp/Adapters/PlanningAdapter;->getallrecords()Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 214
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dp/sgp/Model/SubmitAbhjaBody;

    invoke-virtual {v4}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->getName()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dp/sgp/Model/SubmitAbhjaBody;

    invoke-virtual {v5}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    iget-object v6, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dp/sgp/Model/SubmitAbhjaBody;

    invoke-virtual {v7}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lStrQQty:Ljava/lang/String;

    .line 222
    new-instance v6, Lcom/dp/sgp/Model/SubmitAbhjaBody;

    invoke-direct {v6}, Lcom/dp/sgp/Model/SubmitAbhjaBody;-><init>()V

    .line 223
    invoke-virtual {v6, v4}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->setName(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v6, v5}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->setText(Ljava/lang/String;)V

    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dp/sgp/Model/SubmitAbhjaBody;

    invoke-virtual {v4}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->getListType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/dp/sgp/Model/SubmitAbhjaBody;->setListType(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v4, v4, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->BodylistList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->access$100(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/ConnectionDetector/ConnectionDetector;->isConnectingToInternet()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 237
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->lStrQQty:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "\u092a\u0941\u0928\u094d\u0939\u093e \u092a\u094d\u0930\u092f\u0924\u094d\u0928 \u0915\u0930\u093e"

    const-string v3, " \u0915\u093f\u092e\u093e\u0928 \u090f\u0915 \u0930\u0947\u0915\u0949\u0930\u094d\u0921 \u092a\u094d\u0930\u0935\u093f\u0937\u094d\u091f \u0915\u0930\u093e \u092e\u093e\u0933\u0940 \u0938\u094d\u0935\u0930\u0941\u092a\u093e\u0924\u0940\u0932 \u0938\u0947\u0935\u093e \u0915\u093f\u0902\u0935\u093e \u092a\u093e\u0930\u093e\u092f\u0923 \u0938\u094d\u0935\u0930\u0941\u092a\u093e\u0924\u0940\u0932 \u0938\u0947\u0935\u093e. "

    const-string v4, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u0938\u092e\u0930\u094d\u0925 \n\n\u0905\u092c\u094d\u091c\u091a\u0902\u0921\u0940 \u0938\u0947\u0935\u093e \u0928\u094b\u0902\u0926"

    if-eqz v0, :cond_3

    .line 239
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 240
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 245
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$2;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 249
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->BodylistList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->BodylistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->access$000(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Model/SubmitAbjaData;->setType(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/Model/SubmitAbjaData;->setMember_name(Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->BodylistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/SubmitAbjaData;->setData(Ljava/util/List;)V

    .line 260
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->sendCommonBody:Lcom/dp/sgp/Model/SubmitAbjaData;

    if-eqz p1, :cond_8

    .line 261
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->Submitabjachandi()V

    goto/16 :goto_3

    .line 264
    :cond_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 270
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$3;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$3;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 274
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    .line 277
    :cond_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 278
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 283
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$4;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$4;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 287
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    .line 294
    :cond_6
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 198
    :cond_7
    :goto_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;->this$0:Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "Unable To Submit"

    .line 199
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "Sorry , Empty items not allowed .\n Please add atleast one item. "

    .line 200
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 202
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3$1;-><init>(Lcom/dp/sgp/View/Fragment/Details/AbjaChandiDetailsFragment$3;)V

    const-string v1, "Retry"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_8
    :goto_3
    return-void
.end method
