.class Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;
.super Landroid/os/AsyncTask;
.source "CalendarParentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPagerData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;


# direct methods
.method private constructor <init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;-><init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$300(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$400(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 216
    new-instance v2, Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-direct {v2}, Lcom/dp/sgp/calendar/CalendarPagerData;-><init>()V

    .line 217
    invoke-virtual {v2, v1}, Lcom/dp/sgp/calendar/CalendarPagerData;->setMonth(I)V

    .line 218
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$400(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/dp/sgp/calendar/CalendarPagerData;->setMonthTitle(Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$300(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dp/sgp/calendar/CalendarPagerData;->setYear(I)V

    .line 220
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$500(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/dp/sgp/calendar/CalendarPagerData;->setYearTitle(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$600(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getCalendarYear()I

    move-result v2

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$300(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getCalendarMonth()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$702(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .line 235
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    new-instance v0, Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {v1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v2}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$600(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dp/sgp/Adapters/CalendarPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$802(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;Lcom/dp/sgp/Adapters/CalendarPagerAdapter;)Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

    .line 238
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$900(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$800(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Lcom/dp/sgp/Adapters/CalendarPagerAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 240
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$900(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 241
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$900(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$700(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 242
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$900(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 243
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->showContent()V

    .line 245
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f11009b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    .line 246
    invoke-virtual {p1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110095

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0a00ca

    const-string v4, "help_scroll"

    const/4 v5, 0x0

    .line 245
    invoke-static/range {v0 .. v5}, Lcom/dp/sgp/util/ShowCaseManager;->showHelp(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dp/sgp/util/ShowCaseManager$ShowCaseManagerListener;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 207
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$LoadPagerData;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->showLoading()V

    return-void
.end method
