.class public Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;
.super Ljava/lang/Object;
.source "Stotravibhag.java"


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

    .line 80
    iput-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->information:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdded_on()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->added_on:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->image:Ljava/lang/String;

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

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->information:Ljava/util/List;

    return-object v0
.end method

.method public getLinks()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->links:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAdded_on(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->added_on:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->image:Ljava/lang/String;

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

    .line 65
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->information:Ljava/util/List;

    return-void
.end method

.method public setLinks(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->links:Ljava/lang/String;

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->subtype:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/dp/sgp/Model/MainNityaseva/Stotravibhag;->type:Ljava/lang/String;

    return-void
.end method
