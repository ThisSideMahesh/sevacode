.class public Lcom/dp/sgp/Adapters/TmsEventAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TmsEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field isDark:Z

.field mContext:Landroid/content/Context;

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;",
            ">;"
        }
    .end annotation
.end field

.field mDataFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->isDark:Z

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mData:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->isDark:Z

    .line 35
    iput-object p1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mData:Ljava/util/List;

    .line 37
    iput-boolean p3, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->isDark:Z

    .line 38
    iput-object p2, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    return-void
.end method

.method public static DateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 256
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Lcom/dp/sgp/Adapters/TmsEventAdapter;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v2, "E, d MMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 259
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .line 269
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 275
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const-string v0, " now"

    const-string v1, ""

    .line 129
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 134
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 138
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :try_start_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Date in milli :: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-wide v5, v3

    .line 142
    :goto_0
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 148
    :goto_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 153
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 160
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 161
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 163
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0xea60

    const-wide/32 v9, 0x36ee80

    const-wide/32 v11, 0x5265c00

    .line 170
    div-long v13, v1, v11

    .line 171
    rem-long/2addr v1, v11

    .line 173
    div-long v11, v1, v9

    .line 174
    rem-long/2addr v1, v9

    .line 176
    div-long v9, v1, v7

    .line 177
    rem-long/2addr v1, v7

    .line 179
    div-long v7, v1, v5

    .line 181
    rem-long/2addr v1, v5

    cmp-long p0, v13, v3

    if-nez p0, :cond_4

    cmp-long p0, v11, v3

    if-nez p0, :cond_3

    cmp-long p0, v9, v3

    if-nez p0, :cond_2

    cmp-long p0, v7, v3

    if-gez p0, :cond_1

    const-string p0, "0 s"

    return-object p0

    :cond_1
    cmp-long p0, v13, v3

    if-lez p0, :cond_12

    const-wide/16 v1, 0x3b

    cmp-long p0, v7, v1

    if-gez p0, :cond_12

    return-object v0

    .line 193
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " mins ago"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " hr ago"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/16 v1, 0x1d

    cmp-long p0, v13, v1

    if-gtz p0, :cond_5

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " days ago"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-wide/16 v3, 0x3a

    cmp-long p0, v13, v1

    if-lez p0, :cond_6

    cmp-long p0, v13, v3

    if-gtz p0, :cond_6

    const-string p0, "1 month ago"

    return-object p0

    :cond_6
    const-wide/16 v1, 0x57

    cmp-long p0, v13, v3

    if-lez p0, :cond_7

    cmp-long p0, v13, v1

    if-gtz p0, :cond_7

    const-string p0, "2 months ago"

    return-object p0

    :cond_7
    const-wide/16 v3, 0x74

    cmp-long p0, v13, v1

    if-lez p0, :cond_8

    cmp-long p0, v13, v3

    if-gtz p0, :cond_8

    const-string p0, "3 months ago"

    return-object p0

    :cond_8
    const-wide/16 v1, 0x91

    cmp-long p0, v13, v3

    if-lez p0, :cond_9

    cmp-long p0, v13, v1

    if-gtz p0, :cond_9

    const-string p0, "4 months ago"

    return-object p0

    :cond_9
    const-wide/16 v3, 0xae

    cmp-long p0, v13, v1

    if-lez p0, :cond_a

    cmp-long p0, v13, v3

    if-gtz p0, :cond_a

    const-string p0, "5 months ago"

    return-object p0

    :cond_a
    const-wide/16 v1, 0xcb

    cmp-long p0, v13, v3

    if-lez p0, :cond_b

    cmp-long p0, v13, v1

    if-gtz p0, :cond_b

    const-string p0, "6 months ago"

    return-object p0

    :cond_b
    const-wide/16 v3, 0xe8

    cmp-long p0, v13, v1

    if-lez p0, :cond_c

    cmp-long p0, v13, v3

    if-gtz p0, :cond_c

    const-string p0, "7 months ago"

    return-object p0

    :cond_c
    const-wide/16 v1, 0x105

    cmp-long p0, v13, v3

    if-lez p0, :cond_d

    cmp-long p0, v13, v1

    if-gtz p0, :cond_d

    const-string p0, "8 months ago"

    return-object p0

    :cond_d
    const-wide/16 v3, 0x122

    cmp-long p0, v13, v1

    if-lez p0, :cond_e

    cmp-long p0, v13, v3

    if-gtz p0, :cond_e

    const-string p0, "9 months ago"

    return-object p0

    :cond_e
    const-wide/16 v1, 0x13f

    cmp-long p0, v13, v3

    if-lez p0, :cond_f

    cmp-long p0, v13, v1

    if-gtz p0, :cond_f

    const-string p0, "10 months ago"

    return-object p0

    :cond_f
    const-wide/16 v3, 0x15c

    cmp-long p0, v13, v1

    if-lez p0, :cond_10

    cmp-long p0, v13, v3

    if-gtz p0, :cond_10

    const-string p0, "11 months ago"

    return-object p0

    :cond_10
    const-wide/16 v1, 0x168

    cmp-long p0, v13, v3

    if-lez p0, :cond_11

    cmp-long p0, v13, v1

    if-gtz p0, :cond_11

    const-string p0, "12 months ago"

    return-object p0

    :cond_11
    cmp-long p0, v13, v1

    if-lez p0, :cond_12

    const-wide/16 v1, 0x2d0

    cmp-long p0, v13, v1

    if-gtz p0, :cond_12

    const-string p0, "1 year ago"
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 248
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_12
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/TmsEventAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;I)V
    .locals 4

    .line 66
    iget-object v0, p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->img_user:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f010014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 73
    iget-object v0, p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f010013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 76
    iget-object v0, p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->tv_day:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getTraining_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getVenue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->training_start_date:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getTraining_start_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v3}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getTraining_end_date()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p1, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;->training_end_date:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getTraining_start_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/NewTMS/NewSchduledInfoList;->getTraining_end_time()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/TmsEventAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;
    .locals 2

    .line 54
    iget-object p2, p0, Lcom/dp/sgp/Adapters/TmsEventAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00df

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/TmsEventAdapter$NewsViewHolder;-><init>(Lcom/dp/sgp/Adapters/TmsEventAdapter;Landroid/view/View;)V

    return-object p2
.end method
