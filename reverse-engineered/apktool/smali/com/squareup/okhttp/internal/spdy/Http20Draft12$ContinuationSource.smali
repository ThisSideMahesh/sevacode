.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:S

.field length:S

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    return-void
.end method

.method private readContinuationHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 637
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 638
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const/high16 v3, 0x3fff0000    # 1.9921875f

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    .line 639
    iput-short v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    const v3, 0xff00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 641
    iput-byte v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    .line 642
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    iget-short v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    iget-byte v7, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    invoke-static {v4, v5, v6, v3, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-byte v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    invoke-static {v1, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v1

    iput-short v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 644
    iget-short v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    iget-byte v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    invoke-static {v5, v6, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result v1

    iput-short v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    iput-short v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    .line 645
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    const/16 v2, 0x9

    const/4 v5, 0x0

    if-ne v3, v2, :cond_2

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    .line 647
    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    .line 646
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    :goto_0
    iget-short v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    const/4 v0, 0x0

    .line 616
    iput-short v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 617
    iget-byte v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    .line 624
    :cond_2
    iget-short p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    int-to-short p3, p3

    iput-short p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
