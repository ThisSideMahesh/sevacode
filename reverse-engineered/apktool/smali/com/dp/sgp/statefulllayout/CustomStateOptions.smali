.class public Lcom/dp/sgp/statefulllayout/CustomStateOptions;
.super Ljava/lang/Object;
.source "CustomStateOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private buttonClickListener:Landroid/view/View$OnClickListener;

.field private buttonText:Ljava/lang/String;

.field private imageRes:I

.field private isLoading:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonClickListener(Landroid/view/View$OnClickListener;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public buttonText(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->buttonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getImageRes()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->imageRes:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message:Ljava/lang/String;

    return-object v0
.end method

.method public image(I)Lcom/dp/sgp/statefulllayout/CustomStateOptions;
    .locals 0

    .line 23
    iput p1, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->imageRes:I

    return-object p0
.end method

.method public isLoading()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->isLoading:Z

    return v0
.end method

.method public loading()Lcom/dp/sgp/statefulllayout/CustomStateOptions;
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->isLoading:Z

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/dp/sgp/statefulllayout/CustomStateOptions;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/dp/sgp/statefulllayout/CustomStateOptions;->message:Ljava/lang/String;

    return-object p0
.end method
