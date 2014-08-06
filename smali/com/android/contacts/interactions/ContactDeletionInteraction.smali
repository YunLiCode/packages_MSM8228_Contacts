.class public Lcom/android/contacts/interactions/ContactDeletionInteraction;
.super Landroid/app/Fragment;
.source "ContactDeletionInteraction.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field private static final ENTITY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFinishActivityWhenDone:Z

.field mMessageId:I

.field private mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setFinishActivityWhenDone(Z)V
    .locals 0
    .param p1, "finishActivityWhenDone"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    .line 182
    return-void
.end method

.method private setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V
    .locals 0
    .param p1, "mockLoaderManager"    # Lcom/android/contacts/interactions/TestLoaderManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    .line 151
    return-void
.end method

.method private showDialog(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;-><init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 289
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 290
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 291
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "finishActivityWhenDone"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    move-result-object v0

    return-object v0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "finishActivityWhenDone"    # Z
    .param p3, "testLoaderManager"    # Lcom/android/contacts/interactions/TestLoaderManager;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 118
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v2, "deleteContact"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 120
    .local v0, "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .end local v0    # "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;-><init>()V

    .line 122
    .restart local v0    # "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    .line 123
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 124
    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    .line 125
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "deleteContact"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 130
    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected doDeleteContact(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/contacts/ContactSaveService;->createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 319
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 322
    :cond_0
    return-void
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 139
    .local v0, "loaderManager":Landroid/app/LoaderManager;
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/TestLoaderManager;->setDelegate(Landroid/app/LoaderManager;)V

    .line 142
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    .line 144
    .end local v0    # "loaderManager":Landroid/app/LoaderManager;
    :cond_0
    return-object v0
.end method

.method isStarted()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 310
    if-eqz p1, :cond_0

    .line 311
    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 312
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    .line 313
    const-string v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    .line 315
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 156
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    .line 157
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 209
    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 210
    .local v7, "contactUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    const-string v2, "entities"

    invoke-static {v7, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 162
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    iput-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 167
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 297
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 19
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->dismiss()V

    .line 219
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 222
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 268
    :goto_0
    return-void

    .line 226
    :cond_1
    const-wide/16 v4, 0x0

    .line 227
    .local v4, "contactId":J
    const/4 v8, 0x0

    .line 230
    .local v8, "lookupKey":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v12

    .line 231
    .local v12, "readOnlyRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v16

    .line 233
    .local v16, "writableRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    .line 234
    .local v3, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/16 v17, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 235
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 236
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 237
    .local v9, "rawContactId":J
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "accountType":Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "dataSet":Ljava/lang/String;
    const/16 v17, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 240
    const/16 v17, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-virtual {v3, v2, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v13

    .line 242
    .local v13, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_2
    const/4 v14, 0x1

    .line 243
    .local v14, "writable":Z
    :goto_2
    if-eqz v14, :cond_4

    .line 244
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    .end local v14    # "writable":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 246
    .restart local v14    # "writable":Z
    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v7    # "dataSet":Ljava/lang/String;
    .end local v9    # "rawContactId":J
    .end local v13    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v14    # "writable":Z
    :cond_5
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v11

    .line 251
    .local v11, "readOnlyCount":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v15

    .line 252
    .local v15, "writableCount":I
    if-lez v11, :cond_6

    if-lez v15, :cond_6

    .line 253
    const v17, 0x7f090129

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    .line 262
    :goto_3
    invoke-static {v4, v5, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 263
    .local v6, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->showDialog(ILandroid/net/Uri;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v17

    const v18, 0x7f0b001a

    invoke-virtual/range {v17 .. v18}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 254
    .end local v6    # "contactUri":Landroid/net/Uri;
    :cond_6
    if-lez v11, :cond_7

    if-nez v15, :cond_7

    .line 255
    const v17, 0x7f090128

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_3

    .line 256
    :cond_7
    if-nez v11, :cond_8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_8

    .line 257
    const v17, 0x7f09012a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_3

    .line 259
    :cond_8
    const v17, 0x7f09012b

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    const-string v0, "active"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    const-string v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 191
    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 196
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 202
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 205
    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 177
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
