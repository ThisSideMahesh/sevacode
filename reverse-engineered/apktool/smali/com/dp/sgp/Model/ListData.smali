.class public Lcom/dp/sgp/Model/ListData;
.super Ljava/lang/Object;
.source "ListData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private icon:I

.field private id:I

.field private isHeader:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/dp/sgp/Model/ListData;->icon:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/dp/sgp/Model/ListData;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/dp/sgp/Model/ListData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/dp/sgp/Model/ListData;->isHeader:Z

    return v0
.end method

.method public setHeader(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/dp/sgp/Model/ListData;->isHeader:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/dp/sgp/Model/ListData;->icon:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/dp/sgp/Model/ListData;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/dp/sgp/Model/ListData;->title:Ljava/lang/String;

    return-void
.end method
