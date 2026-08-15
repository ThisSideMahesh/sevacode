.class public Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;
.super Ljava/lang/Object;
.source "TutoShowcase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewActionsEditor"
.end annotation


# instance fields
.field protected final viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    return-void
.end method


# virtual methods
.method public on(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->on(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    move-result-object p1

    return-object p1
.end method

.method public on(Landroid/view/View;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->on(Landroid/view/View;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    move-result-object p1

    return-object p1
.end method

.method public onClickContentView(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->onClickContentView(ILandroid/view/View$OnClickListener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object p1

    return-object p1
.end method

.method public show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-virtual {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->show()Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object v0

    return-object v0
.end method

.method public showOnce(Ljava/lang/String;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->showOnce(Ljava/lang/String;)Lcom/dp/sgp/tutoshowcase/TutoShowcase;

    move-result-object p1

    return-object p1
.end method
