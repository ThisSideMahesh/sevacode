.class public Lcom/dp/sgp/Model/MuhurathModel;
.super Ljava/lang/Object;
.source "MuhurathModel.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private Time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dp/sgp/Model/MuhurathModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dp/sgp/Model/MuhurathModel;->Time:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/dp/sgp/Model/MuhurathModel;->Name:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/Model/MuhurathModel;->Time:Ljava/lang/String;

    return-void
.end method
