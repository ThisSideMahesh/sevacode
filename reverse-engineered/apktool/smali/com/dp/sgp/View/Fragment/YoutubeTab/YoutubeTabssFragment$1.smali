.class Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment$1;
.super Ljava/lang/Object;
.source "YoutubeTabssFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment$1;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;->access$000(Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
