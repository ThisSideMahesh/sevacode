.class public Lcom/dp/sgp/calendar/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field

.field private childid:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "childid"
    .end annotation
.end field

.field private createdat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Createdat"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Description"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isdeleted:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isdeleted"
    .end annotation
.end field

.field private mediatype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediatype"
    .end annotation
.end field

.field private readStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "readStatus"
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Subtitle"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field

.field private updatedat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updatedat"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildid()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/dp/sgp/calendar/Notification;->childid:I

    return v0
.end method

.method public getCreatedat()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->createdat:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsdeleted()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->isdeleted:Ljava/lang/String;

    return-object v0
.end method

.method public getMediatype()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->mediatype:Ljava/lang/String;

    return-object v0
.end method

.method public getReadStatus()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/dp/sgp/calendar/Notification;->readStatus:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedat()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->updatedat:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/dp/sgp/calendar/Notification;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setChildid(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/dp/sgp/calendar/Notification;->childid:I

    return-void
.end method

.method public setCreatedat(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->createdat:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsdeleted(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->isdeleted:Ljava/lang/String;

    return-void
.end method

.method public setMediatype(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->mediatype:Ljava/lang/String;

    return-void
.end method

.method public setReadStatus(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/dp/sgp/calendar/Notification;->readStatus:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->Type:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedat(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->updatedat:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/dp/sgp/calendar/Notification;->url:Ljava/lang/String;

    return-void
.end method
