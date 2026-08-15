.class public Lcom/dp/sgp/Model/SubmitAbjaData;
.super Ljava/lang/Object;
.source "SubmitAbjaData.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;"
        }
    .end annotation
.end field

.field private device_token:Ljava/lang/String;

.field private member_name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getDevice_token()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->device_token:Ljava/lang/String;

    return-object v0
.end method

.method public getMember_name()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->member_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/SubmitAbhjaBody;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->data:Ljava/util/List;

    return-void
.end method

.method public setDevice_token(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->device_token:Ljava/lang/String;

    return-void
.end method

.method public setMember_name(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->member_name:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->type:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/dp/sgp/Model/SubmitAbjaData;->user_id:Ljava/lang/String;

    return-void
.end method
