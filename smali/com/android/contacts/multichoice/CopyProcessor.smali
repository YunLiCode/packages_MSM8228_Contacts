.class public Lcom/android/contacts/multichoice/CopyProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "CopyProcessor.java"


# static fields
.field static final DATA_ALL_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mIsAirPlaneModeOn:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mCancelled:Z

.field private volatile mDone:Z

.field private volatile mIsRunning:Z

.field private mJobId:I

.field private final mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/multichoice/MultiChoiceService;

.field private mSimOperation:Lcom/android/contacts/common/util/SimContactsOperation;

.field private final mTargetAccount:Landroid/accounts/Account;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/android/contacts/multichoice/CopyProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    .line 64
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/multichoice/CopyProcessor;->DATA_ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceService;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Ljava/util/List;ILandroid/accounts/Account;)V
    .locals 3
    .param p1, "service"    # Lcom/android/contacts/multichoice/MultiChoiceService;
    .param p2, "listener"    # Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;
    .param p4, "jobId"    # I
    .param p5, "target"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/multichoice/MultiChoiceService;",
            "Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;I",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mDone:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mIsRunning:Z

    .line 491
    new-instance v1, Lcom/android/contacts/multichoice/CopyProcessor$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/multichoice/CopyProcessor$1;-><init>(Lcom/android/contacts/multichoice/CopyProcessor;)V

    iput-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    .line 95
    invoke-virtual {p1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 96
    iput-object p2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    .line 98
    iput-object p3, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mRequestList:Ljava/util/List;

    .line 99
    iput p4, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    .line 100
    iput-object p5, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mTargetAccount:Landroid/accounts/Account;

    .line 101
    new-instance v1, Lcom/android/contacts/common/util/SimContactsOperation;

    invoke-direct {v1, p1}, Lcom/android/contacts/common/util/SimContactsOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mSimOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    .line 103
    invoke-direct {p0}, Lcom/android/contacts/multichoice/CopyProcessor;->getAirPlaneMode()V

    .line 105
    invoke-virtual {p1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 107
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    sget-object v2, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/multichoice/CopyProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/multichoice/CopyProcessor;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/contacts/multichoice/CopyProcessor;->getAirPlaneMode()V

    return-void
.end method

.method private applyRemainsToBatch(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "successfulItems"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p2, v0

    .line 437
    invoke-direct {p0, p1}, Lcom/android/contacts/multichoice/CopyProcessor;->applyToBatch(Ljava/util/ArrayList;)V

    .line 439
    :cond_0
    return-void
.end method

.method private applyToBatch(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Before applyBatch."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 448
    sget-object v1, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v2, "After applyBatch."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v1, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 454
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw v1

    .line 451
    :catch_1
    move-exception v0

    .line 452
    .local v0, "e":Landroid/content/OperationApplicationException;
    :try_start_2
    sget-object v1, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private copyAllDataToDb(Ljava/util/ArrayList;JLjava/lang/String;)Z
    .locals 13
    .param p2, "oldRawContactId"    # J
    .param p4, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    .line 352
    .local v9, "dataCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->DATA_ALL_COLUMNS:[Ljava/lang/String;

    const-string v4, "raw_contact_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 356
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    .line 357
    :cond_0
    const/4 v1, 0x0

    .line 401
    if-eqz v9, :cond_1

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_1
    :goto_0
    return v1

    .line 360
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 361
    .local v7, "backReferenceIndex":I
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 363
    .local v8, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mTargetAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_3

    .line 364
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mTargetAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 366
    const-string v1, "account_type"

    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mTargetAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 370
    :cond_3
    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 372
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 376
    const-string v1, "mimetype"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 378
    .local v11, "mimeType":Ljava/lang/String;
    sget-object v1, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[copyContactToAccount] mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 383
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.android.sim"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 388
    :cond_5
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 389
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_2
    sget-object v1, Lcom/android/contacts/multichoice/CopyProcessor;->DATA_ALL_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_6

    .line 390
    sget-object v1, Lcom/android/contacts/multichoice/CopyProcessor;->DATA_ALL_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v9, v1, v10, v8}, Lcom/android/contacts/multichoice/CopyProcessor;->cursorColumnToBuilder(Landroid/database/Cursor;[Ljava/lang/String;ILandroid/content/ContentProviderOperation$Builder;)V

    .line 389
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 392
    :cond_6
    const-string v1, "raw_contact_id"

    invoke-virtual {v8, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 394
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 401
    .end local v7    # "backReferenceIndex":I
    .end local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v10    # "i":I
    .end local v11    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_7
    throw v1

    .line 397
    .restart local v7    # "backReferenceIndex":I
    .restart local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_8
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_9

    .line 398
    invoke-direct {p0, p1}, Lcom/android/contacts/multichoice/CopyProcessor;->applyToBatch(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :cond_9
    if-eqz v9, :cond_a

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private copyContactsToAccount()V
    .locals 24

    .prologue
    .line 281
    sget-object v4, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[copyContactsToAccount] account: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mTargetAccount:Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    if-eqz v4, :cond_0

    .line 346
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 286
    .local v8, "totalItems":I
    const/16 v23, 0x0

    .line 287
    .local v23, "successfulItems":I
    const/4 v7, 0x0

    .line 289
    .local v7, "currentCount":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v19, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    .line 292
    .local v21, "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    if-eqz v4, :cond_3

    .line 293
    sget-object v4, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v5, "[copyContactsToAccount] mCancelled = true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/multichoice/CopyProcessor;->applyRemainsToBatch(Ljava/util/ArrayList;I)V

    .line 295
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->postCancelResult(II)V

    .line 338
    .end local v21    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/multichoice/CopyProcessor;->applyRemainsToBatch(Ljava/util/ArrayList;I)V

    .line 340
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    if-eqz v4, :cond_a

    .line 341
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->postCancelResult(II)V

    goto :goto_0

    .line 299
    .restart local v21    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V

    .line 303
    const/16 v20, 0x0

    .line 305
    .local v20, "rawContactsCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v11, v4

    const/4 v4, 0x1

    const-string v5, "account_type"

    aput-object v5, v11, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-wide v5, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 312
    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gtz v4, :cond_5

    .line 332
    :cond_4
    if-eqz v20, :cond_1

    .line 333
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 315
    :cond_5
    :try_start_1
    sget-object v4, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[copyContactsToAccount] rawContactsCursor.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v22, 0x0

    .line 319
    .local v22, "subContact":I
    :cond_6
    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 320
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 321
    .local v17, "oldRawContactId":J
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 323
    .local v15, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/contacts/multichoice/CopyProcessor;->copyAllDataToDb(Ljava/util/ArrayList;JLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    .line 324
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 328
    .end local v15    # "accountType":Ljava/lang/String;
    .end local v17    # "oldRawContactId":J
    :cond_7
    if-lez v22, :cond_8

    .line 329
    add-int/lit8 v23, v23, 0x1

    .line 332
    :cond_8
    if-eqz v20, :cond_1

    goto :goto_2

    .end local v22    # "subContact":I
    :catchall_0
    move-exception v4

    if-eqz v20, :cond_9

    .line 333
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_9
    throw v4

    .line 345
    .end local v20    # "rawContactsCursor":Landroid/database/Cursor;
    .end local v21    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->postFinishResult(II)V

    goto/16 :goto_0
.end method

.method private copyContactsToCard(I)V
    .locals 22
    .param p1, "subscription"    # I

    .prologue
    .line 170
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyContactsToCard] subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    if-eqz v3, :cond_0

    .line 278
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v12, 0x0

    .line 176
    .local v12, "errorCause":I
    sget-boolean v3, Lcom/android/contacts/multichoice/CopyProcessor;->mIsAirPlaneModeOn:Z

    if-nez v3, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 177
    :cond_1
    const/4 v12, 0x2

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v12, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->postFailResult(IIII)V

    goto :goto_0

    .line 183
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity(Landroid/content/Context;I)I

    move-result v9

    .line 185
    .local v9, "cardCapacity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    const-string v4, "com.android.sim"

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/common/util/SimContactsOperation;->getAccountNameBySub(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getContactCountByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 187
    .local v10, "cardDbCount":I
    if-lt v10, v9, :cond_3

    .line 188
    const/4 v12, 0x3

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v12, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->postFailResult(IIII)V

    goto :goto_0

    .line 193
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 194
    .local v7, "totalItems":I
    const/16 v19, 0x0

    .line 195
    .local v19, "successfulItems":I
    const/4 v6, 0x0

    .line 196
    .local v6, "currentCount":I
    sub-int v11, v9, v10

    .line 198
    .local v11, "cardSpaceLeft":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v15, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    .line 200
    .local v16, "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyContactsToCard] request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    if-eqz v3, :cond_7

    .line 263
    .end local v16    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_5
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 264
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/contacts/multichoice/CopyProcessor;->applyToBatch(Ljava/util/ArrayList;)V

    .line 267
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    if-eqz v3, :cond_e

    .line 268
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v4, "[copyContactsToCard] mCancelled = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->postCancelResult(II)V

    goto/16 :goto_0

    .line 205
    .restart local v16    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    move/from16 v0, p1

    invoke-static {v3, v4, v5, v0}, Lcom/android/contacts/common/util/SimContactsOperation;->getExportToCardValues(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v21

    .line 212
    .local v21, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyContactsToCard] valuesList.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 217
    const/16 v18, 0x0

    .line 218
    .local v18, "subContact":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ContentValues;

    .line 220
    .local v20, "values":Landroid/content/ContentValues;
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyContactsToCard] cardSpaceLeft = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-gtz v11, :cond_b

    .line 222
    const/4 v12, 0x3

    .line 249
    .end local v20    # "values":Landroid/content/ContentValues;
    :cond_8
    :goto_3
    if-lez v18, :cond_9

    .line 250
    add-int/lit8 v19, v19, 0x1

    .line 252
    :cond_9
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyContactsToCard] successfulItems = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operationList.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_a

    .line 255
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/contacts/multichoice/CopyProcessor;->applyToBatch(Ljava/util/ArrayList;)V

    .line 258
    :cond_a
    const/4 v3, 0x2

    if-eq v12, v3, :cond_5

    const/4 v3, 0x3

    if-ne v12, v3, :cond_4

    goto/16 :goto_1

    .line 226
    .restart local v20    # "values":Landroid/content/ContentValues;
    :cond_b
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyContactsToCard] values = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mSimOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/common/util/SimContactsOperation;->insert(Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v17

    .line 229
    .local v17, "retUri":Landroid/net/Uri;
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After sim contact inserted. retUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz v17, :cond_c

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/multichoice/CopyProcessor;->mTargetAccount:Landroid/accounts/Account;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v15, v3, v0, v1}, Lcom/android/contacts/common/util/SimContactsOperation;->buildInsertOperation(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentValues;I)V

    .line 235
    add-int/lit8 v18, v18, 0x1

    .line 236
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    .line 238
    :cond_c
    sget-object v3, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[copyContactsToCard] mIsAirPlaneModeOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/contacts/multichoice/CopyProcessor;->mIsAirPlaneModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-boolean v3, Lcom/android/contacts/multichoice/CopyProcessor;->mIsAirPlaneModeOn:Z

    if-eqz v3, :cond_d

    .line 240
    const/4 v12, 0x2

    .line 241
    goto/16 :goto_3

    .line 243
    :cond_d
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 273
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    .end local v17    # "retUri":Landroid/net/Uri;
    .end local v18    # "subContact":I
    .end local v20    # "values":Landroid/content/ContentValues;
    .end local v21    # "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_e
    if-nez v12, :cond_f

    .line 274
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->postFinishResult(II)V

    goto/16 :goto_0

    .line 276
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v12, v2}, Lcom/android/contacts/multichoice/CopyProcessor;->postFailResult(IIII)V

    goto/16 :goto_0
.end method

.method private cursorColumnToBuilder(Landroid/database/Cursor;[Ljava/lang/String;ILandroid/content/ContentProviderOperation$Builder;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "columnIndex"    # I
    .param p4, "builder"    # Landroid/content/ContentProviderOperation$Builder;

    .prologue
    .line 460
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 474
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :pswitch_1
    aget-object v0, p2, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    :goto_0
    :pswitch_2
    return-void

    .line 468
    :pswitch_3
    aget-object v0, p2, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 471
    :pswitch_4
    aget-object v0, p2, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAirPlaneMode()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 502
    iget-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/contacts/multichoice/CopyProcessor;->mIsAirPlaneModeOn:Z

    .line 504
    return-void
.end method

.method private postCancelResult(II)V
    .locals 6
    .param p1, "totalItems"    # I
    .param p2, "successfulItems"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 411
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    sub-int v5, p1, p2

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    .line 413
    return-void
.end method

.method private postFailResult(IIII)V
    .locals 8
    .param p1, "totalItems"    # I
    .param p2, "successfulItems"    # I
    .param p3, "errorCause"    # I
    .param p4, "subscription"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 417
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    sub-int v5, p1, p2

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onFailed(IIIIIII)V

    .line 420
    return-void
.end method

.method private postFinishResult(II)V
    .locals 7
    .param p1, "totalItems"    # I
    .param p2, "successfulItems"    # I

    .prologue
    const/4 v1, 0x1

    .line 423
    if-ne p2, p1, :cond_0

    move v6, v1

    .line 424
    .local v6, "successful":Z
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    invoke-virtual {v0, v2, v6}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 425
    if-eqz v6, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onFinished(III)V

    .line 431
    :goto_1
    return-void

    .line 423
    .end local v6    # "successful":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 428
    .restart local v6    # "successful":Z
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    sub-int v5, p1, p2

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onFailed(IIIII)V

    goto :goto_1
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 480
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 481
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 483
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 6
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 129
    sget-object v2, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v4, "CopyProcessor received cancel request"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mDone:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    if-eqz v2, :cond_2

    :cond_0
    move v1, v0

    .line 140
    :cond_1
    :goto_0
    return v1

    .line 135
    :cond_2
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    .line 136
    iget-boolean v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mIsRunning:Z

    if-nez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v4, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    invoke-virtual {v2, v4, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mJobId:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mDone:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 146
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mIsRunning:Z

    .line 147
    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 148
    invoke-direct {p0}, Lcom/android/contacts/multichoice/CopyProcessor;->registerReceiver()V

    .line 149
    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mTargetAccount:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Landroid/accounts/Account;)I

    move-result v1

    .line 150
    .local v1, "subscription":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 151
    invoke-direct {p0, v1}, Lcom/android/contacts/multichoice/CopyProcessor;->copyContactsToCard(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-enter p0

    .line 160
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mDone:Z

    .line 161
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    invoke-direct {p0}, Lcom/android/contacts/multichoice/CopyProcessor;->unregisterReceiver()V

    .line 163
    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 167
    :cond_0
    return-void

    .line 153
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/contacts/multichoice/CopyProcessor;->copyContactsToAccount()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 155
    .end local v1    # "subscription":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v2, Lcom/android/contacts/multichoice/CopyProcessor;->TAG:Ljava/lang/String;

    const-string v3, "RuntimeException thrown during copy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-enter p0

    .line 160
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mDone:Z

    .line 161
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    invoke-direct {p0}, Lcom/android/contacts/multichoice/CopyProcessor;->unregisterReceiver()V

    .line 163
    iget-object v3, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/android/contacts/multichoice/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_2
    throw v2

    .line 161
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .restart local v1    # "subscription":I
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method
