.class public Lorg/ocpsoft/prettytime/PrettyTime;
.super Ljava/lang/Object;
.source "PrettyTime.java"


# instance fields
.field private volatile cachedUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile locale:Ljava/util/Locale;

.field private volatile reference:Ljava/util/Date;

.field private volatile units:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            "Lorg/ocpsoft/prettytime/TimeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 78
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->initTimeUnits()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 0

    .line 121
    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    .line 122
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    .line 105
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;

    .line 106
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->initTimeUnits()V

    return-void
.end method

.method private addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V
    .locals 1

    .line 714
    new-instance v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    invoke-direct {v0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;-><init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method private calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;
    .locals 17

    .line 719
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 724
    invoke-virtual/range {p0 .. p0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v2

    .line 726
    new-instance v3, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    invoke-direct {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 728
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 730
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 731
    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 732
    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMaxQuantity()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 734
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v5, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v11, v13, v9

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    add-int/lit8 v9, v5, 0x1

    .line 738
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-interface {v9}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v9

    invoke-interface {v6}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v15

    div-long/2addr v9, v15

    :cond_1
    mul-long v9, v9, v7

    cmp-long v11, v9, v0

    if-gtz v11, :cond_3

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 746
    :cond_3
    :goto_2
    invoke-virtual {v3, v6}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setUnit(Lorg/ocpsoft/prettytime/TimeUnit;)V

    cmp-long v2, v7, v0

    if-lez v2, :cond_4

    .line 749
    invoke-direct/range {p0 .. p2}, Lorg/ocpsoft/prettytime/PrettyTime;->getSign(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    .line 750
    invoke-virtual {v3, v13, v14}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    goto :goto_3

    .line 754
    :cond_4
    div-long v0, p1, v7

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    .line 755
    invoke-virtual {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v0

    mul-long v0, v0, v7

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    :cond_5
    :goto_3
    return-object v3
.end method

.method private getSign(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method private initTimeUnits()V
    .locals 1

    .line 698
    new-instance v0, Lorg/ocpsoft/prettytime/units/JustNow;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/JustNow;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 699
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millisecond;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millisecond;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 700
    new-instance v0, Lorg/ocpsoft/prettytime/units/Second;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Second;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 701
    new-instance v0, Lorg/ocpsoft/prettytime/units/Minute;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Minute;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 702
    new-instance v0, Lorg/ocpsoft/prettytime/units/Hour;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Hour;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 703
    new-instance v0, Lorg/ocpsoft/prettytime/units/Day;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Day;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 704
    new-instance v0, Lorg/ocpsoft/prettytime/units/Week;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Week;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 705
    new-instance v0, Lorg/ocpsoft/prettytime/units/Month;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Month;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 706
    new-instance v0, Lorg/ocpsoft/prettytime/units/Year;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Year;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 707
    new-instance v0, Lorg/ocpsoft/prettytime/units/Decade;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Decade;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 708
    new-instance v0, Lorg/ocpsoft/prettytime/units/Century;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Century;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 709
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millennium;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millennium;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    return-void
.end method

.method private now()Ljava/util/Date;
    .locals 1

    .line 693
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method


# virtual methods
.method public approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;
    .locals 5

    if-nez p1, :cond_0

    .line 134
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 138
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    .line 140
    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 141
    invoke-direct {p0, v1, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    return-object p1
.end method

.method public calculatePreciseDuration(Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 162
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 164
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/util/Date;

    .line 166
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 168
    invoke-direct {p0, v1, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 169
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const-wide/16 v1, 0x0

    .line 170
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getDelta()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 172
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getDelta()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/Duration;

    .line 176
    invoke-interface {v1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v1

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 182
    :cond_3
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v1

    invoke-interface {v1}, Lorg/ocpsoft/prettytime/TimeUnit;->isPrecise()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public clearUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 683
    iput-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 684
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 214
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 198
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 247
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 254
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 255
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/ocpsoft/prettytime/Duration;

    .line 256
    invoke-interface {v3}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v2

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 262
    invoke-interface {v2, v3}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_1
    invoke-interface {v2, v3}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 248
    :cond_3
    :goto_2
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 229
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 231
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 232
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-interface {v0, p1, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 376
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 378
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 379
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 411
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 418
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 419
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/Duration;

    .line 420
    invoke-interface {v2}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v3

    .line 425
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 426
    invoke-interface {v3, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 428
    :cond_1
    invoke-interface {v3, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 412
    :cond_3
    :goto_2
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 394
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 396
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 397
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 463
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 465
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 466
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 447
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 498
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 504
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 505
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/Duration;

    .line 506
    invoke-interface {v2}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v3

    .line 508
    invoke-interface {v3, v2}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, " "

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 499
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 481
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 483
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 484
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 297
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 298
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 280
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/Duration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 329
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 336
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 337
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/ocpsoft/prettytime/Duration;

    .line 338
    invoke-interface {v3}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v2

    .line 340
    invoke-interface {v2, v3}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    const-string v4, " "

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 330
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 312
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 314
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    .line 315
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-interface {v0, p1, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getReference()Ljava/util/Date;
    .locals 1

    .line 535
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/util/Date;

    return-object v0
.end method

.method public getUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UNIT::",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">(",
            "Ljava/lang/Class<",
            "TUNIT;>;)TUNIT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 575
    :cond_0
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 576
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 559
    new-instance v1, Lorg/ocpsoft/prettytime/units/TimeUnitComparator;

    invoke-direct {v1}, Lorg/ocpsoft/prettytime/units/TimeUnitComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 560
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    return-object v0
.end method

.method public registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 596
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 598
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    instance-of v0, p1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v0, :cond_0

    .line 600
    check-cast p1, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    .line 601
    :cond_0
    instance-of p1, p2, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz p1, :cond_1

    .line 602
    check-cast p2, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {p2, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    :cond_1
    return-object p0

    .line 594
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Format to register must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 592
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unit to register must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UNIT::",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            ">(",
            "Ljava/lang/Class<",
            "TUNIT;>;)",
            "Lorg/ocpsoft/prettytime/TimeFormat;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 616
    :cond_0
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 617
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 621
    iget-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public removeUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 637
    :cond_0
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 639
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 3

    if-nez p1, :cond_0

    .line 657
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 659
    :cond_0
    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 660
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 661
    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_1

    .line 662
    check-cast v1, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v1, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    goto :goto_0

    .line 664
    :cond_2
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 665
    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_3

    .line 666
    check-cast v1, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v1, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;
    .locals 0

    .line 548
    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/util/Date;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrettyTime [reference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
