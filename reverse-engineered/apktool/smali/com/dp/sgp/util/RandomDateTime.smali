.class public Lcom/dp/sgp/util/RandomDateTime;
.super Ljava/lang/Object;
.source "RandomDateTime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    .line 14
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v0, 0x76c

    const/16 v1, 0x7e5

    .line 15
    invoke-static {v0, v1}, Lcom/dp/sgp/util/RandomDateTime;->randBetween(II)I

    move-result v3

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 16
    invoke-static {v0, v1}, Lcom/dp/sgp/util/RandomDateTime;->randBetween(II)I

    move-result v4

    const/16 v1, 0x9

    const/16 v2, 0x16

    .line 17
    invoke-static {v1, v2}, Lcom/dp/sgp/util/RandomDateTime;->randBetween(II)I

    move-result v6

    const/16 v1, 0x3b

    .line 18
    invoke-static {v0, v1}, Lcom/dp/sgp/util/RandomDateTime;->randBetween(II)I

    move-result v7

    .line 19
    invoke-static {v0, v1}, Lcom/dp/sgp/util/RandomDateTime;->randBetween(II)I

    move-result v8

    .line 22
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v4, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/dp/sgp/util/RandomDateTime;->randBetween(II)I

    move-result v5

    move-object v2, v0

    .line 25
    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static randBetween(II)I
    .locals 4

    .line 33
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-int/2addr p1, p0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/2addr p0, p1

    return p0
.end method
