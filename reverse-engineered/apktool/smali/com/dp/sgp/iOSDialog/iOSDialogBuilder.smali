.class public Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
.super Ljava/lang/Object;
.source "iOSDialogBuilder.java"


# instance fields
.field private bold:Z

.field private cancelable:Z

.field private context:Landroid/content/Context;

.field private koLabel:Ljava/lang/String;

.field private negativeListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

.field private okLabel:Ljava/lang/String;

.field private positiveListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

.field private subtitle:Ljava/lang/String;

.field private tf:Landroid/graphics/Typeface;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/dp/sgp/iOSDialog/iOSDialog;
    .locals 8

    .line 60
    new-instance v7, Lcom/dp/sgp/iOSDialog/iOSDialog;

    iget-object v1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->subtitle:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->bold:Z

    iget-object v5, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->tf:Landroid/graphics/Typeface;

    iget-boolean v6, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->cancelable:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/dp/sgp/iOSDialog/iOSDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Typeface;Z)V

    .line 61
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->koLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->negativeListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    invoke-virtual {v7, v0, v1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setNegative(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->okLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->positiveListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    invoke-virtual {v7, v0, v1}, Lcom/dp/sgp/iOSDialog/iOSDialog;->setPositive(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)V

    return-object v7
.end method

.method public setBoldPositiveLabel(Z)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->bold:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->cancelable:Z

    return-object p0
.end method

.method public setFont(Landroid/graphics/Typeface;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->tf:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setNegativeListener(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
    .locals 0

    .line 48
    iput-object p2, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->negativeListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    .line 49
    iput-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->koLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveListener(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
    .locals 0

    .line 54
    iput-object p2, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->positiveListener:Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;

    .line 55
    iput-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->okLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->title:Ljava/lang/String;

    return-object p0
.end method
