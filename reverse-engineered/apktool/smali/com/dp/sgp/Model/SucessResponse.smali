.class public Lcom/dp/sgp/Model/SucessResponse;
.super Ljava/lang/Object;
.source "SucessResponse.java"


# instance fields
.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dp/sgp/Model/SucessResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/SucessResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/Model/SucessResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/Model/SucessResponse;->status:Ljava/lang/String;

    return-void
.end method
