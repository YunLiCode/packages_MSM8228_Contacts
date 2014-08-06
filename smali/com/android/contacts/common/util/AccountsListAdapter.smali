.class public final Lcom/android/contacts/common/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    }
.end annotation


# instance fields
.field private final mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

.field private final mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .param p3, "currentAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 73
    invoke-direct {p0, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getAccounts(Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 74
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v0, p3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    new-instance v0, Lcom/android/contacts/common/list/AccountCapacityLoader;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    .line 82
    return-void
.end method

.method private getAccounts(Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    .locals 7
    .param p1, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 85
    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v5, :cond_1

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v5, v3, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    :cond_0
    :goto_0
    return-object v4

    .line 89
    :cond_1
    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_PHONE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_ONLY_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v5, :cond_4

    .line 94
    .local v3, "isWritableAccounts":Z
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v5, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 95
    .local v4, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v5, :cond_6

    .line 98
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 99
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const-string v5, "com.android.sim"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isWritableAccounts":Z
    .end local v4    # "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 103
    .restart local v1    # "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isWritableAccounts":Z
    .restart local v4    # "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_5
    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 104
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_PHONE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v5, :cond_9

    .line 105
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 106
    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const-string v5, "com.android.localphone"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 110
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_8
    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 111
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_ONLY_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v5, :cond_0

    .line 112
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 113
    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const-string v5, "com.android.sim"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 117
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_b
    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 171
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    .line 124
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 127
    .local v4, "resultView":Landroid/view/View;
    :goto_0
    const v8, 0x1020014

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 128
    .local v6, "text1":Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 129
    .local v7, "text2":Landroid/widget/TextView;
    const v8, 0x1020006

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 130
    .local v3, "icon":Landroid/widget/ImageView;
    const v8, 0x7f0b0026

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, "capacity":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 133
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 135
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    const-string v8, "com.android.localphone"

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v8, 0x7f090046

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 154
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-object v4

    .line 124
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "capacity":Landroid/widget/TextView;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "resultView":Landroid/view/View;
    .end local v6    # "text1":Landroid/widget/TextView;
    .end local v7    # "text2":Landroid/widget/TextView;
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040001

    invoke-virtual {v8, v9, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 139
    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .restart local v1    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v2    # "capacity":Landroid/widget/TextView;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "resultView":Landroid/view/View;
    .restart local v6    # "text1":Landroid/widget/TextView;
    .restart local v7    # "text2":Landroid/widget/TextView;
    :cond_1
    const-string v8, "com.android.sim"

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 140
    const/4 v5, 0x1

    .line 141
    .local v5, "subscription":I
    const-string v8, "SIM1"

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    const/4 v5, 0x0

    .line 144
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v8, 0x7f0900e5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 147
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v2, v9, v10}, Lcom/android/contacts/common/list/AccountCapacityLoader;->loadAccountCapacity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .end local v5    # "subscription":I
    :cond_3
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
