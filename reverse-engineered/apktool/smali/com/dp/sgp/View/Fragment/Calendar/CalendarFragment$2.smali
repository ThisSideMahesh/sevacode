.class Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/dp/sgp/listener/OnRecyclerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecyclerItemClick(II)V
    .locals 2

    .line 183
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->access$000(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)Lcom/dp/sgp/calendar/CalendarViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/calendar/CalendarViewModel;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/calendar/CalenderData;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDayId()I

    move-result p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->access$100(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)Lcom/dp/sgp/calendar/CalendarPagerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/calendar/CalendarPagerData;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->access$100(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)Lcom/dp/sgp/calendar/CalendarPagerData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalendarPagerData;->getYear()I

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->access$200(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;III)V

    .line 186
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f010015

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 187
    new-instance p2, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2$1;

    invoke-direct {p2, p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2$1;-><init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
