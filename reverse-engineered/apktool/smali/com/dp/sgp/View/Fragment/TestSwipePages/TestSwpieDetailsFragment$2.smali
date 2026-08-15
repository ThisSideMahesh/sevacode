.class Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;
.super Ljava/lang/Object;
.source "TestSwpieDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 136
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$000(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$100(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$008(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)I

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$100(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$000(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/CommonData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->lStrSubtitle:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$100(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$000(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/CommonData;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/CommonData;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->strtext:Ljava/lang/String;

    .line 142
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->txt_cat1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->lStrSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->access$200(Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;

    iget-object v2, p1, Lcom/dp/sgp/View/Fragment/TestSwipePages/TestSwpieDetailsFragment;->strtext:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
