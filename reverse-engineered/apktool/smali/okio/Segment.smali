.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SIZE:I = 0x800


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field pos:I

.field prev:Lokio/Segment;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 34
    iput-object v0, p0, Lokio/Segment;->data:[B

    return-void
.end method


# virtual methods
.method public compact()V
    .locals 5

    .line 111
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eq v0, p0, :cond_1

    .line 112
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lokio/Segment;->limit:I

    iget v3, p0, Lokio/Segment;->pos:I

    sub-int v4, v2, v3

    add-int/2addr v1, v4

    const/16 v4, 0x800

    if-le v1, v4, :cond_0

    return-void

    :cond_0
    sub-int/2addr v2, v3

    .line 113
    invoke-virtual {p0, v0, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 114
    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 115
    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {v0, p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return-void

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public pop()Lokio/Segment;
    .locals 4

    .line 53
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 54
    :goto_0
    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 55
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 56
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 57
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    return-object v2
.end method

.method public push(Lokio/Segment;)Lokio/Segment;
    .locals 1

    .line 66
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 67
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 68
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 69
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    return-object p1
.end method

.method public split(I)Lokio/Segment;
    .locals 5

    .line 83
    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    if-lez p1, :cond_1

    if-lez v0, :cond_1

    if-ge p1, v0, :cond_0

    .line 89
    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {v0}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lokio/Segment;->data:[B

    iget v2, p0, Lokio/Segment;->pos:I

    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v4, v0, Lokio/Segment;->pos:I

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v1, p0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->pos:I

    .line 92
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 93
    iget-object p1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {p1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    return-object v0

    .line 97
    :cond_0
    sget-object v1, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    invoke-virtual {v1}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lokio/Segment;->data:[B

    iget v3, p0, Lokio/Segment;->pos:I

    add-int/2addr v3, p1

    iget-object p1, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    invoke-static {v2, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget p1, p0, Lokio/Segment;->limit:I

    sub-int/2addr p1, v0

    iput p1, p0, Lokio/Segment;->limit:I

    .line 100
    iget p1, v1, Lokio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v1, Lokio/Segment;->limit:I

    .line 101
    invoke-virtual {p0, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    return-object p0

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public writeTo(Lokio/Segment;I)V
    .locals 4

    .line 122
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int v2, v0, v1

    add-int/2addr v2, p2

    const/16 v3, 0x800

    if-gt v2, v3, :cond_1

    add-int v2, v0, p2

    if-le v2, v3, :cond_0

    .line 126
    iget-object v2, p1, Lokio/Segment;->data:[B

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->limit:I

    .line 128
    iput v3, p1, Lokio/Segment;->pos:I

    .line 131
    :cond_0
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget v1, p0, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    .line 133
    iget p1, p0, Lokio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/Segment;->pos:I

    return-void

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
