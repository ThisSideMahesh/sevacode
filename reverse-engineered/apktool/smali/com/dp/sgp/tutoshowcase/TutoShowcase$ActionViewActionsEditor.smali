.class public Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;
.super Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;
.source "TutoShowcase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/tutoshowcase/TutoShowcase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionViewActionsEditor"
.end annotation


# direct methods
.method public constructor <init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsEditor;-><init>(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)V

    return-void
.end method


# virtual methods
.method public animated(Z)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$302(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Z)Z

    return-object p0
.end method

.method public delayed(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$502(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p0
.end method

.method public duration(I)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ActionViewActionsEditor;->viewActions:Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;

    invoke-static {v0}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;->access$200(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActions;)Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;->access$402(Lcom/dp/sgp/tutoshowcase/TutoShowcase$ViewActionsSettings;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p0
.end method
