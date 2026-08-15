.class public Lcom/dp/sgp/Model/saramrut/NewSwamiExample;
.super Ljava/lang/Object;
.source "NewSwamiExample.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiExample;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiExample;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiExample;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiExample;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiExample;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiExample;->status:Ljava/lang/String;

    return-void
.end method
