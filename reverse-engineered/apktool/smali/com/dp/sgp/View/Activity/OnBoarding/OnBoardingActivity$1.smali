.class Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$1;
.super Ljava/lang/Object;
.source "OnBoardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 77
    iput-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$1;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    iput-object p2, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$1;->val$mList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$1;->this$0:Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;

    invoke-static {p1}, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;->access$000(Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Activity/OnBoarding/OnBoardingActivity$1;->val$mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
