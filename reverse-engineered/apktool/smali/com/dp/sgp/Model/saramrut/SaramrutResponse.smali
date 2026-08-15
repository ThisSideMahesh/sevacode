.class public Lcom/dp/sgp/Model/saramrut/SaramrutResponse;
.super Ljava/lang/Object;
.source "SaramrutResponse.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/Saramrutlist;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/SaramrutResponse;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/Saramrutlist;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/SaramrutResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/SaramrutResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/SaramrutResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/Saramrutlist;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/SaramrutResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/SaramrutResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/SaramrutResponse;->status:Ljava/lang/String;

    return-void
.end method
