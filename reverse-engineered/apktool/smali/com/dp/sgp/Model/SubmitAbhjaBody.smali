.class public Lcom/dp/sgp/Model/SubmitAbhjaBody;
.super Ljava/lang/Object;
.source "SubmitAbhjaBody.java"


# instance fields
.field private listType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbhjaBody;->listType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbhjaBody;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbhjaBody;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setListType(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbhjaBody;->listType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbhjaBody;->name:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbhjaBody;->text:Ljava/lang/String;

    return-void
.end method
