.class Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;
.super Ljava/lang/Object;
.source "ProductDetailsFragment.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->initCollapsingToolbar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isShow:Z

.field scrollRange:I

.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

.field final synthetic val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->isShow:Z

    const/4 p1, -0x1

    .line 241
    iput p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->scrollRange:I

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    .line 245
    iget v0, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->scrollRange:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->scrollRange:I

    .line 248
    :cond_0
    iget p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->scrollRange:I

    add-int/2addr p1, p2

    if-nez p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;

    const v0, 0x7f110038

    invoke-virtual {p2, v0}, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->isShow:Z

    goto :goto_0

    .line 251
    :cond_1
    iget-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->isShow:Z

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string p2, " "

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Details/ProductDetailsFragment$2;->isShow:Z

    :cond_2
    :goto_0
    return-void
.end method
