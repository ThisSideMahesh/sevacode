.class public abstract Lcom/dp/sgp/Base/BaseAppCompactActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseAppCompactActivity.java"

# interfaces
.implements Lcom/dp/sgp/Base/NetworkStateReceiverListener;
.implements Lcom/dp/sgp/Base/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;
    }
.end annotation


# instance fields
.field public currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

.field private networkStateReceiver:Lcom/dp/sgp/Base/NetworkStateReceiver;

.field private stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

.field private tvToolbar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected initToolbar(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01ed

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0a01b1

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dp/sgp/statefulllayout/StatefulLayout;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    .line 84
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->INITIAL:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 255
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNetworkAvailable()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    sget-object v1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    sget-object v1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    if-ne v0, v1, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->reloadData()V

    :cond_1
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 279
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 264
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->finish()V

    :goto_0
    return v0
.end method

.method protected onPause()V
    .locals 0

    .line 221
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 222
    invoke-static {p0}, Lcom/dp/sgp/Base/UiHelper;->hideKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 215
    invoke-static {p0, p1, p2, p3}, Lcom/dp/sgp/Base/PermissionRequest;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 44
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 45
    new-instance v0, Lcom/dp/sgp/Base/NetworkStateReceiver;

    invoke-direct {v0, p0}, Lcom/dp/sgp/Base/NetworkStateReceiver;-><init>(Lcom/dp/sgp/Base/NetworkStateReceiverListener;)V

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->networkStateReceiver:Lcom/dp/sgp/Base/NetworkStateReceiver;

    .line 46
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->networkStateReceiver:Lcom/dp/sgp/Base/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public abstract reloadData()V
.end method

.method public setContentView(I)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->initToolbar(Landroid/view/View;)V

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setToolbarHomeIcon(I)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/dp/sgp/Base/BaseAppCompactActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->tvToolbar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showContent()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showContent()V

    .line 127
    :cond_0
    sget-object v0, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->CONTENT:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showEmpty()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty()V

    .line 136
    :cond_0
    sget-object v0, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->EMPTY:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showEmpty(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty(I)V

    .line 145
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->EMPTY:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showEmpty(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showEmpty(Ljava/lang/String;)V

    .line 154
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->EMPTY:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showError(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(ILandroid/view/View$OnClickListener;)V

    .line 172
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showError(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showError(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showError(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->ERROR:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading()V

    .line 103
    :cond_0
    sget-object v0, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->LOADING:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showLoading(I)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading()V

    .line 111
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->LOADING:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showLoading(Ljava/lang/String;)V

    .line 119
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->LOADING:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showOffline(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(ILandroid/view/View$OnClickListener;)V

    .line 199
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showOffline(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method

.method public showOffline(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->stateful:Lcom/dp/sgp/statefulllayout/StatefulLayout;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1, p2}, Lcom/dp/sgp/statefulllayout/StatefulLayout;->showOffline(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_0
    sget-object p1, Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;->OFFLINE:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    iput-object p1, p0, Lcom/dp/sgp/Base/BaseAppCompactActivity;->currentViewState:Lcom/dp/sgp/Base/BaseAppCompactActivity$VIEW_STATE;

    return-void
.end method
