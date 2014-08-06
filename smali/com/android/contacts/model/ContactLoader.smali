.class public Lcom/android/contacts/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/ContactLoader$GroupQuery;,
        Lcom/android/contacts/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/model/ContactLoader$ContactQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/model/Contact;


# instance fields
.field private mComputeFormattedPhoneNumber:Z

.field private mContact:Lcom/android/contacts/model/Contact;

.field private mLoadGroupMetaData:Z

.field private mLoadInvitableAccountTypes:Z

.field private mLoadStreamItems:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mPostViewNotification:Z

.field private final mRequestedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/model/ContactLoader;->DEBUG:Z

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "postViewNotification"    # Z

    .prologue
    const/4 v3, 0x0

    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, p3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZZ)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "loadGroupMetaData"    # Z
    .param p4, "loadStreamItems"    # Z
    .param p5, "loadInvitableAccountTypes"    # Z
    .param p6, "postViewNotification"    # Z
    .param p7, "computeFormattedPhoneNumber"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 101
    iput-object p2, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 102
    iput-object p2, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 103
    iput-boolean p3, p0, Lcom/android/contacts/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 104
    iput-boolean p4, p0, Lcom/android/contacts/model/ContactLoader;->mLoadStreamItems:Z

    .line 105
    iput-boolean p5, p0, Lcom/android/contacts/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 106
    iput-boolean p6, p0, Lcom/android/contacts/model/ContactLoader;->mPostViewNotification:Z

    .line 107
    iput-boolean p7, p0, Lcom/android/contacts/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 108
    return-void
.end method

