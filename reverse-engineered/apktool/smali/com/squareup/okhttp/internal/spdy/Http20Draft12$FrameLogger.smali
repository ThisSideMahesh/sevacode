.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;
.super Ljava/lang/Object;
.source "Http20Draft12.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "DATA"

    const-string v1, "HEADERS"

    const-string v2, "PRIORITY"

    const-string v3, "RST_STREAM"

    const-string v4, "SETTINGS"

    const-string v5, "PUSH_PROMISE"

    const-string v6, "PING"

    const-string v7, "GOAWAY"

    const-string v8, "WINDOW_UPDATE"

    const-string v9, "CONTINUATION"

    const-string v10, "ALTSVC"

    const-string v11, "BLOCKED"

    .line 737
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    .line 756
    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    .line 757
    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 760
    :goto_0
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v1, v3, :cond_0

    new-array v3, v5, [Ljava/lang/Object;

    .line 761
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "%8s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    const-string v2, "END_STREAM"

    .line 765
    aput-object v2, v1, v5

    const-string v2, "END_SEGMENT"

    const/4 v3, 0x2

    .line 766
    aput-object v2, v1, v3

    const-string v2, "END_STREAM|END_SEGMENT"

    const/4 v5, 0x3

    .line 767
    aput-object v2, v1, v5

    new-array v2, v5, [I

    .line 768
    fill-array-data v2, :array_0

    const/16 v6, 0x8

    const-string v7, "PAD_LOW"

    .line 771
    aput-object v7, v1, v6

    const/16 v6, 0x18

    const-string v7, "PAD_LOW|PAD_HIGH"

    .line 772
    aput-object v7, v1, v6

    new-array v1, v3, [I

    .line 773
    fill-array-data v1, :array_1

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x7c

    if-ge v6, v5, :cond_2

    .line 775
    aget v8, v2, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_1

    .line 776
    aget v10, v1, v9

    .line 777
    sget-object v11, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v12, v8, v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v10, v11, v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 781
    :cond_2
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/4 v8, 0x4

    const-string v9, "END_HEADERS"

    aput-object v9, v6, v8

    const-string v8, "PRIORITY"

    .line 782
    aput-object v8, v6, v4

    const/16 v4, 0x24

    const-string v8, "END_HEADERS|PRIORITY"

    .line 783
    aput-object v8, v6, v4

    new-array v4, v5, [I

    .line 784
    fill-array-data v4, :array_2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    .line 787
    aget v8, v4, v6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_4

    .line 788
    aget v10, v2, v9

    .line 789
    sget-object v11, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v12, v10, v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v11, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v3, :cond_3

    .line 790
    aget v13, v1, v11

    .line 791
    sget-object v14, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v15, v12, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v14, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v14, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v14, v13

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x2

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x2

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x2

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 797
    :goto_6
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 798
    aget-object v2, v1, v0

    if-nez v2, :cond_6

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x18
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 726
    :pswitch_0
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    aget-object v0, v0, p1

    goto :goto_1

    :pswitch_1
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    const-string p0, "ACK"

    goto :goto_0

    .line 717
    :cond_1
    sget-object p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_0
    return-object p0

    .line 724
    :pswitch_2
    sget-object p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 726
    :cond_2
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    .line 729
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_4

    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    .line 731
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .locals 4

    .line 701
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_0

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 702
    :goto_0
    invoke-static {p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string p0, "<<"

    goto :goto_1

    :cond_1
    const-string p0, ">>"

    :goto_1
    aput-object p0, p4, v2

    .line 703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v3

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p0

    const/4 p0, 0x3

    aput-object v0, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
