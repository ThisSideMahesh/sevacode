.class public final Lretrofit/client/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final body:Lretrofit/mime/TypedOutput;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lretrofit/client/Header;",
            ">;",
            "Lretrofit/mime/TypedOutput;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method must not be null."

    .line 32
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "URL must not be null."

    .line 35
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lretrofit/client/Request;->method:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lretrofit/client/Request;->url:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lretrofit/client/Request;->headers:Ljava/util/List;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lretrofit/client/Request;->headers:Ljava/util/List;

    .line 46
    :goto_0
    iput-object p4, p0, Lretrofit/client/Request;->body:Lretrofit/mime/TypedOutput;

    return-void
.end method


# virtual methods
.method public getBody()Lretrofit/mime/TypedOutput;
    .locals 1

    .line 66
    iget-object v0, p0, Lretrofit/client/Request;->body:Lretrofit/mime/TypedOutput;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lretrofit/client/Request;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lretrofit/client/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lretrofit/client/Request;->url:Ljava/lang/String;

    return-object v0
.end method
