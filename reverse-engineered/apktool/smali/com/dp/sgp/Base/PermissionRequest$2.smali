.class final Lcom/dp/sgp/Base/PermissionRequest$2;
.super Ljava/lang/Object;
.source "PermissionRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I

.field final synthetic val$requestedPermissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/dp/sgp/Base/PermissionRequest$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/dp/sgp/Base/PermissionRequest$2;->val$requestedPermissions:[Ljava/lang/String;

    iput p3, p0, Lcom/dp/sgp/Base/PermissionRequest$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 93
    iget-object p1, p0, Lcom/dp/sgp/Base/PermissionRequest$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/dp/sgp/Base/PermissionRequest$2;->val$requestedPermissions:[Ljava/lang/String;

    iget v0, p0, Lcom/dp/sgp/Base/PermissionRequest$2;->val$requestCode:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
