.class Lcom/squareup/okhttp/Call$RealResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealResponseBody"
.end annotation


# instance fields
.field private final response:Lcom/squareup/okhttp/Response;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Response;Lokio/BufferedSource;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->response:Lcom/squareup/okhttp/Response;

    .line 247
    iput-object p2, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->source:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->response:Lcom/squareup/okhttp/Response;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Response;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->response:Lcom/squareup/okhttp/Response;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->source:Lokio/BufferedSource;

    return-object v0
.end method
