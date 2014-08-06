.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

.field private final mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mAddAccountClickListener:Landroid/view/View$OnClickListener;

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 67
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/common/util/AccountsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
    .param p1, "x1"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(ILandroid/content/Intent;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    .line 215
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 192
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 197
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    if-nez v0, :cond_2

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    :cond_0
    sget-object v9, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    const-string v10, "Delete or copy is processing!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const v9, 0x7f0901c8

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    .line 185
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 89
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 93
    .local v6, "orgNumAccounts":I
    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    .line 94
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 95
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const-string v9, "com.android.localphone"

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 96
    const/4 v5, 0x0

    .line 103
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .local v5, "numAccounts":I
    :goto_1
    if-gez v5, :cond_4

    .line 104
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Cannot have a negative number of accounts"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    .end local v5    # "numAccounts":I
    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_2
    const/4 v5, 0x1

    .restart local v5    # "numAccounts":I
    goto :goto_1

    .line 101
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v5    # "numAccounts":I
    :cond_3
    move v5, v6

    .restart local v5    # "numAccounts":I
    goto :goto_1

    .line 107
    :cond_4
    const/4 v9, 0x2

    if-lt v5, v9, :cond_5

    .line 110
    const v9, 0x7f040017

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 112
    const v9, 0x7f0b0063

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 113
    .local v8, "textView":Landroid/widget/TextView;
    const v9, 0x7f0901a2

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v9, 0x7f0b0065

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 116
    .local v3, "button":Landroid/widget/Button;
    const v9, 0x7f0901a5

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v9, 0x7f0b0064

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 120
    .local v1, "accountListView":Landroid/widget/ListView;
    new-instance v9, Lcom/android/contacts/common/util/AccountsListAdapter;

    sget-object v10, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {v9, p0, v10}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V

    iput-object v9, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    .line 122
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 124
    .end local v1    # "accountListView":Landroid/widget/ListView;
    .end local v3    # "button":Landroid/widget/Button;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_5
    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    .line 127
    const v9, 0x7f040018

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 129
    const v9, 0x7f0b0063

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 130
    .restart local v8    # "textView":Landroid/widget/TextView;
    const v9, 0x7f0b0066

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 131
    .local v4, "leftButton":Landroid/widget/Button;
    const v9, 0x7f0b0067

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 133
    .local v7, "rightButton":Landroid/widget/Button;
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 134
    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const v9, 0x7f0901a1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v9, 0x7f0901a5

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v9, 0x104000a

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v9, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;

    invoke-direct {v9, p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v4    # "leftButton":Landroid/widget/Button;
    .end local v7    # "rightButton":Landroid/widget/Button;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_6
    const v9, 0x7f040018

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 156
    const v9, 0x7f0b0063

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 157
    .restart local v8    # "textView":Landroid/widget/TextView;
    const v9, 0x7f0b0066

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 158
    .restart local v4    # "leftButton":Landroid/widget/Button;
    const v9, 0x7f0b0067

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 160
    .restart local v7    # "rightButton":Landroid/widget/Button;
    const v9, 0x7f0901a0

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v9, 0x7f0901a3

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v9, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;

    invoke-direct {v9, p0, v6, v2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;ILjava/util/List;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v9, 0x7f0901a4

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
