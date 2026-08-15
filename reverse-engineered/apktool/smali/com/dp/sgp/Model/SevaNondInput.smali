.class public Lcom/dp/sgp/Model/SevaNondInput;
.super Ljava/lang/Object;
.source "SevaNondInput.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field private mobileNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile_no"
    .end annotation
.end field

.field private sevaDetails:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seva_details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/SevaDetail;",
            ">;"
        }
    .end annotation
.end field

.field private sevaType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seva_type"
    .end annotation
.end field

.field private seva_id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seva_id"
    .end annotation
.end field

.field private sevekariName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sevekari_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/dp/sgp/Model/SevaNondInput;->sevaDetails:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNondInput;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNondInput;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSevaDetails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/SevaDetail;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNondInput;->sevaDetails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSevaType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNondInput;->sevaType:Ljava/lang/String;

    return-object v0
.end method

.method public getSeva_id()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/dp/sgp/Model/SevaNondInput;->seva_id:I

    return v0
.end method

.method public getSevekariName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNondInput;->sevekariName:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNondInput;->date:Ljava/lang/String;

    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNondInput;->mobileNo:Ljava/lang/String;

    return-void
.end method

.method public setSevaDetails(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dp/sgp/Model/SevaDetail;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNondInput;->sevaDetails:Ljava/util/ArrayList;

    return-void
.end method

.method public setSevaType(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNondInput;->sevaType:Ljava/lang/String;

    return-void
.end method

.method public setSeva_id(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/dp/sgp/Model/SevaNondInput;->seva_id:I

    return-void
.end method

.method public setSevekariName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNondInput;->sevekariName:Ljava/lang/String;

    return-void
.end method
