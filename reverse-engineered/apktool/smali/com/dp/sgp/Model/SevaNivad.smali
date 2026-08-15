.class public Lcom/dp/sgp/Model/SevaNivad;
.super Ljava/lang/Object;
.source "SevaNivad.java"


# instance fields
.field private Qty:Ljava/lang/String;

.field private __text:Ljava/lang/String;

.field private _image:Ljava/lang/String;

.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQty()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNivad;->Qty:Ljava/lang/String;

    return-object v0
.end method

.method public get__text()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNivad;->__text:Ljava/lang/String;

    return-object v0
.end method

.method public get_image()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNivad;->_image:Ljava/lang/String;

    return-object v0
.end method

.method public get_name()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/Model/SevaNivad;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setQty(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNivad;->Qty:Ljava/lang/String;

    return-void
.end method

.method public set__text(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNivad;->__text:Ljava/lang/String;

    return-void
.end method

.method public set_image(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNivad;->_image:Ljava/lang/String;

    return-void
.end method

.method public set_name(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/dp/sgp/Model/SevaNivad;->_name:Ljava/lang/String;

    return-void
.end method
