.class public Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;
.super Ljava/lang/Object;
.source "Bhupaliaartisakal.java"


# instance fields
.field private added_on:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private information:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private links:Ljava/lang/String;

.field private subtype:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->information:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdded_on()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->added_on:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->information:Ljava/util/List;

    return-object v0
.end method

.method public getLinks()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->links:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAdded_on(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->added_on:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->image:Ljava/lang/String;

    return-void
.end method

.method public setInformation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->information:Ljava/util/List;

    return-void
.end method

.method public setLinks(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->links:Ljava/lang/String;

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->subtype:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Bhupaliaartisakal;->type:Ljava/lang/String;

    return-void
.end method
