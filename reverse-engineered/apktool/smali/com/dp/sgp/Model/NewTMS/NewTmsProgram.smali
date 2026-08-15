.class public Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;
.super Ljava/lang/Object;
.source "NewTmsProgram.java"


# instance fields
.field private TmsProgram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/TmsProgramList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;->TmsProgram:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTmsProgram()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/TmsProgramList;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;->TmsProgram:Ljava/util/List;

    return-object v0
.end method

.method public setTmsProgram(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/NewTMS/TmsProgramList;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;->TmsProgram:Ljava/util/List;

    return-void
.end method
