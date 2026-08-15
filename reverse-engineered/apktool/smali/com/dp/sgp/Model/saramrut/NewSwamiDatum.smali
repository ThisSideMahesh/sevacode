.class public Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;
.super Ljava/lang/Object;
.source "NewSwamiDatum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private added_on:Ljava/lang/String;

.field private complete_prayan:Ljava/lang/String;

.field private completed_on:Ljava/lang/String;

.field private current_adhyay:Ljava/lang/String;

.field private description:Ljava/lang/String;

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

.field private status:Ljava/lang/String;

.field private statusName:Ljava/lang/String;

.field private thumb_image:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum$1;

    invoke-direct {v0}, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum$1;-><init>()V

    sput-object v0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->id:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->title:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->description:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->thumb_image:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->image:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->links:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->information:Ljava/util/List;

    .line 168
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->status:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->statusName:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->added_on:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->complete_prayan:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->current_adhyay:Ljava/lang/String;

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

    .line 128
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->added_on:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete_prayan()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->complete_prayan:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleted_on()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->completed_on:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_adhyay()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->current_adhyay:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->image:Ljava/lang/String;

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

    .line 104
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->information:Ljava/util/List;

    return-object v0
.end method

.method public getLinks()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->links:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_image()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->thumb_image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdded_on(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->added_on:Ljava/lang/String;

    return-void
.end method

.method public setComplete_prayan(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->complete_prayan:Ljava/lang/String;

    return-void
.end method

.method public setCompleted_on(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->completed_on:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_adhyay(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->current_adhyay:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->image:Ljava/lang/String;

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

    .line 108
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->information:Ljava/util/List;

    return-void
.end method

.method public setLinks(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->links:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->status:Ljava/lang/String;

    return-void
.end method

.method public setStatusName(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->statusName:Ljava/lang/String;

    return-void
.end method

.method public setThumb_image(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->thumb_image:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 143
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->thumb_image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->links:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->information:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 150
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->statusName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->added_on:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->complete_prayan:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;->current_adhyay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
