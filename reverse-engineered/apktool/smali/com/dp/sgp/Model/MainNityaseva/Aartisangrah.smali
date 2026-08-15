.class public Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;
.super Ljava/lang/Object;
.source "Aartisangrah.java"


# instance fields
.field private NaivadyaAartiSakali:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private bhupaliaartisakali:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field

.field private naivadyaaartisayankal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->NaivadyaAartiSakali:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->naivadyaaartisayankal:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->bhupaliaartisakali:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBhupaliaartisakali()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->bhupaliaartisakali:Ljava/util/List;

    return-object v0
.end method

.method public getNaivadyaAartiSakali()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->NaivadyaAartiSakali:Ljava/util/List;

    return-object v0
.end method

.method public getNaivadyaaartisayankal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->naivadyaaartisayankal:Ljava/util/List;

    return-object v0
.end method

.method public setBhupaliaartisakali(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->bhupaliaartisakali:Ljava/util/List;

    return-void
.end method

.method public setNaivadyaAartiSakali(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->NaivadyaAartiSakali:Ljava/util/List;

    return-void
.end method

.method public setNaivadyaaartisayankal(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Aartisangrah;->naivadyaaartisayankal:Ljava/util/List;

    return-void
.end method
