.class Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;
.super Ljava/lang/Object;
.source "CalendarParentFragment.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;


# direct methods
.method constructor <init>(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$100(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)I

    move-result v1

    const-string v2, "YEAR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v1, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-static {v1}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->access$200(Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;)I

    move-result v1

    const-string v2, "MONTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v1, "SimpleTextBottomSheet"

    const-string v2, "TYPE"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string p1, "sanvar"

    .line 136
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "shubha_shubh"

    .line 148
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_3
    new-instance p1, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;

    invoke-direct {p1}, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/bottomsheets/RahuKalBottomSheet;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "muhurta"

    .line 129
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {v0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "dpu"

    .line 142
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->newInstance(Landroid/os/Bundle;)Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;

    move-result-object p1

    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment$2;->this$0:Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;

    invoke-virtual {v0}, Lcom/dp/sgp/View/Fragment/Calendar/CalendarParentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/bottomsheets/SimpleTextBottomSheet;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00ff
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
