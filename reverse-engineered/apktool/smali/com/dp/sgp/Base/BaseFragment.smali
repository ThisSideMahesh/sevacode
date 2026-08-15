.class public abstract Lcom/dp/sgp/Base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/dp/sgp/Base/NetworkStateReceiverListener;
.implements Lcom/dp/sgp/Base/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;
    }
.end annotation


# instance fields
.field public currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

.field private networkStateReceiver:Lcom/dp/sgp/Base/NetworkStateReceiver;

.field private stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private viewInflated()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getrootView in child fragment to inflate rootview"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getrootView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0a01b1

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dp/sgp/statefulllayout/StatefulLayout;

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onNetworkAvailable()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    sget-object v1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    sget-object v1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    if-ne v0, v1, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->reloadData()V

    :cond_1
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 236
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 186
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dp/sgp/Base/UiHelper;->hideKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 179
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/dp/sgp/Base/PermissionRequest;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 35
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 36
    new-instance v0, Lcom/dp/sgp/Base/NetworkStateReceiver;

    invoke-direct {v0, p0}, Lcom/dp/sgp/Base/NetworkStateReceiver;-><init>(Lcom/dp/sgp/Base/NetworkStateReceiverListener;)V

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->networkStateReceiver:Lcom/dp/sgp/Base/NetworkStateReceiver;

    .line 37
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/Base/BaseFragment;->networkStateReceiver:Lcom/dp/sgp/Base/NetworkStateReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dp/sgp/Base/BaseFragment;->networkStateReceiver:Lcom/dp/sgp/Base/NetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public abstract reloadData()V
.end method

.method public showContent()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showContent()V

    .line 90
    :cond_0
    sget-object v0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->CONTENT:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showEmpty()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty()V

    .line 99
    :cond_0
    sget-object v0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->EMPTY:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showEmpty(I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty(I)V

    .line 108
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->EMPTY:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showEmpty(Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty(Ljava/lang/String;)V

    .line 117
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->EMPTY:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showError(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(ILandroid/view/View$OnClickListener;)V

    .line 135
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showError(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showError(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading()V

    .line 66
    :cond_0
    sget-object v0, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->LOADING:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showLoading(I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading()V

    .line 74
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->LOADING:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading(Ljava/lang/String;)V

    .line 82
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->LOADING:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showOffline(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(ILandroid/view/View$OnClickListener;)V

    .line 162
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showOffline(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method

.method public showOffline(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;->viewInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseFragment;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseFragment;->currentViewState:Lcom/dp/sgp/Base/BaseFragment$VIEW_STATE;

    return-void
.end method
