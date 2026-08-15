.class public Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
.super Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;
.source "TutoShowcase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeViewActionsEditor"
.end annotation


# direct methods
.method public constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View$OnClickListener;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$1302(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public withBorder()Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ShapeViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$1102(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Z)Z

    return-object p0
.end method
