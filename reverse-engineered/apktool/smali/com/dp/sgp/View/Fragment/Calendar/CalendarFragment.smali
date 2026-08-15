.class public Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;
.super Landroid/support/v4/app/Fragment;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

.field private calendarPagerData:Lcom/dp/sgp/calendar/CalendarPagerData;

.field private calendarViewData:Lcom/dp/sgp/calendar/CalendarViewModel;

.field private ivUpArrow:Landroid/widget/ImageView;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/IsSaturday;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private tvChandraRashi:Landroid/widget/TextView;

.field private tvDaySpecial:Landroid/widget/TextView;

.field private tvKaran:Landroid/widget/TextView;

.field private tvMarqueHeader:Landroid/widget/TextView;

.field private tvNakshatra:Landroid/widget/TextView;

.field private tvPanchang:Landroid/widget/TextView;

.field private tvRahukal:Landroid/widget/TextView;

.field private tvShubhaShubh:Landroid/widget/TextView;

.field private tvSuvichar:Landroid/widget/TextView;

.field private tvTithi:Landroid/widget/TextView;

.field private tvVar:Landroid/widget/TextView;

.field private tvYog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)Lcom/dp/sgp/calendar/CalendarViewModel;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarViewData:Lcom/dp/sgp/calendar/CalendarViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)Lcom/dp/sgp/calendar/CalendarPagerData;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarPagerData:Lcom/dp/sgp/calendar/CalendarPagerData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;III)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->setData(III)V

    return-void
.end method

