.class final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final INSTANCE:Lokio/SegmentPool;

.field static final MAX_SIZE:J = 0x10000L


# instance fields
.field byteCount:J

.field private next:Lokio/Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method recycle(Lokio/Segment;)V
    .locals 9

    .line 52
    iget-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_1

    iget-object v0, p1, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_1

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v2, 0x800

    add-long v4, v0, v2

    const-wide/32 v6, 0x10000

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    add-long/2addr v0, v2

    .line 55
    iput-wide v0, p0, Lokio/SegmentPool;->byteCount:J

    .line 56
    iget-object v0, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    const/4 v0, 0x0

    .line 57
    iput v0, p1, Lokio/Segment;->limit:I

    iput v0, p1, Lokio/Segment;->pos:I

    .line 58
    iput-object p1, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method take()Lokio/Segment;
    .locals 5

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p0, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v1, 0x0

    .line 43
    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 44
    iget-wide v1, p0, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v3, 0x800

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/SegmentPool;->byteCount:J

    .line 45
    monitor-exit p0

    return-object v0

    .line 47
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
