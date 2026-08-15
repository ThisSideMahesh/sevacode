.class public Lcom/dp/sgp/compactcalendarview/WeekUtils;
.super Ljava/lang/Object;
.source "WeekUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWeekdayNames(Ljava/util/Locale;IZ)[Ljava/lang/String;
    .locals 8

    .line 10
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 11
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x1

    .line 21
    aget-object v4, p0, v3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aget-object v6, p0, v4

    aput-object v6, v2, v3

    const/4 v6, 0x3

    aget-object v7, p0, v6

    aput-object v7, v2, v4

    const/4 v4, 0x4

    aget-object v7, p0, v4

    aput-object v7, v2, v6

    const/4 v6, 0x5

    aget-object v7, p0, v6

    aput-object v7, v2, v4

    const/4 v4, 0x6

    aget-object v7, p0, v4

    aput-object v7, v2, v6

    aget-object p0, p0, v0

    aput-object p0, v2, v4

    sub-int/2addr p1, v3

    const/4 p0, 0x0

    :goto_0
    if-gt p0, v4, :cond_1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 24
    :cond_0
    aget-object v6, v2, p1

    aput-object v6, v1, p0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p1, v3

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_2

    .line 29
    aget-object p1, v1, p0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected weekday names from default locale to be of size 7 but: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " with size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " was returned."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to determine weekday names from default locale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
