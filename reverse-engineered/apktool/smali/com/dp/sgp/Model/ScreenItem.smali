.class public Lcom/dp/sgp/Model/ScreenItem;
.super Ljava/lang/Object;
.source "ScreenItem.java"


# instance fields
.field Description:Ljava/lang/String;

.field ScreenImg:I

.field Title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dp/sgp/Model/ScreenItem;->Title:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/dp/sgp/Model/ScreenItem;->Description:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/dp/sgp/Model/ScreenItem;->ScreenImg:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dp/sgp/Model/ScreenItem;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenImg()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/dp/sgp/Model/ScreenItem;->ScreenImg:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/dp/sgp/Model/ScreenItem;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/dp/sgp/Model/ScreenItem;->Description:Ljava/lang/String;

    return-void
.end method

.method public setScreenImg(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/dp/sgp/Model/ScreenItem;->ScreenImg:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/dp/sgp/Model/ScreenItem;->Title:Ljava/lang/String;

    return-void
.end method