.method private findViews()V
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$1;-><init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 105
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0216

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvSuvichar:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a020d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0218

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvTithi:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a021a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvVar:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a020a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvNakshatra:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a021c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvYog:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0203

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvKaran:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a01f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvChandraRashi:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0210

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvRahukal:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0213

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvShubhaShubh:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a0200

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvDaySpecial:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a00ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->ivUpArrow:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0a015e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 122
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 123
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 124
    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 126
    new-instance v0, Lcom/dp/sgp/calendar/CalendarViewModel;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarPagerData:Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {v4}, Lcom/dp/sgp/calendar/CalendarPagerData;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarPagerData:Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {v5}, Lcom/dp/sgp/calendar/CalendarPagerData;->getYear()I

    move-result v5

    invoke-direct {v0, v2, v4, v5}, Lcom/dp/sgp/calendar/CalendarViewModel;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarViewData:Lcom/dp/sgp/calendar/CalendarViewModel;

    .line 127
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    .line 134
    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x2

    .line 135
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 136
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 139
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v3, :cond_1

    .line 141
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 143
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v8, v7, :cond_0

    .line 145
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE M/d/yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    .line 150
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 154
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 157
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    new-instance v4, Lcom/dp/sgp/Model/IsSaturday;

    invoke-direct {v4}, Lcom/dp/sgp/Model/IsSaturday;-><init>()V

    const-string v6, "true"

    .line 160
    invoke-virtual {v4, v6}, Lcom/dp/sgp/Model/IsSaturday;->setEvent(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4, v3}, Lcom/dp/sgp/Model/IsSaturday;->setDayId(I)V

    .line 162
    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 164
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarViewData:Lcom/dp/sgp/calendar/CalendarViewModel;

    invoke-virtual {v1}, Lcom/dp/sgp/calendar/CalendarViewModel;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Data"

    .line 169
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarViewData:Lcom/dp/sgp/calendar/CalendarViewModel;

    invoke-virtual {v2}, Lcom/dp/sgp/calendar/CalendarViewModel;->getData()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->list:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->adapter:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    .line 174
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 178
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->adapter:Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;

    new-instance v1, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment$2;-><init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/dp/sgp/Adapters/CalendarRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/dp/sgp/listener/OnRecyclerItemClickListener;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;
    .locals 1

    .line 63
    new-instance v0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;-><init>()V

    .line 64
    invoke-virtual {v0, p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setData(III)V
    .locals 8

    .line 214
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3, p2, p1}, Lcom/dp/sgp/database/DatabaseUtils;->getAllDayData(Landroid/content/Context;III)Lcom/dp/sgp/calendar/CalenderData;

    move-result-object p1

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "                                                                      "

    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDay()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0x7f110112

    const-string v1, " "

    if-nez p3, :cond_0

    .line 219
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getTithi()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v2, ", "

    if-nez p3, :cond_1

    .line 222
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11014d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getTithi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getVar()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 225
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11015d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getVar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getNakshatra()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 228
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getNakshatra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_3
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getYog()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v3, 0x7f110161

    if-nez p3, :cond_4

    .line 231
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getYog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_4
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getKaran()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v4, 0x7f1100a3

    if-nez p3, :cond_5

    .line 234
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getKaran()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_5
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getChangraRashi()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v5, 0x7f110042

    if-nez p3, :cond_6

    .line 237
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getChangraRashi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_6
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getRahukal()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 240
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110126

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getRahukal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_7
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDaySpecial()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v6, 0x0

    if-nez p3, :cond_c

    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f110064

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDaySpecial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Amavasya"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 246
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    const v2, 0x7f08012b

    invoke-virtual {p3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 247
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    const v2, 0x7f080129

    invoke-virtual {p3, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 248
    :cond_8
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Pournima"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 249
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    const v2, 0x7f0801af

    invoke-virtual {p3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 250
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    const v2, 0x7f0801ad

    invoke-virtual {p3, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 251
    :cond_9
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Chaturthi"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 252
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    const v2, 0x7f08016d

    invoke-virtual {p3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 253
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    const v2, 0x7f08016c

    invoke-virtual {p3, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 255
    :cond_a
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Meeting"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 256
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    const v2, 0x7f0801b6

    invoke-virtual {p3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 257
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    const v2, 0x7f0801b5

    invoke-virtual {p3, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 258
    :cond_b
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getEvent()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Saptah"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 259
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    const v2, 0x7f0801cb

    invoke-virtual {p3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 260
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    const v2, 0x7f0801ca

    invoke-virtual {p3, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 264
    :cond_c
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 265
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 269
    :cond_d
    :goto_0
    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvMarqueHeader:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvSuvichar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getSuvichar()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvPanchang:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_e

    move-object v0, v2

    goto :goto_1

    :cond_e
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDay()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvYog:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getYog()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v2

    goto :goto_2

    :cond_f
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getYog()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvKaran:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getKaran()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v2

    goto :goto_3

    :cond_10
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getKaran()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvChandraRashi:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getChangraRashi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v2

    goto :goto_4

    :cond_11
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getChangraRashi()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvTithi:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getTithi()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    move-object p3, v2

    goto :goto_5

    :cond_12
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getTithi()Ljava/lang/String;

    move-result-object p3

    :goto_5
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvVar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getVar()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    move-object p3, v2

    goto :goto_6

    :cond_13
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getVar()Ljava/lang/String;

    move-result-object p3

    :goto_6
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvNakshatra:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getNakshatra()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_14

    move-object p3, v2

    goto :goto_7

    :cond_14
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getNakshatra()Ljava/lang/String;

    move-result-object p3

    :goto_7
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvRahukal:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getRahukal()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_15

    move-object p3, v2

    goto :goto_8

    :cond_15
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getRahukal()Ljava/lang/String;

    move-result-object p3

    :goto_8
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvShubhaShubh:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getShubhashubh()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_16

    move-object p3, v2

    goto :goto_9

    :cond_16
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getShubhashubh()Ljava/lang/String;

    move-result-object p3

    :goto_9
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->tvDaySpecial:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDaySpecial()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {p1}, Lcom/dp/sgp/calendar/CalenderData;->getDaySpecial()Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_PARAMS_RESULT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/calendar/CalendarPagerData;

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarPagerData:Lcom/dp/sgp/calendar/CalendarPagerData;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0071

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->list:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->findViews()V

    .line 87
    invoke-static {}, Lcom/dp/sgp/calendar/DateUtils;->getCalendarDayOfMonth()I

    move-result p1

    iget-object p2, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarPagerData:Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {p2}, Lcom/dp/sgp/calendar/CalendarPagerData;->getMonth()I

    move-result p2

    iget-object p3, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->calendarPagerData:Lcom/dp/sgp/calendar/CalendarPagerData;

    invoke-virtual {p3}, Lcom/dp/sgp/calendar/CalendarPagerData;->getYear()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->setData(III)V

    .line 90
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
