.class public Lcom/dp/sgp/Model/CommonData;
.super Ljava/lang/Object;
.source "CommonData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dp/sgp/Model/CommonData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private added_on:Ljava/lang/String;

.field private create_datetime:Ljava/lang/String;

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

.field private unread:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/dp/sgp/Model/CommonData$1;

    invoke-direct {v0}, Lcom/dp/sgp/Model/CommonData$1;-><init>()V

    sput-object v0, Lcom/dp/sgp/Model/CommonData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->information:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->information:Ljava/util/List;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->image:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->links:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->information:Ljava/util/List;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->added_on:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->id:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->title:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->description:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->thumb_image:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/CommonData;->create_datetime:Ljava/lang/String;

    .line 140
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->unread:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdded_on()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->added_on:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_datetime()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->create_datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->image:Ljava/lang/String;

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

    .line 57
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->information:Ljava/util/List;

    return-object v0
.end method

.method public getLinks()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->links:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_image()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->thumb_image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread()Ljava/lang/Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/dp/sgp/Model/CommonData;->unread:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAdded_on(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->added_on:Ljava/lang/String;

    return-void
.end method

.method public setCreate_datetime(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->create_datetime:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->image:Ljava/lang/String;

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

    .line 61
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->information:Ljava/util/List;

    return-void
.end method

.method public setLinks(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->links:Ljava/lang/String;

    return-void
.end method

.method public setThumb_image(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->thumb_image:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->title:Ljava/lang/String;

    return-void
.end method

.method public setUnread(Ljava/lang/Integer;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/dp/sgp/Model/CommonData;->unread:Ljava/lang/Integer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 115
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->links:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->information:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 118
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->added_on:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->thumb_image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->create_datetime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/dp/sgp/Model/CommonData;->unread:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
