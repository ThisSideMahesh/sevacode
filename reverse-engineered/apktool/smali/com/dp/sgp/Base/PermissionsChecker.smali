.class public Lcom/dp/sgp/Base/PermissionsChecker;
.super Ljava/lang/Object;
.source "PermissionsChecker.java"


# static fields
.field public static final PERMISSIONS_AUDIO:[Ljava/lang/String;

.field public static final PERMISSIONS_CALENDAR:[Ljava/lang/String;

.field public static final PERMISSIONS_CAMERA:[Ljava/lang/String;

.field public static final PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

.field public static final PERMISSIONS_LOCATION:[Ljava/lang/String;

.field public static final PERMISSIONS_PHONE:[Ljava/lang/String;

.field public static final PERMISSIONS_STORAGE:[Ljava/lang/String;

.field public static final PERMISSIONS_VIDEO:[Ljava/lang/String;

.field public static final REQUEST_CODE_PERMISSIONS_CALENDAR:I = 0x3

.field public static final REQUEST_CODE_PERMISSIONS_CAMERA:I = 0x4

.field public static final REQUEST_CODE_PERMISSIONS_CAMERA_STORAGE:I = 0x6

.field public static final REQUEST_CODE_PERMISSIONS_LOCATION:I = 0x2

.field public static final REQUEST_CODE_PERMISSIONS_PHONE:I = 0x7

.field public static final REQUEST_CODE_PERMISSIONS_STORAGE:I = 0x1

.field public static final REQUEST_CODE_PERMISSIONS_VIDEO:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 30
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    const-string v2, "android.permission.CALL_PHONE"

    .line 34
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_PHONE:[Ljava/lang/String;

    const-string v2, "android.permission.WRITE_CALENDAR"

    const-string v3, "android.permission.READ_CALENDAR"

    .line 37
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_CALENDAR:[Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    .line 41
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_CAMERA:[Ljava/lang/String;

    const-string v3, "android.permission.RECORD_AUDIO"

    .line 44
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_AUDIO:[Ljava/lang/String;

    .line 48
    filled-new-array {v2, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_VIDEO:[Ljava/lang/String;

    .line 54
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringID(I)I
    .locals 1

    const v0, 0x7f11011d

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f110129

    goto :goto_0

    :pswitch_0
    const v0, 0x7f11011f

    goto :goto_0

    :pswitch_1
    const v0, 0x7f11011c

    goto :goto_0

    :pswitch_2
    const v0, 0x7f11011e

    goto :goto_0

    :pswitch_3
    const v0, 0x7f110120

    :goto_0
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static requestCalendarPermission(Lcom/dp/sgp/Base/BaseAppCompactActivity;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 131
    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_CALENDAR:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestCameraAndStoragePermission(Lcom/dp/sgp/Base/BaseAppCompactActivity;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 76
    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestCameraAndStoragePermission(Lcom/dp/sgp/Base/BaseFragment;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestCameraPermission(Lcom/dp/sgp/Base/BaseAppCompactActivity;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_CAMERA:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestLocationPermission(Lcom/dp/sgp/Base/BaseFragment;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestLocationPermission(Lcom/dp/sgp/View/Activity/Home/MainActivity;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 107
    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestPermission(Lcom/dp/sgp/Base/BaseAppCompactActivity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V
    .locals 0

    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestPhonePermission(Lcom/dp/sgp/Base/BaseAppCompactActivity;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 125
    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_PHONE:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestPhonePermission(Lcom/dp/sgp/Base/BaseFragment;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_PHONE:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestStoragePermission(Lcom/dp/sgp/Base/BaseAppCompactActivity;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 101
    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method

.method public static requestVideoPermission(Lcom/dp/sgp/Base/BaseAppCompactActivity;Lcom/dp/sgp/Base/PermissionCallback;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/dp/sgp/Base/PermissionsChecker;->PERMISSIONS_VIDEO:[Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p0, v0, v1, p1}, Lcom/dp/sgp/Base/PermissionRequest;->requestAppPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/dp/sgp/Base/PermissionCallback;)V

    return-void
.end method
