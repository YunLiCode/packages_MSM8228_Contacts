.class public Lcom/android/contacts/common/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/contacts/common/util/AccountFilterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 3
    .param p0, "filterController"    # Lcom/android/contacts/common/list/ContactListFilterController;
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 187
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 188
    const-string v1, "contactListFilter"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 190
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_1

    .line 199
    .end local v0    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    :cond_1
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 196
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const-string v1, "currentFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v0, "currentFilter"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returned null. Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z
    .locals 10
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z
    .param p3, "forPhone"    # Z

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    .local v2, "context":Landroid/content/Context;
    const v7, 0x7f0b0025

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "headerTextView":Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    .line 73
    .local v4, "mAccountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v6, 0x0

    .line 74
    .local v6, "textWasSet":Z
    if-eqz p1, :cond_f

    .line 75
    iget-object v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 78
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz p3, :cond_7

    .line 79
    iget v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    .line 80
    if-eqz p2, :cond_0

    .line 81
    const v7, 0x7f090044

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const/4 v6, 0x1

    .line 143
    .end local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_0
    :goto_0
    return v6

    .line 84
    .restart local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_1
    iget v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v7, :cond_5

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "accountName":Ljava/lang/CharSequence;
    const-string v7, "com.android.localphone"

    iget-object v8, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 87
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    :goto_1
    const v7, 0x7f09008b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v6, 0x1

    .line 101
    goto :goto_0

    .line 88
    :cond_2
    const-string v7, "com.android.sim"

    iget-object v8, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 89
    const/4 v5, 0x1

    .line 90
    .local v5, "subscription":I
    const-string v7, "SIM1"

    iget-object v8, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    const/4 v5, 0x0

    .line 93
    :cond_3
    invoke-static {v2, v5}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    .end local v5    # "subscription":I
    :cond_4
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_1

    .line 101
    .end local v0    # "accountName":Ljava/lang/CharSequence;
    :cond_5
    iget v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v8, -0x3

    if-ne v7, v8, :cond_6

    .line 102
    const v7, 0x7f09008c

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 103
    const/4 v6, 0x1

    goto :goto_0

    .line 105
    :cond_6
    sget-object v7, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Filter type \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" isn\'t expected."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_7
    iget v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_8

    .line 109
    if-eqz p2, :cond_0

    .line 110
    const v7, 0x7f09007e

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 111
    const/4 v6, 0x1

    goto :goto_0

    .line 113
    :cond_8
    iget v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v7, :cond_c

    .line 114
    const/4 v0, 0x0

    .line 115
    .restart local v0    # "accountName":Ljava/lang/CharSequence;
    const-string v7, "com.android.localphone"

    iget-object v8, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 116
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    :goto_2
    const v7, 0x7f09008b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const/4 v6, 0x1

    .line 130
    goto/16 :goto_0

    .line 117
    :cond_9
    const-string v7, "com.android.sim"

    iget-object v8, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 118
    const/4 v5, 0x1

    .line 119
    .restart local v5    # "subscription":I
    const-string v7, "SIM1"

    iget-object v8, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 120
    const/4 v5, 0x0

    .line 122
    :cond_a
    invoke-static {v2, v5}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 123
    goto :goto_2

    .line 124
    .end local v5    # "subscription":I
    :cond_b
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_2

    .line 130
    .end local v0    # "accountName":Ljava/lang/CharSequence;
    :cond_c
    iget v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v8, -0x3

    if-ne v7, v8, :cond_d

    .line 131
    const v7, 0x7f09008c

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 132
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 133
    :cond_d
    iget v7, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v8, -0x6

    if-ne v7, v8, :cond_e

    .line 134
    const v7, 0x7f09008d

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 135
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 137
    :cond_e
    sget-object v7, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Filter type \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" isn\'t expected."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 141
    .end local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_f
    sget-object v7, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v8, "Filter is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method

.method public static updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method
