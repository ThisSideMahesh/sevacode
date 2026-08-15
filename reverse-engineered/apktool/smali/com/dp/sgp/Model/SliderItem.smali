.class public Lcom/dp/sgp/Model/SliderItem;
.super Ljava/lang/Object;
.source "SliderItem.java"


# instance fields
.field private description:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private imagedraw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dp/sgp/Model/SliderItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dp/sgp/Model/SliderItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImagedraw()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/dp/sgp/Model/SliderItem;->imagedraw:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/dp/sgp/Model/SliderItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dp/sgp/Model/SliderItem;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImagedraw(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/dp/sgp/Model/SliderItem;->imagedraw:I

    return-void
.end method
