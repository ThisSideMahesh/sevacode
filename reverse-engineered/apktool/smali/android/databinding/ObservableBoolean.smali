.class public Landroid/databinding/ObservableBoolean;
.super Landroid/databinding/BaseObservable;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/databinding/ObservableBoolean;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Landroid/databinding/ObservableBoolean$1;

    invoke-direct {v0}, Landroid/databinding/ObservableBoolean$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 47
    iput-boolean p1, p0, Landroid/databinding/ObservableBoolean;->mValue:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Landroid/databinding/ObservableBoolean;->mValue:Z

    return v0
.end method

.method public set(Z)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Landroid/databinding/ObservableBoolean;->mValue:Z

    if-eq p1, v0, :cond_0

    .line 68
    iput-boolean p1, p0, Landroid/databinding/ObservableBoolean;->mValue:Z

    .line 69
    invoke-virtual {p0}, Landroid/databinding/ObservableBoolean;->notifyChange()V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget-boolean p2, p0, Landroid/databinding/ObservableBoolean;->mValue:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
