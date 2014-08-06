.class public Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->loadData(Z)V

    return-void
.end method

.method private exportContactsToCard(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 6
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 304
    const-string v3, "ImportExportDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exportContactsToCard("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-nez p1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {v0}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Landroid/accounts/Account;)I

    move-result v2

    .line 310
    .local v2, "subscription":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 313
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.MULTI_EXPORT_CONTACTS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "to_account"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleImportRequest(I)Z
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private handleImportRequest(ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "resId"    # I
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 203
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v1, v4, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    .local v2, "size":I
    if-le v2, v4, :cond_0

    .line 208
    const-string v4, "resourceId"

    invoke-virtual {p2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f09008e

    sget-object v6, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v4, p0, v5, v6, p2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 224
    :goto_0
    return v3

    .line 220
    :cond_0
    const v5, 0x7f09008f

    if-ne p1, v5, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-ne v2, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    :goto_1
    invoke-static {v5, p1, v3}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    move v3, v4

    .line 224
    goto :goto_0

    .line 223
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleSimExportRequest(I)Z
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const v8, 0x7f0900ed

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 268
    const-string v5, "ImportExportDialogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSimExportRequest("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 299
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnKnown resId for handleSimExportRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 276
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    :cond_0
    const-string v3, "ImportExportDialogFragment"

    const-string v5, "DO NOT have any card account!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 296
    :goto_0
    return v3

    .line 281
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 282
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0, v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->exportContactsToCard(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    move v3, v4

    .line 283
    goto :goto_0

    .line 286
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v2, "args":Landroid/os/Bundle;
    const-string v4, "resourceId"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_ONLY_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v4, p0, v8, v5, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x7f0900eb
        :pswitch_0
    .end packed-switch
.end method

.method private handleSimImportRequest(I)Z
    .locals 11
    .param p1, "resId"    # I

    .prologue
    const v10, 0x7f0900ec

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 228
    const-string v7, "ImportExportDialogFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSimImportRequest("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sparse-switch p1, :sswitch_data_0

    .line 263
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnKnown resId for handleSimImportRequest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    .line 236
    .local v2, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v1

    .line 238
    .local v1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 239
    :cond_0
    const-string v5, "ImportExportDialogFragment"

    const-string v7, "DO NOT have any card account!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 261
    .end local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v2    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    :goto_0
    return v5

    .line 241
    .restart local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v2    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v6, :cond_2

    .line 242
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 243
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 244
    .local v4, "subscription":I
    invoke-static {v4}, Lcom/android/contacts/common/util/AccountSelectionUtil;->setImportSubscription(I)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v5

    goto :goto_0

    .line 248
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v4    # "subscription":I
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v3, "args":Landroid/os/Bundle;
    const-string v6, "resourceId"

    invoke-virtual {v3, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_ONLY_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v6, p0, v10, v7, v3}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 261
    .end local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v2    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v3    # "args":Landroid/os/Bundle;
    :sswitch_1
    const v5, 0x7f09008f

    invoke-direct {p0, v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v5

    goto :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008f -> :sswitch_0
        0x7f0900ec -> :sswitch_1
    .end sparse-switch
.end method

.method private hasExportableContacts()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 165
    const/4 v6, 0x0

    .line 167
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 169
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 170
    const/4 v0, 0x1

    .line 177
    if-eqz v6, :cond_0

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090097

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    if-eqz v6, :cond_2

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isStorageSpaceEnough()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900aa

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/MemoryUtils;->isStorageSpaceEnough(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900e7

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadData(Z)V
    .locals 4
    .param p1, "contactsAreAvailable"    # Z

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 352
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 354
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasAnyEnabledIccCard()Z

    move-result v0

    .line 356
    .local v0, "hasIccCard":Z
    if-eqz v0, :cond_2

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f09008f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 359
    :cond_2
    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f090090

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 362
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 363
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0900eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 365
    :cond_4
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    if-eqz p1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0900c5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "contactsAreAvailable"    # Z
    .param p2, "callingActivity"    # Ljava/lang/Class;

    .prologue
    .line 78
    new-instance v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;-><init>()V

    .line 79
    .local v1, "fragment":Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v2, "CALLING_ACTIVITY"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    const-string v2, "ImportExportDialogFragment"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 324
    const-string v2, "resourceId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "resId":I
    const v2, 0x7f0900ec

    if-ne v0, v2, :cond_0

    .line 326
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, "subscription":I
    invoke-static {v1}, Lcom/android/contacts/common/util/AccountSelectionUtil;->setImportSubscription(I)V

    .line 328
    invoke-direct {p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleSimImportRequest(I)Z

    .line 339
    .end local v1    # "subscription":I
    :goto_0
    return-void

    .line 329
    :cond_0
    const v2, 0x7f0900ed

    if-ne v0, v2, :cond_1

    .line 330
    invoke-direct {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->exportContactsToCard(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    .line 345
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const v4, 0x7f0900e8

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 375
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 376
    sparse-switch v0, :sswitch_data_0

    .line 411
    const-string v2, "ImportExportDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 415
    :goto_0
    if-eqz v0, :cond_1

    .line 416
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    :cond_1
    return-void

    .line 379
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/MemoryUtils;->isDataSpaceEnough(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    .line 382
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleSimImportRequest(I)Z

    move-result v0

    goto :goto_0

    .line 388
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/MemoryUtils;->isDataSpaceEnough(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    .line 391
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v0

    goto :goto_0

    .line 396
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleSimExportRequest(I)Z

    move-result v0

    goto :goto_0

    .line 401
    :sswitch_3
    invoke-direct {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->hasExportableContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const-string v2, "CALLING_ACTIVITY"

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CALLING_ACTIVITY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 406
    goto :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008f -> :sswitch_0
        0x7f090090 -> :sswitch_1
        0x7f0900c5 -> :sswitch_3
        0x7f0900eb -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 96
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 99
    .local v0, "contactsAreAvailable":Z
    new-instance v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04007b

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    iput-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 130
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 131
    invoke-direct {p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->loadData(Z)V

    .line 133
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    const v3, 0x7f0900c7

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_0
    const v3, 0x7f0900c8

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    :cond_0
    return-void
.end method
