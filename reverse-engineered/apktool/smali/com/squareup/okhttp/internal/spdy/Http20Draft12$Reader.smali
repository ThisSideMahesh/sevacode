.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    .line 100
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->client:Z

    .line 101
    new-instance p3, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    invoke-direct {p3, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    .line 102
    new-instance p1, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-direct {p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;-><init>(ILokio/Source;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    return-void
.end method

.method private readAlternateService(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 355
    iget-object v1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v11, v1, v3

    .line 356
    iget-object v1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int v10, v1, v2

    .line 357
    iget-object v1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    .line 358
    iget-object v1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 359
    iget-object v2, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v8

    .line 360
    iget-object v2, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 361
    iget-object v3, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v3, p2, -0x9

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    .line 363
    iget-object v1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v3

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    move/from16 v6, p4

    .line 364
    invoke-interface/range {v5 .. v12}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V

    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 226
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {v1, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v1

    .line 227
    invoke-static {p2, p3, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result p2

    .line 229
    iget-object p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, p3, p2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 230
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 223
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p2, v0, :cond_3

    if-nez p4, :cond_2

    .line 331
    iget-object p4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    .line 332
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    sub-int/2addr p2, v0

    .line 334
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    .line 340
    iget-object p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p3

    .line 342
    :cond_0
    invoke-interface {p1, p4, v0, p3}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_1
    new-array p1, p3, [Ljava/lang/Object;

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 330
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    .line 329
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readHeaderBlock(SSBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSBI)",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-short p1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    iput-short p1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    .line 206
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-short p2, p1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 207
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-byte p3, p1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    .line 208
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput p4, p1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 210
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readHeaders()V

    .line 211
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emitReferenceSet()V

    .line 214
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getAndReset()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v0

    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_1

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    int-to-short p2, p2

    .line 196
    :cond_1
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result p2

    .line 198
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaderBlock(SSBI)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 200
    sget-object v7, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v1, p1

    move v4, p4

    invoke-interface/range {v1 .. v7}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    return-void

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 185
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    if-nez p4, :cond_1

    .line 321
    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    .line 322
    iget-object p4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 324
    :cond_0
    invoke-interface {p1, v0, p2, p4}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    .line 320
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 319
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 244
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 245
    invoke-interface {p1, p2, v0, v3, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_0

    .line 237
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 236
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 235
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 310
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    int-to-short p2, p2

    .line 313
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaderBlock(SSBI)Ljava/util/List;

    move-result-object p2

    .line 314
    invoke-interface {p1, p4, v1, p2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 308
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_1

    .line 252
    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    .line 253
    invoke-static {p2}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-interface {p1, p4, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 251
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, p3, [Ljava/lang/Object;

    .line 250
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 265
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 264
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 269
    :cond_1
    rem-int/lit8 p3, p2, 0x5

    if-nez p3, :cond_b

    .line 270
    new-instance p3, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {p3}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_9

    .line 272
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    .line 273
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const/4 v4, 0x4

    if-eq v2, p4, :cond_8

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    const/4 v5, 0x3

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, p4, [Ljava/lang/Object;

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    const/4 v2, 0x7

    if-ltz v3, :cond_4

    goto :goto_1

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 289
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_8

    if-ne v3, p4, :cond_7

    goto :goto_1

    :cond_7
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 280
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 297
    :cond_8
    :goto_1
    invoke-virtual {p3, v2, v0, v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 299
    :cond_9
    invoke-interface {p1, v0, p3}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 300
    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result p1

    if-ltz p1, :cond_a

    .line 301
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting(I)V

    :cond_a
    return-void

    :cond_b
    new-array p1, p4, [Ljava/lang/Object;

    .line 269
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 5 != 0: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    .line 262
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 348
    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 350
    invoke-interface {p1, p4, v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 349
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 347
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x3fff0000    # 1.9921875f

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    const v4, 0xff00

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const v5, 0x7fffffff

    and-int/2addr v2, v5

    .line 130
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v6, v2, v3, v4, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-array p1, v6, [Ljava/lang/Object;

    .line 178
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "PROTOCOL_ERROR: unknown frame type %s"

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v6, [Ljava/lang/Object;

    .line 174
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "TYPE_BLOCKED length != 0: %s"

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 170
    :pswitch_2
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readAlternateService(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 158
    :pswitch_5
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 154
    :pswitch_6
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 150
    :pswitch_7
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 146
    :pswitch_8
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 142
    :pswitch_9
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 138
    :pswitch_a
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 134
    :pswitch_b
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    :goto_0
    return v6

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->client:Z

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Expected a connection header but was %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
