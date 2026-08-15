.class public Lcom/dp/sgp/Base/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# static fields
.field private static mErrorString:Landroid/util/SparseIntArray;

.field private static permissionCallback:Lcom/dp/sgp/Base/PermissionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .line 31
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/dp/sgp/Base/PermissionRequest;->mErrorString:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 5

    .line 38
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p3, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    array-length p3, p3

    if-lez p3, :cond_1

    if-nez v3, :cond_1

    .line 43
    sget-object p0, Lcom/dp/sgp/Base/PermissionRequest;->permissionCallback:Lcom/dp/sgp/Base/PermissionCallback;

    invoke-interface {p0, p1}, Lcom/dp/sgp/Base/PermissionCallback;->onPermissionsGranted(I)V

    goto :goto_4

    .line 47
    :cond_1
    array-length p3, p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    aget-object v3, p2, v0

    .line 48
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    if-nez v2, :cond_3

    .line 49
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 54
    invoke-static {p1}, Lcom/dp/sgp/Base/PermissionsChecker;->getStringID(I)I

    move-result p1

    const p2, 0x7f110068

    new-instance p3, Lcom/dp/sgp/Base/PermissionRequest$1;

    invoke-direct {p3, p0}, Lcom/dp/sgp/Base/PermissionRequest$1;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, p2, p3}, Lcom/dp/sgp/Base/PermissionRequest;->showMessageOKCancel(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V
    .locals 6

    .line 76
    invoke-static {}, Lcom/dp/sgp/Base/PermissionRequest;->init()V

    .line 77
    sput-object p3, Lcom/dp/sgp/Base/PermissionRequest;->permissionCallback:Lcom/dp/sgp/Base/PermissionCallback;

    .line 79
    sget-object p3, Lcom/dp/sgp/Base/PermissionRequest;->mErrorString:Landroid/util/SparseIntArray;

    invoke-static {p2}, Lcom/dp/sgp/Base/PermissionsChecker;->getStringID(I)I

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    array-length p3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v4, p1, v1

    .line 83
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    if-nez v3, :cond_1

    .line 84
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_3

    .line 88
    invoke-static {p2}, Lcom/dp/sgp/Base/PermissionsChecker;->getStringID(I)I

    move-result p3

    const v0, 0x7f110067

    new-instance v1, Lcom/dp/sgp/Base/PermissionRequest$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/dp/sgp/Base/PermissionRequest$2;-><init>(Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-static {p0, p3, v0, v1}, Lcom/dp/sgp/Base/PermissionRequest;->showMessageOKCancel(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 98
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_3

    .line 102
    :cond_4
    sget-object p0, Lcom/dp/sgp/Base/PermissionRequest;->permissionCallback:Lcom/dp/sgp/Base/PermissionCallback;

    invoke-interface {p0, p2}, Lcom/dp/sgp/Base/PermissionCallback;->onPermissionsGranted(I)V

    :goto_3
    return-void
.end method

.method static showMessageOKCancel(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 108
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "CANCEL"

    const/4 p2, 0x0

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
