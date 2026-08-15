.class final Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;
.super Ljava/lang/Object;
.source "HpackDraft07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/HpackDraft07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final emittedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

.field headerCount:I

.field headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

.field headerTableByteCount:I

.field private maxHeaderTableByteCount:I

.field private maxHeaderTableByteCountSetting:I

.field nextHeaderIndex:I

.field referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ILokio/Source;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Header;

    .line 122
    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 124
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 131
    new-instance v1, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 136
    new-instance v1, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 137
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 140
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    .line 141
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 142
    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    return-void
.end method

.method private adjustHeaderTableByteCount()V
    .locals 2

    .line 163
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearHeaderTable()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 167
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->evictToRecoverBytes(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearHeaderTable()V
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearReferenceSet()V

    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 177
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    return-void
.end method

.method private clearReferenceSet()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 187
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 188
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {p1, v0}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 192
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {p1, v0}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 193
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    :cond_1
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .locals 2

    .line 316
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    return-object p1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    return-object p1
.end method

.method private headerTableIndex(I)I
    .locals 1

    .line 287
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V
    .locals 6

    .line 329
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 335
    :cond_0
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-le v0, v2, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearHeaderTable()V

    .line 338
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 343
    :cond_1
    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 344
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->evictToRecoverBytes(I)I

    move-result v2

    if-ne p1, v1, :cond_4

    .line 347
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v1

    if-le p1, v2, :cond_3

    .line 348
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array v2, p1, [Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v3, 0x0

    .line 349
    array-length v4, v1

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x40

    if-ne p1, v1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    check-cast p1, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/squareup/okhttp/internal/BitArray;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 352
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    check-cast p1, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/squareup/okhttp/internal/BitArray;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v1, v1

    invoke-interface {p1, v1}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 356
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v1, v1

    invoke-interface {p1, v1}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 357
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 358
    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 360
    :cond_3
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 361
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, p1}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 362
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v1, p1

    .line 363
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    goto :goto_0

    .line 365
    :cond_4
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 366
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, p1}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 367
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v1, p1

    .line 369
    :goto_0
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    return-void
.end method

.method private isStaticHeader(I)Z
    .locals 1

    .line 324
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    sub-int/2addr p1, v0

    .line 266
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 269
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    aget-object p1, v0, p1

    .line 270
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_2
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/BitArray;->toggle(I)V

    :goto_0
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getName(I)Lokio/ByteString;

    move-result-object p1

    .line 305
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v1, p1, v0}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 312
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getName(I)Lokio/ByteString;

    move-result-object p1

    .line 292
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v2, p1, v0}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method emitReferenceSet()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    if-eq v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getAndReset()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 259
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    return-object v0
.end method

.method maxHeaderTableByteCount()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    return v0
.end method

.method maxHeaderTableByteCountSetting(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    .line 158
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 159
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->adjustHeaderTableByteCount()V

    return-void
.end method

.method readByteString()Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 402
    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 405
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->get()Lcom/squareup/okhttp/internal/spdy/Huffman;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/spdy/Huffman;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method readHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_9

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    const/16 v1, 0x7f

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 212
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readIndexedHeader(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    const/16 v1, 0x3f

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 217
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    const/16 v3, 0xf

    const/16 v4, 0x10

    if-ne v1, v2, :cond_6

    and-int/lit8 v1, v0, 0x10

    if-ne v1, v4, :cond_4

    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearReferenceSet()V

    goto :goto_0

    .line 220
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header table state change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_4
    invoke-virtual {p0, v0, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-ltz v0, :cond_5

    .line 224
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    if-gt v0, v1, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->adjustHeaderTableByteCount()V

    goto :goto_0

    .line 226
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header table byte count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eq v0, v4, :cond_8

    if-nez v0, :cond_7

    goto :goto_1

    .line 233
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 234
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_0

    .line 231
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_0

    .line 209
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method readInt(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 386
    :goto_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
