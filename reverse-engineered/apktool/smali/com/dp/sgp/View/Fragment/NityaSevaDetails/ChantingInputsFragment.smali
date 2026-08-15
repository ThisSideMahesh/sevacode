.class public Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;
.super Lcom/dp/sgp/Base/BaseFragment;
.source "ChantingInputsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private edtCount:Landroid/widget/EditText;

.field private edtRound:Landroid/widget/EditText;

.field private isAuto:Z

.field private isSound:Z

.field private isVibration:Z

.field private ivPlay:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private tvAuto:Landroid/widget/TextView;

.field private tvHelp:Landroid/widget/TextView;

.field private tvSound:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvVibration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/dp/sgp/Base/BaseFragment;-><init>()V

    return-void
.end method

.method private findViews()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvTitle:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->edtCount:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->edtRound:Landroid/widget/EditText;

    .line 70
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 73
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->ivPlay:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvAuto:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvVibration:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvSound:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvHelp:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvAuto:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvVibration:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvSound:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvHelp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0600f0

    const v1, 0x7f0600eb

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 110
    :sswitch_0
    iget-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isVibration:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isVibration:Z

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvVibration:Landroid/widget/TextView;

    const v1, 0x7f0801c7

    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 115
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvVibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvVibration:Landroid/widget/TextView;

    const v0, 0x7f0801c8

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 118
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvVibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 124
    :sswitch_1
    iget-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isSound:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isSound:Z

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvSound:Landroid/widget/TextView;

    const v1, 0x7f0801ba

    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 129
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvSound:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvSound:Landroid/widget/TextView;

    const v0, 0x7f0801bb

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 132
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvSound:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 173
    :sswitch_2
    new-instance p1, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;

    invoke-direct {p1}, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/dp/sgp/bottomsheets/ChantingHelpBottomSheet;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :sswitch_3
    iget-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isAuto:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isAuto:Z

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvAuto:Landroid/widget/TextView;

    const v1, 0x7f08012f

    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 101
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvAuto:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvAuto:Landroid/widget/TextView;

    const v0, 0x7f080130

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 104
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->tvAuto:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 138
    :sswitch_4
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 140
    new-instance p1, Lcom/dp/sgp/Model/ChantingData;

    invoke-direct {p1}, Lcom/dp/sgp/Model/ChantingData;-><init>()V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->edtRound:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/ChantingData;->setRound(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    invoke-virtual {p1, v2}, Lcom/dp/sgp/Model/ChantingData;->setRound(I)V

    .line 149
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->edtCount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/ChantingData;->setCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    invoke-virtual {p1, v2}, Lcom/dp/sgp/Model/ChantingData;->setCount(I)V

    .line 154
    :goto_1
    iget-boolean v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isAuto:Z

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/ChantingData;->setAuto(Z)V

    .line 155
    iget-boolean v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isVibration:Z

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/ChantingData;->setVibrate(Z)V

    .line 156
    iget-boolean v0, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->isSound:Z

    invoke-virtual {p1, v0}, Lcom/dp/sgp/Model/ChantingData;->setSound(Z)V

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_PARAMS_RESULT_KEY"

    .line 160
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 161
    new-instance p1, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;

    invoke-direct {p1}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;-><init>()V

    .line 162
    invoke-virtual {p1, v0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/MantraJapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a00d1

    .line 165
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c7 -> :sswitch_4
        0x7f0a01f8 -> :sswitch_3
        0x7f0a0202 -> :sswitch_2
        0x7f0a0214 -> :sswitch_1
        0x7f0a021b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0073

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->findViews()V

    .line 53
    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1100d9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/dp/sgp/View/Fragment/NityaSevaDetails/ChantingInputsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public reloadData()V
    .locals 0

    return-void
.end method
