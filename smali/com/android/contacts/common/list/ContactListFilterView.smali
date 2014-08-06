.class public Lcom/android/contacts/common/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountType:Landroid/widget/TextView;

.field private mAccountUserName:Landroid/widget/TextView;

.field private mCapacity:Landroid/widget/TextView;

.field private mCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSingleAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactListFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/android/contacts/common/list/AccountCapacityLoader;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    .line 58
    return-void
.end method

.method private bindView(II)V
    .locals 2
    .param p1, "iconResource"    # I
    .param p2, "textResource"    # I

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 6
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 86
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 87
    const v2, 0x7f0b0027

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f0b006e

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0b006f

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0b0026

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mCapacity:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0b0070

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    .line 92
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 155
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mCapacity:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 120
    :pswitch_1
    const v2, 0x7f090081

    invoke-direct {p0, v4, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 104
    :pswitch_2
    const v2, 0x7f09007e

    invoke-direct {p0, v4, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 108
    :pswitch_3
    const v2, 0x7f02004b

    const v3, 0x7f09007f

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 112
    :pswitch_4
    const v2, 0x7f020049

    const v3, 0x7f090080

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 116
    :pswitch_5
    const v2, 0x7f090044

    invoke-direct {p0, v4, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 124
    :pswitch_6
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mCapacity:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 134
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const-string v2, "com.android.localphone"

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 149
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mCapacity:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/contacts/common/list/AccountCapacityLoader;->loadAccountCapacity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v3, 0x7f02007e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 137
    .restart local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_3
    const-string v2, "com.android.sim"

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    const/4 v1, 0x1

    .line 139
    .local v1, "subscription":I
    const-string v2, "SIM1"

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    const/4 v1, 0x0

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const v3, 0x7f0900e5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 145
    .end local v1    # "subscription":I
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 62
    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mSingleAccount:Z

    .line 70
    return-void
.end method
