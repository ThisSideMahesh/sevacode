.class public final Lcom/squareup/okhttp/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method private constructor <init>(ZZIIZZIIZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    .line 28
    iput-boolean p2, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    .line 29
    iput p3, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    .line 30
    iput p4, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 31
    iput-boolean p5, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    .line 32
    iput-boolean p6, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    .line 33
    iput p7, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    .line 34
    iput p8, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    .line 35
    iput-boolean p9, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    return-void
.end method

.method public static parse(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 114
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 115
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    const-string v13, "Cache-Control"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    const-string v13, "Pragma"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 120
    :cond_0
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    .line 122
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_d

    const-string v14, "=,;"

    .line 124
    invoke-static {v3, v13, v14}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v14

    .line 125
    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    if-eq v14, v15, :cond_3

    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v2, 0x2c

    if-eq v15, v2, :cond_3

    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v15, 0x3b

    if-ne v2, v15, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 133
    invoke-static {v3, v14}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v2, v14, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_2

    add-int/lit8 v2, v2, 0x1

    const-string v14, "\""

    .line 139
    invoke-static {v3, v2, v14}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v14

    .line 140
    invoke-virtual {v3, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_2
    const-string v14, ",;"

    .line 146
    invoke-static {v3, v2, v14}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v14

    .line 147
    invoke-virtual {v3, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    :goto_3
    const-string v15, "no-cache"

    .line 151
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_4
    const-string v15, "no-store"

    .line 153
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const-string v15, "max-age"

    .line 155
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 156
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    goto :goto_4

    :cond_6
    const-string v15, "s-maxage"

    .line 157
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 158
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    goto :goto_4

    :cond_7
    const-string v15, "public"

    .line 159
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const-string v15, "must-revalidate"

    .line 161
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    const-string v15, "max-stale"

    .line 163
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 164
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    goto :goto_4

    :cond_a
    const-string v15, "min-fresh"

    .line 165
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 166
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v2

    move v11, v2

    goto :goto_4

    :cond_b
    const-string v2, "only-if-cached"

    .line 167
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v12, 0x1

    :cond_c
    :goto_4
    move v13, v14

    goto/16 :goto_1

    :cond_d
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 173
    :cond_e
    new-instance v0, Lcom/squareup/okhttp/CacheControl;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/squareup/okhttp/CacheControl;-><init>(ZZIIZZIIZ)V

    return-object v0
.end method


# virtual methods
.method public isPublic()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method
