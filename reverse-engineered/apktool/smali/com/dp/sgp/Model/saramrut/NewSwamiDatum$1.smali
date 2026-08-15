.class final Lcom/dp/sgp/Model/saramrut/NewSwamiDatum$1;
.super Ljava/lang/Object;
.source "NewSwamiDatum.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;
    .locals 1

    .line 179
    new-instance v0, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;

    invoke-direct {v0, p1}, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;
    .locals 0

    .line 184
    new-array p1, p1, [Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/dp/sgp/Model/saramrut/NewSwamiDatum$1;->newArray(I)[Lcom/dp/sgp/Model/saramrut/NewSwamiDatum;

    move-result-object p1

    return-object p1
.end method
