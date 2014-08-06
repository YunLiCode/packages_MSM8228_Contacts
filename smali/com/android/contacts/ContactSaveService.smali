.class public Lcom/android/contacts/ContactSaveService;
.super Landroid/app/IntentService;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactSaveService$JoinContactQuery;,
        Lcom/android/contacts/ContactSaveService$Listener;
    }
.end annotation


# static fields
.field private static final ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

.field private static final sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/contacts/ContactSaveService$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 85
    const-string v0, "ContactSaveService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/ContactSaveService;->DEBUG:Z

    .line 147
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const-string v1, "data3"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data15"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "ContactSaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactSaveService;->setIntentRedelivery(Z)V

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method private static addMembersToGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 927
    if-nez p1, :cond_1

    .line 975
    :cond_0
    return-void

    .line 930
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, p1, v1

    .line 932
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 936
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 938
    const-string v6, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "vnd.android.cursor.item/group_membership"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 942
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 943
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 948
    const-string v6, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 949
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 950
    const-string v6, "data1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 951
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    sget-boolean v0, Lcom/android/contacts/ContactSaveService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 954
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 955
    const-string v7, "ContactSaveService"

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 963
    :catch_0
    move-exception v0

    .line 965
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem persisting user edits for raw contact ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 960
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 961
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 967
    :catch_1
    move-exception v0

    .line 970
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assert failed in adding raw contact ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Already exists in group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1296
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1298
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1299
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1300
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1301
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    return-void
.end method

