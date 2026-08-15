.class public Lcom/dp/sgp/Model/ErrorResponse;
.super Ljava/lang/Object;
.source "ErrorResponse.java"


# instance fields
.field private Message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/ErrorResponse;->Message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/dp/sgp/Model/ErrorResponse;->Message:Ljava/lang/String;

    return-void
.end method
