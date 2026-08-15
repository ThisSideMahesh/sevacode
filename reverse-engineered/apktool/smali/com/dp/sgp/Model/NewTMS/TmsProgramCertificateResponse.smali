.class public Lcom/dp/sgp/Model/NewTMS/TmsProgramCertificateResponse;
.super Ljava/lang/Object;
.source "TmsProgramCertificateResponse.java"


# instance fields
.field private TmsProgram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/TmsProgramCertificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/dp/sgp/Model/NewTMS/TmsProgramCertificateResponse;->TmsProgram:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTmsProgram()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/TmsProgramCertificate;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/dp/sgp/Model/NewTMS/TmsProgramCertificateResponse;->TmsProgram:Ljava/util/List;

    return-object v0
.end method

.method public setTmsProgram(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/TmsProgramCertificate;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/dp/sgp/Model/NewTMS/TmsProgramCertificateResponse;->TmsProgram:Ljava/util/List;

    return-void
.end method
