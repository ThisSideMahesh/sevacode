.class Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;
.super Ljava/lang/Object;
.source "CompactCalendarTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->getCalendarShowLis()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 349
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->isAnimating()Z

    move-result p1

    if-nez p1, :cond_1

    .line 350
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$800(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->showCalendar()V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$300(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Lcom/dp/sgp/compactcalendarview/CompactCalendarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dp/sgp/compactcalendarview/CompactCalendarView;->hideCalendar()V

    .line 355
    :goto_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab$7;->this$0:Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;

    invoke-static {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$800(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;->access$802(Lcom/dp/sgp/View/Fragment/NityaSevaDetails/CompactCalendarTab;Z)Z

    :cond_1
    return-void
.end method
