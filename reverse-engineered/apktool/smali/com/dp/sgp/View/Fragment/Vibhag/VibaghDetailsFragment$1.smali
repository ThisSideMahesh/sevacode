.class Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;
.super Ljava/lang/Object;
.source "VibaghDetailsFragment.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->initCollapsingToolbar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isShow:Z

.field scrollRange:I

.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;

.field final synthetic val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;

    iput-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->isShow:Z

    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->scrollRange:I

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    .line 92
    iget v0, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->scrollRange:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->scrollRange:I

    .line 95
    :cond_0
    iget p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->scrollRange:I

    add-int/2addr p1, p2

    if-nez p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;

    const v0, 0x7f110038

    invoke-virtual {p2, v0}, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->isShow:Z

    goto :goto_0

    .line 98
    :cond_1
    iget-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->isShow:Z

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->val$collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string p2, " "

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/Vibhag/VibaghDetailsFragment$1;->isShow:Z

    :cond_2
    :goto_0
    return-void
.end method
