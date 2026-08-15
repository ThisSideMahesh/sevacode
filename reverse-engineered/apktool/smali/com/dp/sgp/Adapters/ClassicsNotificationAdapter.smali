.class public Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ClassicsNotificationAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field isDark:Z

.field mContext:Landroid/content/Context;

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;"
        }
    .end annotation
.end field

.field mDataFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
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
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->isDark:Z

    .line 47
    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mData:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/HomeResponse/Banner;",
            ">;Z)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->isDark:Z

    .line 40
    iput-object p1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mData:Ljava/util/List;

    .line 42
    iput-boolean p3, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->isDark:Z

    .line 43
    iput-object p2, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    return-void
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, ""

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 315
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 321
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    :try_start_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date in milli :: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-wide v4, v2

    .line 325
    :goto_0
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 331
    :goto_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 338
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 339
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 345
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 346
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 348
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    const-wide/32 v6, 0xea60

    const-wide/32 v8, 0x36ee80

    const-wide/32 v10, 0x5265c00

    .line 355
    div-long v12, v0, v10

    .line 356
    rem-long/2addr v0, v10

    .line 358
    div-long v10, v0, v8

    .line 359
    rem-long/2addr v0, v8

    .line 361
    div-long v8, v0, v6

    .line 362
    rem-long/2addr v0, v6

    .line 364
    div-long v6, v0, v4

    .line 366
    rem-long/2addr v0, v4

    cmp-long p0, v12, v2

    if-nez p0, :cond_4

    cmp-long p0, v10, v2

    if-nez p0, :cond_3

    cmp-long p0, v8, v2

    if-nez p0, :cond_2

    cmp-long p0, v6, v2

    if-gez p0, :cond_1

    const-string p0, "0 s"

    return-object p0

    :cond_1
    cmp-long p0, v12, v2

    if-lez p0, :cond_12

    const-wide/16 v0, 0x3b

    cmp-long p0, v6, v0

    if-gez p0, :cond_12

    const-string p0, " now"

    return-object p0

    .line 378
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " mins ago"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 381
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " hr ago"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/16 v0, 0x1d

    cmp-long p0, v12, v0

    if-gtz p0, :cond_5

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " days ago"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-wide/16 v2, 0x3a

    cmp-long p0, v12, v0

    if-lez p0, :cond_6

    cmp-long p0, v12, v2

    if-gtz p0, :cond_6

    const-string p0, "1 month ago"

    return-object p0

    :cond_6
    const-wide/16 v0, 0x57

    cmp-long p0, v12, v2

    if-lez p0, :cond_7

    cmp-long p0, v12, v0

    if-gtz p0, :cond_7

    const-string p0, "2 months ago"

    return-object p0

    :cond_7
    const-wide/16 v2, 0x74

    cmp-long p0, v12, v0

    if-lez p0, :cond_8

    cmp-long p0, v12, v2

    if-gtz p0, :cond_8

    const-string p0, "3 months ago"

    return-object p0

    :cond_8
    const-wide/16 v0, 0x91

    cmp-long p0, v12, v2

    if-lez p0, :cond_9

    cmp-long p0, v12, v0

    if-gtz p0, :cond_9

    const-string p0, "4 months ago"

    return-object p0

    :cond_9
    const-wide/16 v2, 0xae

    cmp-long p0, v12, v0

    if-lez p0, :cond_a

    cmp-long p0, v12, v2

    if-gtz p0, :cond_a

    const-string p0, "5 months ago"

    return-object p0

    :cond_a
    const-wide/16 v0, 0xcb

    cmp-long p0, v12, v2

    if-lez p0, :cond_b

    cmp-long p0, v12, v0

    if-gtz p0, :cond_b

    const-string p0, "6 months ago"

    return-object p0

    :cond_b
    const-wide/16 v2, 0xe8

    cmp-long p0, v12, v0

    if-lez p0, :cond_c

    cmp-long p0, v12, v2

    if-gtz p0, :cond_c

    const-string p0, "7 months ago"

    return-object p0

    :cond_c
    const-wide/16 v0, 0x105

    cmp-long p0, v12, v2

    if-lez p0, :cond_d

    cmp-long p0, v12, v0

    if-gtz p0, :cond_d

    const-string p0, "8 months ago"

    return-object p0

    :cond_d
    const-wide/16 v2, 0x122

    cmp-long p0, v12, v0

    if-lez p0, :cond_e

    cmp-long p0, v12, v2

    if-gtz p0, :cond_e

    const-string p0, "9 months ago"

    return-object p0

    :cond_e
    const-wide/16 v0, 0x13f

    cmp-long p0, v12, v2

    if-lez p0, :cond_f

    cmp-long p0, v12, v0

    if-gtz p0, :cond_f

    const-string p0, "10 months ago"

    return-object p0

    :cond_f
    const-wide/16 v2, 0x15c

    cmp-long p0, v12, v0

    if-lez p0, :cond_10

    cmp-long p0, v12, v2

    if-gtz p0, :cond_10

    const-string p0, "11 months ago"

    return-object p0

    :cond_10
    const-wide/16 v0, 0x168

    cmp-long p0, v12, v2

    if-lez p0, :cond_11

    cmp-long p0, v12, v0

    if-gtz p0, :cond_11

    const-string p0, "12 months ago"

    return-object p0

    :cond_11
    cmp-long p0, v12, v0

    if-lez p0, :cond_12

    const-wide/16 v0, 0x2d0

    cmp-long p0, v12, v0

    if-gtz p0, :cond_12

    const-string p0, "1 year ago"
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 431
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_12
    const-string p0, "now"

    return-object p0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 241
    new-instance v0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$1;-><init>(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->onBindViewHolder(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;I)V
    .locals 5

    .line 71
    iget-object v0, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->img_user:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f010014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object v0, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f010013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 81
    iget-object v0, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {v0}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getCreate_datetime()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->publishedAt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {v3}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getCreate_datetime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->parseDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v3, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->releaseYear:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    iget-object v1, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->img_user:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0801a1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {v1}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object p2, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_date:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mDataFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dp/sgp/Model/HomeResponse/Banner;

    invoke-virtual {p2}, Lcom/dp/sgp/Model/HomeResponse/Banner;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 206
    iget-object p2, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_date:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 209
    :cond_2
    iget-object p2, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_date:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 215
    :cond_3
    iget-object p2, p1, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->tv_date:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_1
    invoke-static {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 220
    invoke-static {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 221
    invoke-static {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    .line 223
    invoke-static {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 224
    invoke-static {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 225
    invoke-static {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 228
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    .line 229
    invoke-virtual {p2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 230
    invoke-static {p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;->access$000(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, p2, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;
    .locals 2

    .line 58
    iget-object p2, p0, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter$NewsViewHolder;-><init>(Lcom/dp/sgp/Adapters/ClassicsNotificationAdapter;Landroid/view/View;)V

    return-object p2
.end method