.method private computeFormattedPhoneNumbers(Lcom/android/contacts/model/Contact;)V
    .locals 11
    .param p1, "contactData"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "countryIso":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 810
    .local v9, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    .line 811
    .local v7, "rawContactCount":I
    const/4 v8, 0x0

    .local v8, "rawContactIndex":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 812
    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContact;

    .line 813
    .local v6, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v6}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    .line 814
    .local v4, "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/dataitem/DataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 815
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 816
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/dataitem/DataItem;

    .line 817
    .local v3, "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    instance-of v10, v3, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v10, :cond_0

    move-object v5, v3

    .line 818
    check-cast v5, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 819
    .local v5, "phoneDataItem":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    invoke-virtual {v5, v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->computeFormattedPhoneNumber(Ljava/lang/String;)V

    .line 815
    .end local v5    # "phoneDataItem":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 811
    .end local v3    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 823
    .end local v1    # "dataCount":I
    .end local v2    # "dataIndex":I
    .end local v4    # "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/dataitem/DataItem;>;"
    .end local v6    # "rawContact":Lcom/android/contacts/model/RawContact;
    :cond_2
    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "index"    # I

    .prologue
    .line 600
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 614
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_1
    sget-object v0, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    :goto_0
    :pswitch_2
    return-void

    .line 608
    :pswitch_3
    sget-object v0, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :pswitch_4
    sget-object v0, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 21
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 355
    const-string v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 356
    .local v3, "entityUri":Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 358
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 359
    sget-object v2, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    .line 405
    :goto_0
    return-object v8

    .line 364
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 407
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 370
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/model/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    .line 374
    .local v8, "contact":Lcom/android/contacts/model/Contact;
    const-wide/16 v9, -0x1

    .line 375
    .local v9, "currentRawContactId":J
    const/4 v15, 0x0

    .line 376
    .local v15, "rawContact":Lcom/android/contacts/model/RawContact;
    new-instance v18, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 378
    .local v18, "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/model/RawContact;>;"
    new-instance v20, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 381
    .local v20, "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :cond_2
    const/16 v2, 0xe

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 382
    .local v16, "rawContactId":J
    cmp-long v2, v16, v9

    if-eqz v2, :cond_3

    .line 385
    move-wide/from16 v9, v16

    .line 386
    new-instance v15, Lcom/android/contacts/model/RawContact;

    .end local v15    # "rawContact":Lcom/android/contacts/model/RawContact;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/model/ContactLoader;->loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 387
    .restart local v15    # "rawContact":Lcom/android/contacts/model/RawContact;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 389
    :cond_3
    const/16 v2, 0x1c

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 390
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/model/ContactLoader;->loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v12

    .line 391
    .local v12, "data":Landroid/content/ContentValues;
    invoke-virtual {v15, v12}, Lcom/android/contacts/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 393
    const/16 v2, 0x36

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x38

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 395
    :cond_4
    new-instance v19, Lcom/android/contacts/util/DataStatus;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 396
    .local v19, "status":Lcom/android/contacts/util/DataStatus;
    const/16 v2, 0x1c

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 397
    .local v13, "dataId":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 400
    .end local v12    # "data":Landroid/content/ContentValues;
    .end local v13    # "dataId":J
    .end local v19    # "status":Lcom/android/contacts/util/DataStatus;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 402
    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 403
    invoke-virtual/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 407
    .end local v8    # "contact":Lcom/android/contacts/model/Contact;
    .end local v9    # "currentRawContactId":J
    .end local v15    # "rawContact":Lcom/android/contacts/model/RawContact;
    .end local v16    # "rawContactId":J
    .end local v18    # "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/model/RawContact;>;"
    .end local v20    # "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 25
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 497
    const-string v1, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 499
    .local v24, "directoryParameter":Ljava/lang/String;
    if-nez v24, :cond_1

    const-wide/16 v5, 0x0

    .line 502
    .local v5, "directoryId":J
    :goto_0
    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 503
    .local v8, "contactId":J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "lookupKey":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 505
    .local v10, "nameRawContactId":J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 506
    .local v12, "displayNameSource":I
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 507
    .local v16, "displayName":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 508
    .local v17, "altDisplayName":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 509
    .local v18, "phoneticName":Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 510
    .local v13, "photoId":J
    const/16 v1, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 511
    .local v15, "photoUri":Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v19, 0x1

    .line 512
    .local v19, "starred":Z
    :goto_1
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v20, 0x0

    .line 515
    .local v20, "presence":Ljava/lang/Integer;
    :goto_2
    const/16 v1, 0x3e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v21, 0x1

    .line 516
    .local v21, "sendToVoicemail":Z
    :goto_3
    const/16 v1, 0x3f

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 517
    .local v22, "customRingtone":Ljava/lang/String;
    const/16 v1, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/16 v23, 0x1

    .line 520
    .local v23, "isUserProfile":Z
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    cmp-long v1, v5, v1

    if-nez v1, :cond_6

    .line 521
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 527
    .local v4, "lookupUri":Landroid/net/Uri;
    :goto_5
    new-instance v1, Lcom/android/contacts/model/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v23}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    return-object v1

    .line 499
    .end local v4    # "lookupUri":Landroid/net/Uri;
    .end local v5    # "directoryId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "contactId":J
    .end local v10    # "nameRawContactId":J
    .end local v12    # "displayNameSource":I
    .end local v13    # "photoId":J
    .end local v15    # "photoUri":Ljava/lang/String;
    .end local v16    # "displayName":Ljava/lang/String;
    .end local v17    # "altDisplayName":Ljava/lang/String;
    .end local v18    # "phoneticName":Ljava/lang/String;
    .end local v19    # "starred":Z
    .end local v20    # "presence":Ljava/lang/Integer;
    .end local v21    # "sendToVoicemail":Z
    .end local v22    # "customRingtone":Ljava/lang/String;
    .end local v23    # "isUserProfile":Z
    :cond_1
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto/16 :goto_0

    .line 511
    .restart local v5    # "directoryId":J
    .restart local v7    # "lookupKey":Ljava/lang/String;
    .restart local v8    # "contactId":J
    .restart local v10    # "nameRawContactId":J
    .restart local v12    # "displayNameSource":I
    .restart local v13    # "photoId":J
    .restart local v15    # "photoUri":Ljava/lang/String;
    .restart local v16    # "displayName":Ljava/lang/String;
    .restart local v17    # "altDisplayName":Ljava/lang/String;
    .restart local v18    # "phoneticName":Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 512
    .restart local v19    # "starred":Z
    :cond_3
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_2

    .line 515
    .restart local v20    # "presence":Ljava/lang/Integer;
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 517
    .restart local v21    # "sendToVoicemail":Z
    .restart local v22    # "customRingtone":Ljava/lang/String;
    :cond_5
    const/16 v23, 0x0

    goto :goto_4

    .line 524
    .restart local v23    # "isUserProfile":Z
    :cond_6
    move-object/from16 v4, p2

    .restart local v4    # "lookupUri":Landroid/net/Uri;
    goto :goto_5
.end method

