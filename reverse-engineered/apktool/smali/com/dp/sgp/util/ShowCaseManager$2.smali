.class final Lcom/dp/sgp/util/ShowCaseManager$2;
.super Ljava/lang/Object;
.source "ShowCaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/util/ShowCaseManager;->showHelp(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dp/sgp/util/ShowCaseManager$ShowCaseManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$menuType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/dp/sgp/util/ShowCaseManager$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/dp/sgp/util/ShowCaseManager$2;->val$menuType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/dp/sgp/util/ShowCaseManager$2;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/dp/sgp/util/ShowCaseManager$2;->val$menuType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dp/sgp/Constants/PreferenceHelper;->setPreferenceValue(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
