.class public Lcom/dp/sgp/Model/HomeResponse/Vibhag;
.super Ljava/lang/Object;
.source "Vibhag.java"


# instance fields
.field private added_on:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private information:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private links:Ljava/lang/String;

.field private thumb_image:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->information:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdded_on()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->added_on:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->information:Ljava/util/List;

    return-object v0
.end method

.method public getLinks()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->links:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_image()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->thumb_image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdded_on(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->added_on:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->image:Ljava/lang/String;

    return-void
.end method

.method public setInformation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->information:Ljava/util/List;

    return-void
.end method

.method public setLinks(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->links:Ljava/lang/String;

    return-void
.end method

.method public setThumb_image(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->thumb_image:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dp/sgp/Model/HomeResponse/Vibhag;->title:Ljava/lang/String;

    return-void
.end method
