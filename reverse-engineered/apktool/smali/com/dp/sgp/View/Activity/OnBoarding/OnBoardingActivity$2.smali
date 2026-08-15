.class Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$2;
.super Ljava/lang/Object;
.source "OnBoardingActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

.field final synthetic val$mList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;Ljava/util/List;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$2;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    iput-object p2, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$2;->val$mList:Ljava/util/List;

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

    .line 87
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$2;->val$mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$2;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->access$100(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
