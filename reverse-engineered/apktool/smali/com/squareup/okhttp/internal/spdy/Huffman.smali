.class Lcom/squareup/okhttp/internal/spdy/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    }
.end annotation


# static fields
.field private static final CODES:[I

.field private static final CODE_LENGTHS:[B

.field private static final INSTANCE:Lcom/squareup/okhttp/internal/spdy/Huffman;


# instance fields
.field private final root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 35
    fill-array-data v1, :array_0

    sput-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODES:[I

    new-array v0, v0, [B

    .line 65
    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    .line 79
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->INSTANCE:Lcom/squareup/okhttp/internal/spdy/Huffman;

    return-void

    :array_0
    .array-data 4
        0x3ffffba
        0x3ffffbb
        0x3ffffbc
        0x3ffffbd
        0x3ffffbe
        0x3ffffbf
        0x3ffffc0
        0x3ffffc1
        0x3ffffc2
        0x3ffffc3
        0x3ffffc4
        0x3ffffc5
        0x3ffffc6
        0x3ffffc7
        0x3ffffc8
        0x3ffffc9
        0x3ffffca
        0x3ffffcb
        0x3ffffcc
        0x3ffffcd
        0x3ffffce
        0x3ffffcf
        0x3ffffd0
        0x3ffffd1
        0x3ffffd2
        0x3ffffd3
        0x3ffffd4
        0x3ffffd5
        0x3ffffd6
        0x3ffffd7
        0x3ffffd8
        0x3ffffd9
        0x6
        0x1ffc
        0x1f0
        0x3ffc
        0x7ffc
        0x1e
        0x64
        0x1ffd
        0x3fa
        0x1f1
        0x3fb
        0x3fc
        0x65
        0x66
        0x1f
        0x7
        0x0
        0x1
        0x2
        0x8
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0xec
        0x1fffc
        0x27
        0x7ffd
        0x3fd
        0x7ffe
        0x67
        0xed
        0xee
        0x68
        0xef
        0x69
        0x6a
        0x1f2
        0xf0
        0x1f3
        0x1f4
        0x1f5
        0x6b
        0x6c
        0xf1
        0xf2
        0x1f6
        0x1f7
        0x6d
        0x28
        0xf3
        0x1f8
        0x1f9
        0xf4
        0x1fa
        0x1fb
        0x7fc
        0x3ffffda
        0x7fd
        0x3ffd
        0x6e
        0x3fffe
        0x9
        0x6f
        0xa
        0x29
        0xb
        0x70
        0x2a
        0x2b
        0xc
        0xf5
        0xf6
        0x2c
        0x2d
        0x2e
        0xd
        0x2f
        0x1fc
        0x30
        0x31
        0xe
        0x71
        0x72
        0x73
        0x74
        0x75
        0xf7
        0x1fffd
        0xffc
        0x1fffe
        0xffd
        0x3ffffdb
        0x3ffffdc
        0x3ffffdd
        0x3ffffde
        0x3ffffdf
        0x3ffffe0
        0x3ffffe1
        0x3ffffe2
        0x3ffffe3
        0x3ffffe4
        0x3ffffe5
        0x3ffffe6
        0x3ffffe7
        0x3ffffe8
        0x3ffffe9
        0x3ffffea
        0x3ffffeb
        0x3ffffec
        0x3ffffed
        0x3ffffee
        0x3ffffef
        0x3fffff0
        0x3fffff1
        0x3fffff2
        0x3fffff3
        0x3fffff4
        0x3fffff5
        0x3fffff6
        0x3fffff7
        0x3fffff8
        0x3fffff9
        0x3fffffa
        0x3fffffb
        0x3fffffc
        0x3fffffd
        0x3fffffe
        0x3ffffff
        0x1ffff80
        0x1ffff81
        0x1ffff82
        0x1ffff83
        0x1ffff84
        0x1ffff85
        0x1ffff86
        0x1ffff87
        0x1ffff88
        0x1ffff89
        0x1ffff8a
        0x1ffff8b
        0x1ffff8c
        0x1ffff8d
        0x1ffff8e
        0x1ffff8f
        0x1ffff90
        0x1ffff91
        0x1ffff92
        0x1ffff93
        0x1ffff94
        0x1ffff95
        0x1ffff96
        0x1ffff97
        0x1ffff98
        0x1ffff99
        0x1ffff9a
        0x1ffff9b
        0x1ffff9c
        0x1ffff9d
        0x1ffff9e
        0x1ffff9f
        0x1ffffa0
        0x1ffffa1
        0x1ffffa2
        0x1ffffa3
        0x1ffffa4
        0x1ffffa5
        0x1ffffa6
        0x1ffffa7
        0x1ffffa8
        0x1ffffa9
        0x1ffffaa
        0x1ffffab
        0x1ffffac
        0x1ffffad
        0x1ffffae
        0x1ffffaf
        0x1ffffb0
        0x1ffffb1
        0x1ffffb2
        0x1ffffb3
        0x1ffffb4
        0x1ffffb5
        0x1ffffb6
        0x1ffffb7
        0x1ffffb8
        0x1ffffb9
        0x1ffffba
        0x1ffffbb
        0x1ffffbc
        0x1ffffbd
        0x1ffffbe
        0x1ffffbf
        0x1ffffc0
        0x1ffffc1
        0x1ffffc2
        0x1ffffc3
        0x1ffffc4
        0x1ffffc5
        0x1ffffc6
        0x1ffffc7
        0x1ffffc8
        0x1ffffc9
        0x1ffffca
        0x1ffffcb
        0x1ffffcc
        0x1ffffcd
        0x1ffffce
        0x1ffffcf
        0x1ffffd0
        0x1ffffd1
        0x1ffffd2
        0x1ffffd3
        0x1ffffd4
        0x1ffffd5
        0x1ffffd6
        0x1ffffd7
        0x1ffffd8
        0x1ffffd9
        0x1ffffda
        0x1ffffdb
    .end array-data

    :array_1
    .array-data 1
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x5t
        0xdt
        0x9t
        0xet
        0xft
        0x6t
        0x7t
        0xdt
        0xat
        0x9t
        0xat
        0xat
        0x7t
        0x7t
        0x6t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x8t
        0x11t
        0x6t
        0xft
        0xat
        0xft
        0x7t
        0x8t
        0x8t
        0x7t
        0x8t
        0x7t
        0x7t
        0x9t
        0x8t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0x7t
        0x6t
        0x8t
        0x9t
        0x9t
        0x8t
        0x9t
        0x9t
        0xbt
        0x1at
        0xbt
        0xet
        0x7t
        0x12t
        0x5t
        0x7t
        0x5t
        0x6t
        0x5t
        0x7t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x9t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x11t
        0xct
        0x11t
        0xct
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Huffman;->buildTree()V

    return-void
.end method

.method private addCode(IIB)V
    .locals 4

    .line 173
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v0, p1, p3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>(II)V

    .line 175
    iget-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    :goto_0
    const/16 v1, 0x8

    if-le p3, v1, :cond_2

    add-int/lit8 p3, p3, -0x8

    int-to-byte p3, p3

    ushr-int v1, p2, p3

    and-int/lit16 v1, v1, 0xff

    .line 179
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 183
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v2

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>()V

    aput-object v3, v2, v1

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_0

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid dictionary: prefix not unique"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sub-int/2addr v1, p3

    shl-int/2addr p2, v1

    and-int/lit16 p2, p2, 0xff

    const/4 p3, 0x1

    shl-int/2addr p3, v1

    move v1, p2

    :goto_1
    add-int v2, p2, p3

    if-ge v1, v2, :cond_3

    .line 192
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v2

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private buildTree()V
    .locals 3

    const/4 v0, 0x0

    .line 167
    :goto_0
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 168
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODES:[I

    aget v2, v2, v0

    aget-byte v1, v1, v0

    invoke-direct {p0, v0, v2, v1}, Lcom/squareup/okhttp/internal/spdy/Huffman;->addCode(IIB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get()Lcom/squareup/okhttp/internal/spdy/Huffman;
    .locals 1

    .line 82
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->INSTANCE:Lcom/squareup/okhttp/internal/spdy/Huffman;

    return-object v0
.end method


# virtual methods
.method decode([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 133
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 134
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x8

    :goto_1
    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    add-int/lit8 v5, v4, -0x8

    ushr-int v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    .line 139
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v1

    aget-object v1, v1, v5

    .line 140
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v5

    if-nez v5, :cond_0

    .line 142
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$100(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$200(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v1

    sub-int/2addr v4, v1

    .line 144
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x8

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-lez v4, :cond_4

    rsub-int/lit8 p1, v4, 0x8

    shl-int p1, v3, p1

    and-int/lit16 p1, p1, 0xff

    .line 154
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v1

    aget-object p1, v1, p1

    .line 155
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$200(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v1

    if-le v1, v4, :cond_3

    goto :goto_3

    .line 158
    :cond_3
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$100(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$200(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result p1

    sub-int/2addr v4, p1

    .line 160
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    goto :goto_2

    .line 163
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method encode([BLjava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 95
    :goto_0
    array-length v4, p1

    const/16 v5, 0xff

    if-ge v0, v4, :cond_1

    .line 96
    aget-byte v4, p1, v0

    and-int/2addr v4, v5

    .line 97
    sget-object v5, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODES:[I

    aget v5, v5, v4

    .line 98
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    aget-byte v4, v6, v4

    shl-long/2addr v2, v4

    int-to-long v5, v5

    or-long/2addr v2, v5

    add-int/2addr v1, v4

    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_0

    add-int/lit8 v1, v1, -0x8

    shr-long v4, v2, v1

    long-to-int v5, v4

    .line 106
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    rsub-int/lit8 p1, v1, 0x8

    shl-long/2addr v2, p1

    ushr-int p1, v5, v1

    int-to-long v0, p1

    or-long/2addr v0, v2

    long-to-int p1, v0

    .line 113
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    return-void
.end method

.method encodedLength([B)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 120
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 121
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 122
    sget-object v4, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    aget-byte v3, v4, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const/4 p1, 0x3

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method
