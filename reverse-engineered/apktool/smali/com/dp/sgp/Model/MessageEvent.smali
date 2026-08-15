.class public Lcom/dp/sgp/Model/MessageEvent;
.super Ljava/lang/Object;
.source "MessageEvent.java"


# instance fields
.field private final isMenuVisible:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dp/sgp/Model/MessageEvent;->message:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/dp/sgp/Model/MessageEvent;->isMenuVisible:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIsMenuVisible()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dp/sgp/Model/MessageEvent;->isMenuVisible:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dp/sgp/Model/MessageEvent;->message:Ljava/lang/String;

    return-object v0
.end method
