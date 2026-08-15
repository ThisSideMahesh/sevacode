.class public Lcom/dp/sgp/View/Activity/Home/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field private static final MODE_DARK:I = 0x0

.field private static final MODE_LIGHT:I = 0x1

.field public static final MULTIPLE_PERMISSIONS:I = 0xa


# instance fields
.field Token:Ljava/lang/String;

.field private bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

.field private datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

.field floatingActionButton:Landroid/widget/ImageView;

.field fragment:Landroid/support/v4/app/Fragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private hot_number:I

.field img_logout:Landroid/widget/ImageView;

.field private mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field private pdialog:Landroid/app/ProgressDialog;

.field permissions:[Ljava/lang/String;

.field profileCircleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

.field textViewUser:Landroid/widget/TextView;

.field transaction:Landroid/support/v4/app/FragmentTransaction;

.field private ui_hot:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 69
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->permissions:[Ljava/lang/String;

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->Token:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity$1;-><init>(Lcom/dp/sgp/View/Activity/Home/MainActivity;)V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->hot_number:I

    .line 131
    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->ui_hot:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/dp/sgp/View/Activity/Home/MainActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dp/sgp/View/Activity/Home/MainActivity;)Lcom/dp/sgp/DataHolder/DataHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    return-object p0
.end method

.method private applyFontToMenuItem(Landroid/view/MenuItem;)V
    .locals 5

    .line 363
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "poppins_regular.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 364
    new-instance v1, Landroid/text/SpannableString;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v2, Lcom/dp/sgp/CustomTypefaceSpan/CustomTypefaceSpan;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Lcom/dp/sgp/CustomTypefaceSpan/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 367
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method private checkPermissions()Z
    .locals 7

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->permissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 455
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 457
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 460
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 371
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    .line 372
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 373
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 374
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private updateNavigationBarState(I)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 218
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public Popup()V
    .locals 3

    .line 502
    new-instance v0, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0936\u094d\u0930\u0940 \u0917\u0941\u0930\u0941\u092a\u0940\u0920 \u0924\u094d\u0930\u094d\u092f\u0902\u092c\u0915\u0947\u0936\u094d\u0935\u0930"

    .line 503
    invoke-virtual {v0, v1}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;

    move-result-object v0

    const-string v1, "\u0924\u0941\u092e\u094d\u0939\u093e\u0932\u093e \u0916\u093e\u0924\u094d\u0930\u0940 \u0906\u0939\u0947 \u0915\u093e \u0924\u0941\u092e\u094d\u0939\u0940 \u090f\u092a\u094d\u0932\u0940\u0915\u0947\u0936\u0928\u091a\u094d\u092f\u093e \u092c\u093e\u0939\u0947\u0930 \u092a\u0921\u0924 \u0906\u0939\u093e\u0924 ?"

    .line 504
    invoke-virtual {v0, v1}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->setSubtitle(Ljava/lang/String;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 505
    invoke-virtual {v0, v1}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->setBoldPositiveLabel(Z)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 506
    invoke-virtual {v0, v1}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->setCancelable(Z)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity$3;-><init>(Lcom/dp/sgp/View/Activity/Home/MainActivity;)V

    const-string v2, "\u0939\u094b\u092f"

    .line 507
    invoke-virtual {v0, v2, v1}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->setPositiveListener(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/dp/sgp/View/Activity/Home/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity$2;-><init>(Lcom/dp/sgp/View/Activity/Home/MainActivity;)V

    const-string v2, "\u0928\u093e\u0939\u0940"

    .line 544
    invoke-virtual {v0, v2, v1}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->setNegativeListener(Ljava/lang/String;Lcom/dp/sgp/iOSDialog/iOSDialogClickListener;)Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lcom/dp/sgp/iOSDialog/iOSDialogBuilder;->build()Lcom/dp/sgp/iOSDialog/iOSDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dp/sgp/iOSDialog/iOSDialog;->show()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 418
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->invalidateOptionsMenu()V

    const v0, 0x7f0a006b

    .line 420
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    .line 432
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->finish()V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 445
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 135
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0d0029

    .line 138
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->setContentView(I)V

    .line 141
    new-instance p1, Lcom/dp/sgp/DataHolder/DataHandler;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dp/sgp/DataHolder/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->datHandler:Lcom/dp/sgp/DataHolder/DataHandler;

    const p1, 0x7f0a01ed

    .line 142
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 143
    invoke-virtual {p0, v3}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const p1, 0x7f0a006b

    .line 145
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    .line 146
    new-instance v6, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f110107

    const v5, 0x7f110106

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 148
    invoke-virtual {p1, v6}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 149
    invoke-virtual {v6}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    const p1, 0x7f0a0128

    .line 151
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/NavigationView;

    .line 152
    invoke-virtual {p1, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    const v0, 0x7f0d00b0

    .line 154
    invoke-virtual {p1, v0}, Landroid/support/design/widget/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0096

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0a01cc

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0a0129

    .line 162
    invoke-virtual {p0, v0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    .line 163
    iget-object v1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 165
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 166
    new-instance v1, Lcom/dp/sgp/util/BottomNavigationBehavior;

    invoke-direct {v1}, Lcom/dp/sgp/util/BottomNavigationBehavior;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 168
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setSelectedItemId(I)V

    .line 171
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->bottomNavigationView:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 174
    :goto_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 175
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 177
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 178
    invoke-interface {v4}, Landroid/view/SubMenu;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 179
    :goto_1
    invoke-interface {v4}, Landroid/view/SubMenu;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 180
    invoke-interface {v4, v5}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 181
    invoke-direct {p0, v6}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->applyFontToMenuItem(Landroid/view/MenuItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    :cond_0
    invoke-direct {p0, v3}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->applyFontToMenuItem(Landroid/view/MenuItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v0, 0x0

    .line 190
    :goto_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 191
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 193
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 194
    invoke-interface {v3}, Landroid/view/SubMenu;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    .line 195
    :goto_3
    invoke-interface {v3}, Landroid/view/SubMenu;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 196
    invoke-interface {v3, v4}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 197
    invoke-direct {p0, v5}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->applyFontToMenuItem(Landroid/view/MenuItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 201
    :cond_2
    invoke-direct {p0, v2}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->applyFontToMenuItem(Landroid/view/MenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 205
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 206
    new-instance p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 208
    iget-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0a008c

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "HomeFragmenFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 380
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "pos"

    const-string v1, "subtitle"

    const-string v2, "message"

    const v3, 0x7f0a0124

    if-ne p1, v3, :cond_0

    .line 236
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "\u0926\u093f\u0902\u0921\u094b\u0930\u0940 \u092a\u094d\u0930\u0923\u093f\u0924 \u0938\u0947\u0935\u093e \u092e\u093e\u0930\u094d\u0917"

    .line 237
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2"

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 241
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_0
    const v3, 0x7f0a0126

    if-ne p1, v3, :cond_1

    .line 246
    new-instance p1, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/HomeFragmenFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 247
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_1
    const v3, 0x7f0a0119

    if-ne p1, v3, :cond_2

    .line 250
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "\u0936\u094d\u0930\u0940 \u0917\u0941\u0930\u0941\u092a\u0940\u0920"

    .line 251
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 255
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 256
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_2
    const v3, 0x7f0a0118

    if-ne p1, v3, :cond_3

    .line 260
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "\u0917\u0941\u0930\u0941\u092a\u094d\u0930\u0923\u093e\u0932\u0940"

    .line 261
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3"

    .line 263
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 265
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 266
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0a0113

    if-ne p1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0a0116

    if-ne p1, v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f0a0115

    if-ne p1, v0, :cond_6

    .line 277
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/dp/sgp/View/Activity/Home/CalTestActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const v0, 0x7f0a0127

    if-ne p1, v0, :cond_7

    .line 280
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "\u0938\u0923\u0935\u093e\u0930"

    .line 281
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/SanvarFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 283
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 284
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f0a011b

    const-string v1, "\u0905\u092c\u094d\u091c\u091a\u0902\u0921\u0940"

    if-ne p1, v0, :cond_8

    .line 287
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 288
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 290
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 291
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f0a0114

    if-ne p1, v0, :cond_9

    .line 294
    new-instance p1, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/YoutubeTab/YoutubeTabssFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 295
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_9
    const v0, 0x7f0a0121

    if-ne p1, v0, :cond_a

    .line 299
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 300
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AbhjaChandiFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 302
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 303
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_a
    const v0, 0x7f0a011f

    if-ne p1, v0, :cond_b

    .line 305
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "\u0906\u0930\u0924\u0940 \u0938\u0902\u0917\u094d\u0930\u0939"

    .line 306
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/AartiSangrahaFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 308
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 309
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_b
    const v0, 0x7f0a011c

    if-ne p1, v0, :cond_c

    .line 312
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "\u0928\u093f\u0924\u094d\u092f\u0938\u0947\u0935\u093e"

    .line 313
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/NityaMenuFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 315
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 316
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_c
    const v0, 0x7f0a011a

    if-ne p1, v0, :cond_d

    .line 319
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "\u0936\u094d\u0930\u0940 \u0938\u094d\u0935\u093e\u092e\u0940 \u091a\u0930\u093f\u0924\u094d\u0930"

    .line 320
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;

    invoke-direct {v0}, Lcom/dp/sgp/View/Fragment/SwamiCharitra/NityaSevaMenuFragment;-><init>()V

    iput-object v0, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 322
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 323
    iget-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_d
    const v0, 0x7f0a0120

    if-ne p1, v0, :cond_e

    .line 331
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/dp/sgp/View/Activity/Mantra/MantraJapActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_e
    const v0, 0x7f0a0123

    if-ne p1, v0, :cond_f

    .line 335
    new-instance p1, Lcom/dp/sgp/View/Fragment/ContactUs/ContactUsTabFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/ContactUs/ContactUsTabFragment;-><init>()V

    iput-object p1, p0, Lcom/dp/sgp/View/Activity/Home/MainActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 336
    invoke-direct {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_f
    const v0, 0x7f0a0117

    if-ne p1, v0, :cond_10

    .line 354
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->Popup()V

    :cond_10
    :goto_0
    const p1, 0x7f0a006b

    .line 357
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    .line 358
    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 389
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a0100

    if-ne v0, v2, :cond_0

    .line 398
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/dp/sgp/View/Activity/Notification/NotificationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 400
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->finish()V

    return v1

    :cond_0
    const v2, 0x7f0a0101

    if-ne v0, v2, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/dp/sgp/View/Activity/Home/MainActivity;->Popup()V

    return v1

    .line 411
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
