.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;
.super Ljava/lang/Object;
.source "CompactCalendarTab.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->GET_TMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 621
    const-class v0, Lcom/dp/sgp/Model/ErrorResponse;

    invoke-virtual {p1, v0}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/ErrorResponse;

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login fail::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Monish"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/dp/sgp/Model/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/dp/sgp/Model/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 631
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Invalid Session. Please try to login again."

    .line 632
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public success(Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;Lretrofit/client/Response;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 555
    invoke-virtual {p1}, Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;->getTmsProgram()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 558
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;->getTmsProgram()Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->TmsProgramlist:Ljava/util/List;

    .line 560
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->TmsProgramlist:Ljava/util/List;

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$900(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;

    invoke-virtual {p1}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getSchduledInfo()Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;

    .line 561
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$900(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->TmsProgramlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->TmsProgramlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;

    .line 566
    new-instance v1, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-direct {v1}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;-><init>()V

    .line 569
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getIs_scheduled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getSchduledInfo()Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;->getTraining_end_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->setTraining_end_date(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getSchduledInfo()Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;->getTraining_end_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->setTraining_end_time(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getSchduledInfo()Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;->getTraining_start_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->setTraining_start_date(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getSchduledInfo()Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;->getTraining_start_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->setTraining_start_time(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getSchduledInfo()Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;->getVenue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->setVenue(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getSchduledInfo()Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfo;->getTraining_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->setTraining_name(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Lcom/dp/sgp/Model/NewTMS/TmsProgramList;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->setDay(Ljava/lang/Integer;)V

    .line 579
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object v0, v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 585
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-lez p1, :cond_2

    .line 586
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->ryt_main:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 587
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 589
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    new-instance p2, Lcom/dp/sgp/Adapters/TmsEventAdapter;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object v1, v1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newSchduledInfoLists:Ljava/util/List;

    invoke-direct {p2, v0, v1}, Lcom/dp/sgp/Adapters/TmsEventAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newsAdapter:Lcom/dp/sgp/Adapters/TmsEventAdapter;

    .line 590
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object p2, p2, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->newsAdapter:Lcom/dp/sgp/Adapters/TmsEventAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 591
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 593
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$100(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 594
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->ryt_main:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 602
    :goto_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$500(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V

    .line 603
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    const/16 p2, 0x7e1

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$600(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;I)V

    .line 604
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->invalidate()V

    .line 606
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$700(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;Lcom/dp/sgp/compactcalendarview/CompactCalendarView;)V

    .line 611
    :cond_3
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    iget-object p1, p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .line 549
    check-cast p1, Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$10;->success(Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;Lretrofit/client/Response;)V

    return-void
.end method
