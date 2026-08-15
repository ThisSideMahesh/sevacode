.class Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;
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

    .line 228
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 232
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 233
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v1, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 234
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iput v1, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    const-string v2, "\u0905\u0927\u094d\u092f\u093e\u092f \u0935\u093e\u091a\u0928 \u092a\u0941\u0930\u094d\u0923 \u091d\u093e\u0932\u0947 \u0928\u093e\u0939\u0940. \u0935\u093e\u091a\u0928 \u092a\u0941\u0930\u094d\u0923 \u0915\u0930\u0941\u0928 \u092c\u0941\u0915\u092e\u093e\u0930\u094d\u0915 \u0935\u0930 \u0915\u094d\u0932\u093f\u0915 \u0915\u0930\u093e"

    if-ltz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v3, v3, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f08013d

    const v6, 0x7f08013e

    if-eqz v4, :cond_2

    .line 254
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 255
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 257
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 261
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Landroid/webkit/WebView;

    move-result-object v7

    const-string v8, ""

    const-string v10, "text/html"

    const-string v11, "UTF-8"

    const-string v12, ""

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    :cond_2
    const-string v4, "2"

    .line 276
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 279
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 281
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v2, v2, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 285
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$100(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Landroid/webkit/WebView;

    move-result-object v7

    const-string v8, ""

    const-string v10, "text/html"

    const-string v11, "UTF-8"

    const-string v12, ""

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->access$000(Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget v0, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/saramrut/DBSwamiDatum;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->txt_completed:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iput p1, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 303
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    iput p1, v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->counter:I

    .line 308
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/DetailCharitraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_0
    return-void
.end method