.method private callbackError(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 653
    const-string v1, "callbackIntent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 654
    .local v0, "callbackIntent":Landroid/content/Intent;
    const-string v1, "saveError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 656
    return-void
.end method

.method private checkGroupTitleExist(Landroid/content/Intent;)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 659
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 660
    .local v7, "accountType":Ljava/lang/String;
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 661
    .local v6, "accountName":Ljava/lang/String;
    const-string v0, "groupLabel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 662
    .local v9, "label":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v12

    .line 665
    :cond_1
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 666
    .local v10, "selection":Ljava/lang/StringBuffer;
    const-string v0, "title=? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v11, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    if-eqz v7, :cond_2

    .line 672
    const-string v0, "AND account_type=? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_2
    if-eqz v6, :cond_3

    .line 677
    const-string v0, "AND account_name=? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_3
    const/4 v8, 0x0

    .line 683
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v11, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 686
    if-eqz v8, :cond_7

    .line 687
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 692
    :goto_1
    if-eqz v8, :cond_4

    .line 693
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v12, v0

    .line 687
    goto :goto_0

    :cond_5
    move v0, v12

    goto :goto_1

    .line 692
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 693
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_6
    throw v0

    :cond_7
    if-eqz v8, :cond_0

    .line 693
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private clearPrimary(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1109
    const-string v0, "dataId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1110
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1111
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for clearPrimary request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :goto_0
    return-void

    .line 1116
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1117
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1103
    const-string v1, "clearPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1105
    return-object v0
.end method

.method public static createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1129
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1131
    return-object v0
.end method

.method private createGroup(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 722
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    const-string v1, "accountName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    const-string v2, "dataSet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    const-string v3, "groupLabel"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    const-string v4, "groupRingtone"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 727
    const-string v5, "rawContactsToAdd"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 729
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 730
    const-string v7, "account_type"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v7, "account_name"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v7, "data_set"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v2, "title"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v2, "group_custom_ringtone"

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v2, "PHONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.localphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ContactSaveService;->isPhoneAccountVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const-string v0, "group_visible"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 750
    if-nez v1, :cond_1

    .line 751
    const-string v0, "ContactSaveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create group with label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v0, v5, v2, v3}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 760
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 761
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v0, "data1"

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    const-string v0, "callbackIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 765
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 767
    const-string v1, "data"

    new-array v2, v8, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 768
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 812
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 813
    const-string v1, "deleteGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 815
    return-object v0
.end method

.method public static createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 872
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 873
    const-string v1, "updateGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 875
    const-string v1, "groupLabel"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v1, "groupRingtone"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v1, "rawContactsToAdd"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 878
    const-string v1, "rawContactsToRemove"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 882
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    invoke-virtual {v1, p8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 886
    return-object v0
.end method

.method public static createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1163
    const-string v1, "joinContacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const-string v1, "contactId1"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1165
    const-string v1, "contactId2"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1166
    const-string v1, "contactWritable"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1170
    invoke-virtual {v1, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1173
    return-object v0
.end method

.method public static createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/String;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    const-string v1, "createGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string v1, "accountName"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v1, "dataSet"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v1, "groupLabel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v1, "groupRingtone"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v1, "rawContactsToAdd"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 645
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 646
    invoke-virtual {v1, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 649
    return-object v0
.end method

.method public static createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string v1, "newRawContact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    if-eqz p2, :cond_0

    .line 283
    const-string v1, "accountName"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "accountType"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v1, "dataSet"

    iget-object v2, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    :cond_0
    const-string v1, "contentValues"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 293
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    return-object v0
.end method

.method private createRawContact(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 300
    const-string v14, "accountName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "accountName":Ljava/lang/String;
    const-string v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "accountType":Ljava/lang/String;
    const-string v14, "dataSet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "dataSet":Ljava/lang/String;
    const-string v14, "contentValues"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 304
    .local v12, "valueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v14, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 306
    .local v3, "callbackIntent":Landroid/content/Intent;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_name"

    invoke-virtual {v14, v15, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "data_set"

    invoke-virtual {v14, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 314
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 315
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 316
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    invoke-interface {v14, v15}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 317
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 323
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 326
    .local v9, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v14, "com.android.contacts"

    invoke-virtual {v9, v14, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 331
    .local v10, "results":[Landroid/content/ContentProviderResult;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    iget-object v8, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 332
    .local v8, "rawContactUri":Landroid/net/Uri;
    invoke-static {v9, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 334
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 335
    return-void

    .line 327
    .end local v8    # "rawContactUri":Landroid/net/Uri;
    .end local v10    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v5

    .line 328
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to store new contact"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p2, "saveModeExtraKey"    # Ljava/lang/String;
    .param p3, "saveMode"    # I
    .param p4, "isProfile"    # Z
    .param p6, "callbackAction"    # Ljava/lang/String;
    .param p7, "rawContactId"    # J
    .param p9, "updatedPhotoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 349
    .local p5, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 351
    invoke-static/range {v1 .. v8}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    const-string v1, "saveContact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    const-string v1, "saveIsProfile"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    if-eqz p7, :cond_0

    .line 372
    const-string v1, "updatedPhotos"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    :cond_0
    if-eqz p5, :cond_1

    .line 379
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    invoke-virtual {v1, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    :cond_1
    return-object v0
.end method

.method public static createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1049
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1050
    const-string v1, "setRingtone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1052
    const-string v1, "customRingtone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1055
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1057
    return-object v0
.end method

.method public static createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1024
    const-string v1, "sendToVoicemail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1026
    const-string v1, "sendToVoicemailFlag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 997
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 998
    const-string v1, "setStarred"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1000
    const-string v1, "starred"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1002
    return-object v0
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1081
    const-string v1, "setSuperPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1083
    return-object v0
.end method

.method private deleteContact(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1135
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1136
    if-nez v0, :cond_1

    .line 1137
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for deleteContact request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1142
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1143
    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Landroid/content/Context;J)I

    move-result v3

    .line 1144
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1145
    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSimAccountValues(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v1

    .line 1147
    sget-object v2, Lcom/android/contacts/ContactSaveService;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/common/util/SimContactsOperation;->delete(Landroid/content/ContentValues;I)I

    move-result v1

    .line 1148
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1152
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteGroup(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const-wide/16 v1, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 819
    const-string v0, "groupId"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 820
    cmp-long v0, v9, v1

    if-nez v0, :cond_0

    .line 821
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for deleteGroup request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_0
    return-void

    .line 828
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 831
    if-eqz v1, :cond_5

    .line 832
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 833
    const-string v0, "com.android.localphone"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PHONE"

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 841
    :goto_1
    if-eqz v1, :cond_2

    .line 842
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 847
    if-eqz v0, :cond_3

    .line 848
    const-string v0, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 850
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 842
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method private deliverCallback(Landroid/content/Intent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$2;-><init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1325
    return-void
.end method

.method private doSaveToSimCard(Lcom/android/contacts/model/RawContactDelta;Landroid/content/ContentResolver;I)Ljava/lang/Integer;
    .locals 14

    .prologue
    .line 1341
    invoke-static/range {p2 .. p2}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1436
    :goto_0
    return-object v1

    .line 1345
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v10

    .line 1346
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1348
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->buildSimDiff()Landroid/content/ContentValues;

    move-result-object v11

    .line 1354
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    const-string v1, "tag"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1356
    const-string v1, "number"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1357
    const-string v1, "anrs"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1358
    const-string v1, "emails"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1367
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1360
    :cond_1
    const-string v1, "newTag"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1361
    const-string v1, "newNumber"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1362
    const-string v1, "newAnrs"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1363
    const-string v1, "newEmails"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1370
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-gt v5, v6, :cond_4

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_5

    .line 1372
    :cond_4
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1375
    :cond_5
    invoke-static {v3}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1376
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "+"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1377
    :cond_6
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1380
    :cond_7
    invoke-static {v2}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1381
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "+"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1382
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1385
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-lt v1, v2, :cond_9

    .line 1386
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1389
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1390
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_a

    .line 1391
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1392
    :cond_a
    invoke-static {v4}, Lcom/android/contacts/common/util/SimContactsOperation;->hasChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_b

    .line 1394
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1398
    :cond_b
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1399
    const/4 v9, 0x0

    .line 1400
    const/4 v8, 0x0

    .line 1403
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/common/util/SimContactsOperation;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1405
    if-eqz v2, :cond_11

    .line 1406
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1409
    :goto_2
    if-eqz v2, :cond_c

    .line 1410
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1414
    :cond_c
    move/from16 v0, p3

    invoke-static {p0, v0}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity(Landroid/content/Context;I)I

    move-result v2

    if-ne v1, v2, :cond_e

    .line 1415
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1409
    :catchall_0
    move-exception v1

    move-object v2, v8

    :goto_3
    if-eqz v2, :cond_d

    .line 1410
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1409
    :cond_d
    throw v1

    .line 1419
    :cond_e
    if-eqz v10, :cond_f

    .line 1420
    const-string v1, "number"

    invoke-virtual {v11, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v1, "anrs"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    sget-object v1, Lcom/android/contacts/ContactSaveService;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    move/from16 v0, p3

    invoke-virtual {v1, v11, v0}, Lcom/android/contacts/common/util/SimContactsOperation;->insert(Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v1

    .line 1424
    if-eqz v1, :cond_10

    .line 1425
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1428
    :cond_f
    const-string v1, "newNumber"

    invoke-virtual {v11, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v1, "newAnrs"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    sget-object v1, Lcom/android/contacts/ContactSaveService;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    move/from16 v0, p3

    invoke-virtual {v1, v11, v0}, Lcom/android/contacts/common/util/SimContactsOperation;->update(Landroid/content/ContentValues;I)I

    move-result v1

    .line 1432
    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 1433
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1409
    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_10
    move-object v1, v7

    goto/16 :goto_0

    :cond_11
    move v1, v9

    goto :goto_2
.end method

.method private getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 5
    .param p2, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 608
    .local v0, "diffSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 609
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 610
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    aget-object v3, p2, v1

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 616
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :goto_1
    return-wide v3

    .line 608
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method private getRawContactId(Lcom/android/contacts/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 4
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p3, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 593
    .local p2, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v0

    .line 594
    .local v0, "existingRawContactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 598
    .end local v0    # "existingRawContactId":J
    :goto_0
    return-wide v0

    .restart local v0    # "existingRawContactId":J
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private isPhoneAccountVisible()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 703
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v3, "PHONE"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v3, "com.android.localphone"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 707
    .local v1, "settingsUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 709
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ungrouped_visible"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 710
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 715
    :cond_0
    if-eqz v6, :cond_1

    .line 716
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 713
    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v7, :cond_4

    move v0, v7

    .line 715
    :goto_1
    if-eqz v6, :cond_2

    .line 716
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v0, v8

    .line 713
    goto :goto_1

    .line 715
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 716
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 715
    :cond_5
    throw v0
.end method

.method private joinContacts(Landroid/content/Intent;)V
    .locals 14

    .prologue
    .line 1194
    const-string v0, "contactId1"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1195
    const-string v0, "contactId2"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1196
    const-string v0, "contactWritable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1197
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 1198
    :cond_0
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for joinContacts request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :goto_0
    return-void

    .line 1202
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1206
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=? OR contact_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1212
    const-wide/16 v3, -0x1

    .line 1214
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1246
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1217
    :cond_2
    const/4 v2, -0x1

    .line 1218
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v11, v1, [J

    .line 1219
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    array-length v1, v11

    if-ge v5, v1, :cond_3

    .line 1220
    invoke-interface {v8, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1221
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1222
    aput-wide v12, v11, v5

    .line 1223
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1224
    if-le v1, v2, :cond_c

    .line 1219
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    goto :goto_1

    .line 1232
    :cond_3
    if-eqz v10, :cond_6

    .line 1233
    const/4 v1, 0x0

    :goto_3
    array-length v5, v11

    if-ge v1, v5, :cond_6

    .line 1234
    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1235
    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v5, v9, v6

    if-nez v5, :cond_5

    .line 1236
    const/4 v5, 0x3

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1237
    if-ne v5, v2, :cond_5

    const-wide/16 v9, -0x1

    cmp-long v5, v3, v9

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 1240
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 1233
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1246
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    move-wide v9, v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    array-length v1, v11

    if-ge v7, v1, :cond_9

    .line 1252
    const/4 v1, 0x0

    move v8, v1

    :goto_5
    array-length v1, v11

    if-ge v8, v1, :cond_8

    .line 1253
    if-eq v7, v8, :cond_7

    .line 1254
    aget-wide v3, v11, v7

    aget-wide v5, v11, v8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 1252
    :cond_7
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_5

    .line 1251
    :cond_8
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    .line 1261
    :cond_9
    const-wide/16 v3, -0x1

    cmp-long v1, v9, v3

    if-eqz v1, :cond_a

    .line 1262
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1264
    const-string v3, "name_verified"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1265
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_a
    const/4 v1, 0x0

    .line 1271
    :try_start_2
    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1272
    const v2, 0x7f090125

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1273
    const/4 v1, 0x1

    move v2, v1

    .line 1282
    :goto_6
    const-string v1, "callbackIntent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1283
    if-eqz v2, :cond_b

    .line 1284
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, v11, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1286
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1288
    :cond_b
    invoke-direct {p0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1274
    :catch_0
    move-exception v2

    .line 1275
    const-string v3, "ContactSaveService"

    const-string v4, "Failed to apply aggregation exception batch"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1276
    const v2, 0x7f09013d

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    move v2, v1

    .line 1280
    goto :goto_6

    .line 1277
    :catch_1
    move-exception v2

    .line 1278
    const-string v3, "ContactSaveService"

    const-string v4, "Failed to apply aggregation exception batch"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    const v2, 0x7f09013d

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    move v2, v1

    goto :goto_6

    :cond_c
    move v1, v2

    goto/16 :goto_2
.end method

.method public static registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 3

    .prologue
    .line 190
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only activities can be registered to receive callback from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 195
    return-void
.end method

.method private static removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 979
    if-nez p1, :cond_1

    .line 991
    :cond_0
    return-void

    .line 982
    :cond_1
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v3, p1, v0

    .line 986
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v3, 0x1

    const-string v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renameGroup(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 790
    const-string v0, "groupId"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 791
    const-string v2, "groupLabel"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 794
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for renameGroup request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :goto_0
    return-void

    .line 798
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 799
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 801
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    const-string v0, "callbackIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 804
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 805
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private saveContact(Landroid/content/Intent;)V
    .locals 46
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    const-string v5, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v40

    check-cast v40, Lcom/android/contacts/model/RawContactDeltaList;

    .line 389
    .local v40, "state":Lcom/android/contacts/model/RawContactDeltaList;
    const-string v5, "saveIsProfile"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 390
    .local v26, "isProfile":Z
    const-string v5, "updatedPhotos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v45

    check-cast v45, Landroid/os/Bundle;

    .line 393
    .local v45, "updatedPhotos":Landroid/os/Bundle;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v10

    .line 394
    .local v10, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    move-object/from16 v0, v40

    invoke-static {v0, v10}, Lcom/android/contacts/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 396
    const/16 v29, 0x0

    .line 398
    .local v29, "lookupUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 399
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/16 v42, 0x0

    .line 402
    .local v42, "succeeded":Z
    const-wide/16 v23, -0x1

    .line 404
    .local v23, "insertedRawContactId":J
    const/16 v37, 0x2

    .line 405
    .local v37, "result":I
    invoke-virtual/range {v40 .. v40}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/model/RawContactDelta;

    .line 406
    .local v19, "entity":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v41

    .line 408
    .local v41, "subscription":I
    const/4 v5, -0x1

    move/from16 v0, v41

    if-eq v0, v5, :cond_1

    const/16 v25, 0x1

    .line 409
    .local v25, "isCardOperation":Z
    :goto_1
    if-eqz v25, :cond_0

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v41

    invoke-direct {v0, v1, v4, v2}, Lcom/android/contacts/ContactSaveService;->doSaveToSimCard(Lcom/android/contacts/model/RawContactDelta;Landroid/content/ContentResolver;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 411
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveToSimCard result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v5, 0x1

    move/from16 v0, v37

    if-ne v0, v5, :cond_0

    .line 414
    const/16 v37, 0x2

    goto :goto_0

    .line 408
    .end local v25    # "isCardOperation":Z
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 420
    .end local v19    # "entity":Lcom/android/contacts/model/RawContactDelta;
    .end local v41    # "subscription":I
    :cond_2
    const/16 v43, 0x0

    .local v43, "tries":I
    move/from16 v44, v43

    .line 421
    .end local v43    # "tries":I
    .local v44, "tries":I
    :goto_2
    add-int/lit8 v43, v44, 0x1

    .end local v44    # "tries":I
    .restart local v43    # "tries":I
    const/4 v5, 0x3

    move/from16 v0, v44

    if-ge v0, v5, :cond_3

    const/4 v5, 0x2

    move/from16 v0, v37

    if-ne v0, v5, :cond_3

    .line 424
    :try_start_0
    invoke-virtual/range {v40 .. v40}, Lcom/android/contacts/model/RawContactDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v17

    .line 425
    .local v17, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-boolean v5, Lcom/android/contacts/ContactSaveService;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 426
    const-string v5, "ContactSaveService"

    const-string v6, "Content Provider Operations:"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/ContentProviderOperation;

    .line 428
    .local v31, "operation":Landroid/content/ContentProviderOperation;
    const-string v5, "ContactSaveService"

    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 471
    .end local v17    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v31    # "operation":Landroid/content/ContentProviderOperation;
    :catch_0
    move-exception v18

    .line 473
    .local v18, "e":Landroid/os/RemoteException;
    const-string v5, "ContactSaveService"

    const-string v6, "Problem persisting user edits"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_4
    if-eqz v45, :cond_11

    .line 517
    invoke-virtual/range {v45 .. v45}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 518
    .local v27, "key":Ljava/lang/String;
    move-object/from16 v0, v45

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 519
    .local v33, "photoFilePath":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 523
    .local v34, "rawContactId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v34, v5

    if-gez v5, :cond_10

    .line 524
    move-wide/from16 v34, v23

    .line 525
    const-wide/16 v5, -0x1

    cmp-long v5, v34, v5

    if-nez v5, :cond_10

    .line 526
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not determine RawContact ID for image insertion"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    .end local v27    # "key":Ljava/lang/String;
    .end local v33    # "photoFilePath":Ljava/lang/String;
    .end local v34    # "rawContactId":J
    .restart local v17    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_5
    const/16 v38, 0x0

    .line 433
    .local v38, "results":[Landroid/content/ContentProviderResult;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 434
    const-string v5, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v38

    .line 437
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v17

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v34

    .line 438
    .restart local v34    # "rawContactId":J
    const-wide/16 v5, -0x1

    cmp-long v5, v34, v5

    if-nez v5, :cond_9

    .line 439
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not determine RawContact ID after save"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    .end local v17    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v34    # "rawContactId":J
    .end local v38    # "results":[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v18

    .line 478
    .local v18, "e":Landroid/content/OperationApplicationException;
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version consistency failed, re-parenting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v39, Ljava/lang/StringBuilder;

    const-string v5, "_id IN("

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .local v39, "sb":Ljava/lang/StringBuilder;
    const/16 v20, 0x1

    .line 481
    .local v20, "first":Z
    invoke-virtual/range {v40 .. v40}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v15

    .line 482
    .local v15, "count":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_6
    move/from16 v0, v21

    if-ge v0, v15, :cond_c

    .line 483
    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v34

    .line 484
    .local v34, "rawContactId":Ljava/lang/Long;
    if-eqz v34, :cond_8

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    .line 485
    if-nez v20, :cond_7

    .line 486
    const/16 v5, 0x2c

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    :cond_7
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    const/16 v20, 0x0

    .line 482
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 443
    .end local v15    # "count":I
    .end local v18    # "e":Landroid/content/OperationApplicationException;
    .end local v20    # "first":Z
    .end local v21    # "i":I
    .end local v39    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local v34, "rawContactId":J
    .restart local v38    # "results":[Landroid/content/ContentProviderResult;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v23

    .line 444
    if-eqz v26, :cond_b

    .line 448
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "lookup"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 452
    .local v11, "c":Landroid/database/Cursor;
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 453
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 454
    .local v13, "contactId":J
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 455
    .local v28, "lookupKey":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-static {v13, v14, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v29

    .line 458
    .end local v13    # "contactId":J
    .end local v28    # "lookupKey":Ljava/lang/String;
    :cond_a
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 465
    .end local v11    # "c":Landroid/database/Cursor;
    :goto_7
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved contact. New URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v42, 0x1

    goto/16 :goto_4

    .line 458
    .restart local v11    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 461
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_b
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v34

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v36

    .line 463
    .local v36, "rawContactUri":Landroid/net/Uri;
    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v29

    goto :goto_7

    .line 492
    .end local v17    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v34    # "rawContactId":J
    .end local v36    # "rawContactUri":Landroid/net/Uri;
    .end local v38    # "results":[Landroid/content/ContentProviderResult;
    .restart local v15    # "count":I
    .restart local v18    # "e":Landroid/content/OperationApplicationException;
    .restart local v20    # "first":Z
    .restart local v21    # "i":I
    .restart local v39    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    const-string v5, ")"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    if-eqz v20, :cond_d

    .line 495
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Version consistency failed for a new contact"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 498
    :cond_d
    if-eqz v26, :cond_e

    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    :goto_8
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/contacts/model/RawContactDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v30

    .line 503
    .local v30, "newState":Lcom/android/contacts/model/RawContactDeltaList;
    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->mergeAfter(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDeltaList;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v40

    .line 506
    if-eqz v26, :cond_f

    .line 507
    invoke-virtual/range {v40 .. v40}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/model/RawContactDelta;

    .line 508
    .local v16, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    goto :goto_9

    .line 498
    .end local v16    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v30    # "newState":Lcom/android/contacts/model/RawContactDeltaList;
    :cond_e
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_8

    .restart local v30    # "newState":Lcom/android/contacts/model/RawContactDeltaList;
    :cond_f
    move/from16 v44, v43

    .line 511
    .end local v43    # "tries":I
    .restart local v44    # "tries":I
    goto/16 :goto_2

    .line 531
    .end local v15    # "count":I
    .end local v18    # "e":Landroid/content/OperationApplicationException;
    .end local v20    # "first":Z
    .end local v21    # "i":I
    .end local v30    # "newState":Lcom/android/contacts/model/RawContactDeltaList;
    .end local v39    # "sb":Ljava/lang/StringBuilder;
    .end local v44    # "tries":I
    .restart local v27    # "key":Ljava/lang/String;
    .restart local v33    # "photoFilePath":Ljava/lang/String;
    .restart local v34    # "rawContactId":J
    .restart local v43    # "tries":I
    :cond_10
    new-instance v32, Ljava/io/File;

    invoke-direct/range {v32 .. v33}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v32, "photoFile":Ljava/io/File;
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->saveUpdatedPhoto(JLjava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v42, 0x0

    goto/16 :goto_5

    .line 536
    .end local v27    # "key":Ljava/lang/String;
    .end local v32    # "photoFile":Ljava/io/File;
    .end local v33    # "photoFilePath":Ljava/lang/String;
    .end local v34    # "rawContactId":J
    :cond_11
    const-string v5, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 537
    .local v12, "callbackIntent":Landroid/content/Intent;
    if-eqz v12, :cond_13

    .line 538
    if-eqz v42, :cond_12

    .line 542
    const-string v5, "saveSucceeded"

    const/4 v6, 0x1

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 544
    :cond_12
    const-string v5, "saveResult"

    move/from16 v0, v37

    invoke-virtual {v12, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 546
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 548
    :cond_13
    return-void
.end method

.method private saveUpdatedPhoto(JLjava/io/File;)Z
    .locals 11
    .param p1, "rawContactId"    # J
    .param p3, "photoFile"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 555
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "display_photo"

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 560
    .local v5, "outputUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "rw"

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 563
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 565
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/16 v8, 0x4000

    :try_start_2
    new-array v0, v8, [B

    .line 567
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 568
    .local v6, "totalLength":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    if-lez v3, :cond_0

    .line 569
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 570
    add-int/2addr v6, v3

    goto :goto_0

    .line 572
    :cond_0
    const-string v8, "ContactSaveService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrote "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes for photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 577
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 578
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 584
    const/4 v7, 0x1

    .end local v0    # "buffer":[B
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v6    # "totalLength":I
    :goto_1
    return v7

    .line 574
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 577
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 578
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 577
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 580
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "ContactSaveService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to write photo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setRingtone(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1061
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1062
    const-string v1, "customRingtone"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    if-nez v0, :cond_0

    .line 1064
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for setRingtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :goto_0
    return-void

    .line 1067
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1068
    const-string v3, "custom_ringtone"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1071
    const-string v1, "callbackIntent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1072
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1073
    invoke-direct {p0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSendToVoicemail(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1032
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1033
    const-string v1, "sendToVoicemailFlag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1034
    if-nez v0, :cond_0

    .line 1035
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for setRedirectToVoicemail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_0
    return-void

    .line 1039
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1040
    const-string v3, "send_to_voicemail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1041
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStarred(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1006
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1007
    const-string v1, "starred"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1008
    if-nez v0, :cond_0

    .line 1009
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for setStarred request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_0
    return-void

    .line 1013
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1014
    const-string v3, "starred"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuperPrimary(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1087
    const-string v0, "dataId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1088
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1089
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for setSuperPrimary request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/database/ContactUpdateUtils;->setSuperPrimary(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$1;-><init>(Lcom/android/contacts/ContactSaveService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1315
    return-void
.end method

.method public static unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/contacts/ContactSaveService$Listener;

    .prologue
    .line 198
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method private updateGroup(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    .line 890
    const-string v0, "groupId"

    invoke-virtual {p1, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 891
    const-string v0, "groupLabel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 892
    const-string v0, "groupRingtone"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    const-string v5, "rawContactsToAdd"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 894
    const-string v6, "rawContactsToRemove"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 896
    cmp-long v7, v2, v7

    if-nez v7, :cond_0

    .line 897
    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for updateGroup request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_0
    return-void

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 902
    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 905
    if-nez v4, :cond_1

    if-eqz v0, :cond_5

    .line 906
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 907
    if-eqz v4, :cond_2

    .line 908
    const-string v10, "title"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_2
    if-eqz v0, :cond_4

    .line 910
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v1

    .line 911
    :cond_3
    const-string v4, "group_custom_ringtone"

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_4
    invoke-virtual {v7, v8, v9, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    :cond_5
    invoke-static {v7, v5, v2, v3}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 918
    invoke-static {v7, v6, v2, v3}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V

    .line 920
    const-string v0, "callbackIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 921
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 922
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 4
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 1331
    sget-object v2, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactSaveService$Listener;

    .line 1332
    .local v1, "listener":Lcom/android/contacts/ContactSaveService$Listener;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    .line 1338
    .end local v1    # "listener":Lcom/android/contacts/ContactSaveService$Listener;
    :cond_1
    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 208
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "service":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 186
    new-instance v0, Lcom/android/contacts/common/util/SimContactsOperation;

    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/util/SimContactsOperation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    .line 187
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v2, 0x7f0901ed

    .line 214
    if-nez p1, :cond_1

    .line 215
    const-string v1, "ContactSaveService"

    const-string v2, "May be a malicious attack..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "action":Ljava/lang/String;
    const-string v1, "newRawContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createRawContact(Landroid/content/Intent;)V

    .line 224
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v1, "saveContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->saveContact(Landroid/content/Intent;)V

    .line 227
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :cond_3
    const-string v1, "createGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->checkGroupTitleExist(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->callbackError(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    :cond_5
    const-string v1, "renameGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->checkGroupTitleExist(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 237
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    .line 238
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->callbackError(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->renameGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 242
    :cond_7
    const-string v1, "deleteGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 243
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    :cond_8
    const-string v1, "updateGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 245
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->checkGroupTitleExist(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 246
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->callbackError(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :cond_a
    const-string v1, "setStarred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 252
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarred(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 253
    :cond_b
    const-string v1, "setSuperPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 254
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSuperPrimary(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 255
    :cond_c
    const-string v1, "clearPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 256
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearPrimary(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 257
    :cond_d
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 258
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteContact(Landroid/content/Intent;)V

    .line 259
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 260
    :cond_e
    const-string v1, "joinContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 261
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinContacts(Landroid/content/Intent;)V

    .line 262
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 263
    :cond_f
    const-string v1, "sendToVoicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 264
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSendToVoicemail(Landroid/content/Intent;)V

    .line 265
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 266
    :cond_10
    const-string v1, "setRingtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setRingtone(Landroid/content/Intent;)V

    .line 268
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
