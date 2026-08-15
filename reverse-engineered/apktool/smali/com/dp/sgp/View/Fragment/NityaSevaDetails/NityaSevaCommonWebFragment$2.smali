.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;
.super Ljava/lang/Object;
.source "NityaSevaCommonWebFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 112
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)I

    move-result p1

    if-lez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->access$010(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)I

    .line 116
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrSubtitle:Ljava/lang/String;

    .line 117
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->access$000(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->strtext:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->txt_cat1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->lStrSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->access$200(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    iget-object v2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->strtext:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaSevaCommonWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u092a\u0940\u091b\u0947 \u0915\u0941\u091b \u092d\u0940 \u0928\u0939\u0940\u0902 \u0939\u0947"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
