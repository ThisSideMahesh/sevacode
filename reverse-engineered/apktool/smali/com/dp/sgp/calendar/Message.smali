.class public Lcom/dp/sgp/calendar/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private notification:Lcom/dp/sgp/calendar/Notification;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Notification"
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
.method public getNotification()Lcom/dp/sgp/calendar/Notification;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dp/sgp/calendar/Message;->notification:Lcom/dp/sgp/calendar/Notification;

    return-object v0
.end method

.method public setNotification(Lcom/dp/sgp/calendar/Notification;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/dp/sgp/calendar/Message;->notification:Lcom/dp/sgp/calendar/Notification;

    return-void
.end method
