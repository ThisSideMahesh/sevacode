.class Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment$2;
.super Ljava/lang/Object;
.source "YoutubeTabssFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


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

    .line 96
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;->access$000(Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