.method private loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 564
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 569
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 570
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 571
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 572
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 573
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 574
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 575
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 576
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 577
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 578
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 579
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 580
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 581
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 582
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 583
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 584
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 585
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 586
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 587
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 588
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 589
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 590
    const/16 v1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 591
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 592
    const/16 v1, 0x35

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 593
    const/16 v1, 0x37

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 595
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/model/Contact;)V
    .locals 16
    .param p1, "result"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v7

    .line 621
    .local v7, "directoryId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v14, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 624
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 653
    :goto_0
    return-void

    .line 628
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 632
    .local v13, "typeResourceId":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "accountType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "accountName":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 635
    .local v5, "exportSupport":I
    const/4 v2, 0x0

    .line 636
    .local v2, "directoryType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 639
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 640
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    .line 647
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 651
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v13    # "typeResourceId":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 641
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v2    # "directoryType":Ljava/lang/String;
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "accountName":Ljava/lang/String;
    .restart local v5    # "exportSupport":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "typeResourceId":I
    :catch_0
    move-exception v9

    .line 642
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v0, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Contact directory resource not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 651
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "typeResourceId":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadGroupMetaData(Lcom/android/contacts/model/Contact;)V
    .locals 17
    .param p1, "result"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 660
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v14, "selection":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v15, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/RawContact;

    .line 663
    .local v13, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v13}, Lcom/android/contacts/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "accountName":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "accountType":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "dataSet":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 667
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    const-string v1, " OR "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    :cond_1
    const-string v1, "(account_name=? AND account_type=?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    if-eqz v4, :cond_2

    .line 676
    const-string v1, " AND data_set=?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :goto_1
    const-string v1, ")"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 679
    :cond_2
    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 684
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    .end local v13    # "rawContact":Lcom/android/contacts/model/RawContact;
    :cond_3
    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v11}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 686
    .local v11, "groupListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/GroupMetaData;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 690
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 691
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 692
    .restart local v2    # "accountName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 693
    .restart local v3    # "accountType":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 694
    .restart local v4    # "dataSet":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 695
    .local v5, "groupId":J
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 696
    .local v7, "title":Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    .line 699
    .local v8, "defaultGroup":Z
    :goto_3
    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x0

    .line 703
    .local v9, "favorites":Z
    :goto_4
    new-instance v1, Lcom/android/contacts/GroupMetaData;

    invoke-direct/range {v1 .. v9}, Lcom/android/contacts/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    invoke-virtual {v11, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 708
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    .end local v5    # "groupId":J
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "defaultGroup":Z
    .end local v9    # "favorites":Z
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 696
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "dataSet":Ljava/lang/String;
    .restart local v5    # "groupId":J
    .restart local v7    # "title":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x6

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 699
    .restart local v8    # "defaultGroup":Z
    :cond_6
    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 708
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    .end local v5    # "groupId":J
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "defaultGroup":Z
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 710
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/Contact;->setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V

    .line 711
    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/model/Contact;)V
    .locals 8
    .param p1, "contactData"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 468
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 470
    .local v3, "resultListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v1

    .line 473
    .local v1, "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 474
    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v4

    .line 478
    .local v4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact;

    .line 479
    .local v2, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v5

    .line 482
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 485
    .end local v2    # "rawContact":Lcom/android/contacts/model/RawContact;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 490
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/contacts/model/Contact;->setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V

    .line 491
    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/model/Contact;)V
    .locals 17
    .param p1, "contactData"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v11

    .line 419
    .local v11, "photoUri":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 421
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const-string v16, "r"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 423
    .local v4, "fd":Landroid/content/res/AssetFileDescriptor;
    const/16 v14, 0x4000

    new-array v2, v14, [B

    .line 424
    .local v2, "buffer":[B
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    .line 425
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    .local v13, "size":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 429
    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v13    # "size":I
    :catchall_0
    move-exception v14

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 434
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 433
    throw v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 437
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v14

    .line 443
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getPhotoId()J

    move-result-wide v9

    .line 444
    .local v9, "photoId":J
    const-wide/16 v14, 0x0

    cmp-long v14, v9, v14

    if-gtz v14, :cond_3

    .line 462
    .end local v9    # "photoId":J
    :cond_1
    :goto_1
    return-void

    .line 431
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "size":I
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/contacts/model/Contact;->setPhotoBinaryData([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 434
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 449
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "size":I
    .restart local v9    # "photoId":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/RawContact;

    .line 450
    .local v12, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v12}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/dataitem/DataItem;

    .line 451
    .local v3, "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    invoke-virtual {v3}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    cmp-long v14, v14, v9

    if-nez v14, :cond_5

    .line 452
    instance-of v14, v3, Lcom/android/contacts/model/dataitem/PhotoDataItem;

    if-eqz v14, :cond_4

    move-object v8, v3

    .line 456
    check-cast v8, Lcom/android/contacts/model/dataitem/PhotoDataItem;

    .line 457
    .local v8, "photo":Lcom/android/contacts/model/dataitem/PhotoDataItem;
    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/PhotoDataItem;->getPhoto()[B

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/contacts/model/Contact;->setPhotoBinaryData([B)V

    goto :goto_2
.end method

.method private loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 537
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 542
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 543
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 544
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 545
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 546
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 547
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 548
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 549
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 550
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 551
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 552
    const/16 v1, 0x1a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 553
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 554
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 555
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 557
    return-object v0
.end method

.method private loadStreamItems(Lcom/android/contacts/model/Contact;)V
    .locals 25
    .param p1, "result"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "stream_items"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 722
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v24, Landroid/util/LongSparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/LongSparseArray;-><init>()V

    .line 724
    .local v24, "streamItemsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/contacts/util/StreamItemEntry;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v23, "streamItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/util/StreamItemEntry;>;"
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 727
    new-instance v19, Lcom/android/contacts/util/StreamItemEntry;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/android/contacts/util/StreamItemEntry;-><init>(Landroid/database/Cursor;)V

    .line 728
    .local v19, "streamItem":Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v3

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 729
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 732
    .end local v19    # "streamItem":Lcom/android/contacts/util/StreamItemEntry;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 737
    .local v17, "start":J
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/util/StreamItemEntry;

    .line 738
    .restart local v19    # "streamItem":Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/util/StreamItemEntry;->decodeHtml(Landroid/content/Context;)V

    goto :goto_1

    .line 740
    .end local v19    # "streamItem":Lcom/android/contacts/util/StreamItemEntry;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 741
    .local v10, "end":J
    sget-boolean v3, Lcom/android/contacts/model/ContactLoader;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 742
    sget-object v3, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoded HTML for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items, took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v10, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 748
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 751
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/util/StreamItemEntry;

    .line 752
    .local v12, "entry":Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "photo"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 759
    .local v15, "siCursor":Landroid/database/Cursor;
    :goto_3
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 760
    new-instance v3, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-direct {v3, v15}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v12, v3}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 763
    :catchall_1
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    .line 767
    .end local v12    # "entry":Lcom/android/contacts/util/StreamItemEntry;
    .end local v15    # "siCursor":Landroid/database/Cursor;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 768
    .local v7, "streamItemIdArr":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v22, "streamItemPhotoSelection":Ljava/lang/StringBuilder;
    const-string v3, "stream_item_id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_5

    .line 771
    if-lez v13, :cond_4

    .line 772
    const-string v3, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_4
    const-string v3, "?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {v3}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 770
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 777
    :cond_5
    const-string v3, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$StreamItems;->CONTENT_PHOTO_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "stream_item_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 783
    .local v16, "sipCursor":Landroid/database/Cursor;
    :goto_5
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 784
    const-string v3, "stream_item_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 786
    .local v20, "streamItemId":J
    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/util/StreamItemEntry;

    .line 787
    .restart local v19    # "streamItem":Lcom/android/contacts/util/StreamItemEntry;
    new-instance v3, Lcom/android/contacts/util/StreamItemPhotoEntry;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    .line 790
    .end local v19    # "streamItem":Lcom/android/contacts/util/StreamItemEntry;
    .end local v20    # "streamItemId":J
    :catchall_2
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 796
    .end local v7    # "streamItemIdArr":[Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "sipCursor":Landroid/database/Cursor;
    .end local v22    # "streamItemPhotoSelection":Ljava/lang/StringBuilder;
    :cond_7
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 797
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/Contact;->setStreamItems(Lcom/google/common/collect/ImmutableList;)V

    .line 800
    return-void

    .line 763
    .restart local v12    # "entry":Lcom/android/contacts/util/StreamItemEntry;
    .restart local v15    # "siCursor":Landroid/database/Cursor;
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 13

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 863
    .local v1, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v11}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/RawContact;

    .line 864
    .local v5, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v5}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 865
    .local v6, "rawContactId":J
    iget-object v11, p0, Lcom/android/contacts/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 868
    iget-object v11, p0, Lcom/android/contacts/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-virtual {v5, v1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 870
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v8

    .line 871
    .local v8, "serviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, "servicePackageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 873
    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 874
    .local v10, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 875
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v11, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v2

    .line 881
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string v12, "Error sending message to source-app"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 885
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "rawContact":Lcom/android/contacts/model/RawContact;
    .end local v6    # "rawContactId":J
    .end local v8    # "serviceName":Ljava/lang/String;
    .end local v9    # "servicePackageName":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 892
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheResult()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 966
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    sput-object v0, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    goto :goto_0
.end method

.method public deliverResult(Lcom/android/contacts/model/Contact;)V
    .locals 4
    .param p1, "result"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/contacts/model/ContactLoader;->unregisterObserver()V

    .line 830
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    .line 836
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 839
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 840
    sget-object v0, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 842
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 848
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_4

    .line 850
    invoke-direct {p0}, Lcom/android/contacts/model/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Lcom/android/contacts/model/Contact;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ContactLoader;->deliverResult(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lcom/android/contacts/model/Contact;
    .locals 9

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 307
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v6}, Lcom/android/contacts/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 309
    .local v5, "uriCurrentFormat":Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    .line 310
    .local v0, "cachedResult":Lcom/android/contacts/model/Contact;
    const/4 v6, 0x0

    sput-object v6, Lcom/android/contacts/model/ContactLoader;->sCachedResult:Lcom/android/contacts/model/Contact;

    .line 314
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 318
    new-instance v3, Lcom/android/contacts/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-direct {v3, v6, v0}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    .line 319
    .local v3, "result":Lcom/android/contacts/model/Contact;
    const/4 v4, 0x1

    .line 324
    .local v4, "resultIsCached":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 325
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    if-nez v4, :cond_0

    .line 327
    invoke-direct {p0, v3}, Lcom/android/contacts/model/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/model/Contact;)V

    .line 334
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/contacts/model/ContactLoader;->mLoadStreamItems:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_1

    .line 335
    invoke-direct {p0, v3}, Lcom/android/contacts/model/ContactLoader;->loadStreamItems(Lcom/android/contacts/model/Contact;)V

    .line 337
    :cond_1
    iget-boolean v6, p0, Lcom/android/contacts/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v6, :cond_2

    .line 338
    invoke-direct {p0, v3}, Lcom/android/contacts/model/ContactLoader;->computeFormattedPhoneNumbers(Lcom/android/contacts/model/Contact;)V

    .line 340
    :cond_2
    if-nez v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/contacts/model/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/model/Contact;)V

    .line 343
    :cond_3
    iget-boolean v6, p0, Lcom/android/contacts/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_4

    .line 344
    invoke-direct {p0, v3}, Lcom/android/contacts/model/ContactLoader;->loadInvitableAccountTypes(Lcom/android/contacts/model/Contact;)V

    .line 350
    .end local v0    # "cachedResult":Lcom/android/contacts/model/Contact;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Lcom/android/contacts/model/Contact;
    .end local v4    # "resultIsCached":Z
    .end local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :cond_4
    :goto_2
    return-object v3

    .line 321
    .restart local v0    # "cachedResult":Lcom/android/contacts/model/Contact;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :cond_5
    invoke-direct {p0, v2, v5}, Lcom/android/contacts/model/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    .line 322
    .restart local v3    # "result":Lcom/android/contacts/model/Contact;
    const/4 v4, 0x0

    .restart local v4    # "resultIsCached":Z
    goto :goto_0

    .line 329
    :cond_6
    iget-boolean v6, p0, Lcom/android/contacts/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v6, :cond_0

    .line 330
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 331
    invoke-direct {p0, v3}, Lcom/android/contacts/model/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 348
    .end local v0    # "cachedResult":Lcom/android/contacts/model/Contact;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Lcom/android/contacts/model/Contact;
    .end local v4    # "resultIsCached":Z
    .end local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/contacts/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading the contact: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    iget-object v6, p0, Lcom/android/contacts/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v6, v1}, Lcom/android/contacts/model/Contact;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    goto :goto_2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->loadInBackground()Lcom/android/contacts/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 954
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 955
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->cancelLoad()Z

    .line 956
    invoke-direct {p0}, Lcom/android/contacts/model/ContactLoader;->unregisterObserver()V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    .line 958
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ContactLoader;->deliverResult(Lcom/android/contacts/model/Contact;)V

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/ContactLoader;->mContact:Lcom/android/contacts/model/Contact;

    if-nez v0, :cond_2

    .line 943
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->forceLoad()V

    .line 945
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->cancelLoad()Z

    .line 950
    return-void
.end method

.method public upgradeToFullContact()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 911
    iget-boolean v0, p0, Lcom/android/contacts/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/model/ContactLoader;->mLoadStreamItems:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 914
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 915
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 916
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactLoader;->mLoadStreamItems:Z

    .line 917
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactLoader;->mPostViewNotification:Z

    .line 918
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 921
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->cacheResult()V

    .line 925
    invoke-virtual {p0}, Lcom/android/contacts/model/ContactLoader;->onContentChanged()V

    goto :goto_0
.end method
