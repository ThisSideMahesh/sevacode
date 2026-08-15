.class final Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 209
    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    const/4 v0, 0x0

    .line 210
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->symbol:I

    .line 211
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 222
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->symbol:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 224
    :cond_0
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    return-object p0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I
    .locals 0

    .line 196
    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->symbol:I

    return p0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I
    .locals 0

    .line 196
    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    return p0
.end method
