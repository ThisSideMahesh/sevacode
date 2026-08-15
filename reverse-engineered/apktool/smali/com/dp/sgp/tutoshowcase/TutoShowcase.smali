.class public final Lcom/dp/sgp/tutoshowcase/TutoShowcase;
.super Ljava/lang/Object;
.source "TutoShowcase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;,
        Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;,
        Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;,
        Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;,
        Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;,
        Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ADDITIONAL_RADIUS_RATIO:F = 1.5f

.field private static final SHARED_TUTO:Ljava/lang/String; = "SHARED_TUTO"


# instance fields
.field private container:Landroid/widget/FrameLayout;

.field private fitsSystemWindows:Z

.field private listener:Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private tutoView:Lcom/dp/sgp/tutoshowcase/TutoView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->fitsSystemWindows:Z

    const-string v1, "SHARED_TUTO"

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    .line 54
    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoView;

    invoke-direct {v1, p1}, Lcom/dp/sgp/tutoshowcase/TutoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->tutoView:Lcom/dp/sgp/tutoshowcase/TutoView;

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const v1, 0x1020002

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 62
    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->tutoView:Lcom/dp/sgp/tutoshowcase/TutoView;

    invoke-virtual {v1, v3, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->fitsSystemWindows:Z

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->listener:Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Lcom/dp/sgp/tutoshowcase/TutoView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->tutoView:Lcom/dp/sgp/tutoshowcase/TutoView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)Landroid/widget/FrameLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->tutoView:Lcom/dp/sgp/tutoshowcase/TutoView;

    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static from(Landroid/app/Activity;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 76
    new-instance v0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    invoke-direct {v0, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    .line 103
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;

    invoke-direct {v1, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$1;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public isShowOnce(Ljava/lang/String;)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public on(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;
    .locals 2

    .line 191
    new-instance v0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-direct {p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->fitsSystemWindows:Z

    invoke-direct {v0, p0, p1, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;Landroid/view/View;Z)V

    return-object v0
.end method

.method public on(Landroid/view/View;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;
    .locals 2

    .line 195
    new-instance v0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    iget-boolean v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->fitsSystemWindows:Z

    invoke-direct {v0, p0, p1, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;Landroid/view/View;Z)V

    return-object v0
.end method

.method public onClickContentView(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p0
.end method

.method public resetShowOnce(Ljava/lang/String;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->tutoView:Lcom/dp/sgp/tutoshowcase/TutoView;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoView;->setBackgroundOverlayColor(I)V

    return-object p0
.end method

.method public setContentView(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->tutoView:Lcom/dp/sgp/tutoshowcase/TutoView;

    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-object p0
.end method

.method public setFitsSystemWindows(Z)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->fitsSystemWindows:Z

    return-object p0
.end method

.method public setListener(Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->listener:Lcom/dp/sgp/tutoshowcase/TutoShowcase$Listener;

    return-object p0
.end method

.method public show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    .line 146
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 148
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/dp/sgp/tutoshowcase/TutoShowcase$3;

    invoke-direct {v1, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$3;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public showOnce(Ljava/lang/String;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    .line 160
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public withDismissView(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$2;

    invoke-direct {v0, p0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$2;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p0
.end method
