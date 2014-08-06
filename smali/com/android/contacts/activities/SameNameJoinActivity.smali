.class public Lcom/android/contacts/activities/SameNameJoinActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SameNameJoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;,
        Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private TOKEN_QUERY:I

.field private actionCancel:Landroid/widget/Button;

.field private actionOk:Landroid/widget/Button;

.field private exceptionIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/SameNameList;",
            ">;"
        }
    .end annotation
.end field

.field private icCheck:Landroid/widget/ImageView;

.field private icJoin:Landroid/widget/ImageView;

.field private mCanceled:Z

.field private mCommitThread:Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;

.field private mHandler:Landroid/os/Handler;

.field private mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

.field private mStatus:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private progress:Landroid/widget/ProgressBar;

.field private progressSingle:Landroid/widget/ProgressBar;

.field private stCheck:Landroid/widget/TextView;

.field private stJoin:Landroid/widget/TextView;

.field private stTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 69
    iput v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    .line 70
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->TOKEN_QUERY:I

    .line 71
    iput-boolean v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCanceled:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/android/contacts/activities/SameNameJoinActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/SameNameJoinActivity$1;-><init>(Lcom/android/contacts/activities/SameNameJoinActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mHandler:Landroid/os/Handler;

    .line 432
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/SameNameJoinActivity;ILjava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/SameNameJoinActivity;->getSpannableString(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stTotal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/SameNameJoinActivity;Landroid/content/ContentResolver;Lcom/android/contacts/model/SameNameList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Lcom/android/contacts/model/SameNameList;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/SameNameJoinActivity;->actuallyJoinOneGroup(Landroid/content/ContentResolver;Lcom/android/contacts/model/SameNameList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/SameNameJoinActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stJoin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stCheck:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/SameNameJoinActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/SameNameJoinActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->cancelJoining()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/SameNameJoinActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/SameNameJoinActivity;->startJoin(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/SameNameJoinActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private actuallyJoinOneGroup(Landroid/content/ContentResolver;Lcom/android/contacts/model/SameNameList;)V
    .locals 26
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "nameList"    # Lcom/android/contacts/model/SameNameList;

    .prologue
    .line 472
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v23, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/SameNameList;->getContactIds()Ljava/util/HashSet;

    move-result-object v13

    .line 474
    .local v13, "contactIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v25, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 476
    .local v19, "id":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 478
    .end local v19    # "id":J
    :cond_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 479
    .local v21, "ids":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, "SELECT":Ljava/lang/String;
    const/4 v15, 0x0

    .line 483
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 484
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 485
    .local v14, "count":I
    const-string v3, "SameNameJoinActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total raw contacts "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v3, 0x1

    if-le v14, v3, :cond_6

    .line 487
    new-array v0, v14, [J

    move-object/from16 v24, v0

    .line 488
    .local v24, "rawContactIds":[J
    const/16 v16, 0x0

    .local v16, "i":I
    move/from16 v17, v16

    .line 489
    .end local v16    # "i":I
    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCanceled:Z

    if-nez v3, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "i":I
    .restart local v16    # "i":I
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v24, v17

    move/from16 v17, v16

    .end local v16    # "i":I
    .restart local v17    # "i":I
    goto :goto_1

    .line 492
    :cond_1
    const/16 v16, 0x0

    .end local v17    # "i":I
    .restart local v16    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCanceled:Z

    if-nez v3, :cond_6

    move-object/from16 v0, v24

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    .line 493
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCanceled:Z

    if-nez v3, :cond_4

    move-object/from16 v0, v24

    array-length v3, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_4

    .line 494
    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 495
    aget-wide v9, v24, v16

    aget-wide v11, v24, v22

    move-object/from16 v7, p0

    move-object/from16 v8, v23

    invoke-direct/range {v7 .. v12}, Lcom/android/contacts/activities/SameNameJoinActivity;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 497
    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_3

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/SameNameJoinActivity;->pushOpsIntoDb(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 499
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 492
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 505
    .end local v14    # "count":I
    .end local v16    # "i":I
    .end local v22    # "j":I
    .end local v24    # "rawContactIds":[J
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .restart local v14    # "count":I
    :cond_6
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/SameNameJoinActivity;->pushOpsIntoDb(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 509
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 511
    :cond_8
    return-void
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .param p2, "rawContactId1"    # J
    .param p4, "rawContactId2"    # J
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
    .line 526
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 528
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 529
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 530
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 531
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private cancelJoining()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCanceled:Z

    .line 365
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    iget v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->TOKEN_QUERY:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;->cancelOperation(I)V

    .line 367
    iput-object v2, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCommitThread:Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCommitThread:Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;

    iget-boolean v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCanceled:Z

    iput-boolean v1, v0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->canceled:Z

    .line 371
    iput-object v2, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCommitThread:Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    const-string v0, "SameNameJoinActivity"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    :cond_2
    return-void
.end method

.method private getSpannableString(ILjava/lang/String;)Landroid/text/SpannableString;
    .locals 8
    .param p1, "resTitle"    # I
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x21

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/SameNameJoinActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "title":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    .local v1, "ssb":Landroid/text/SpannableString;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 176
    .local v2, "start":I
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 177
    .local v0, "end":I
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f0d0028

    invoke-direct {v3, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 178
    .local v3, "tas1":Landroid/text/style/TextAppearanceSpan;
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f0d0029

    invoke-direct {v4, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v4, "tas2":Landroid/text/style/TextAppearanceSpan;
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 180
    invoke-virtual {v1, v4, v2, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 181
    return-object v1
.end method

.method private pushOpsIntoDb(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    const-string v1, "SameNameJoinActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push into db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v1, "com.android.contacts"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 522
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string v1, "SameNameJoinActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OperationApplicationException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SameNameJoinActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    iput p1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    .line 306
    invoke-direct {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->updateProgressStatus()V

    .line 307
    const-string v0, "SameNameJoinActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 313
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    const v1, 0x7f09020f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 322
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 327
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 330
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "SameNameJoinActivity"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private showConfirmDialog(Z)V
    .locals 5
    .param p1, "backPressed"    # Z

    .prologue
    const v4, 0x7f0900dd

    .line 281
    iget v2, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    move v0, p1

    .line 285
    .local v0, "backPress":Z
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const v2, 0x7f09021a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 288
    const v2, 0x7f0900dc

    new-instance v3, Lcom/android/contacts/activities/SameNameJoinActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/activities/SameNameJoinActivity$2;-><init>(Lcom/android/contacts/activities/SameNameJoinActivity;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private startChecking()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;-><init>(Lcom/android/contacts/activities/SameNameJoinActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    .line 350
    :goto_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/SameNameJoinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 351
    .local v8, "pm":Landroid/os/PowerManager;
    const v0, 0x2000000a

    const-string v1, "SameNameJoinActivity"

    invoke-virtual {v8, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 353
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 355
    iput-boolean v9, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCanceled:Z

    .line 356
    invoke-direct {p0, v6}, Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V

    .line 357
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v9

    const-string v0, "display_name"

    aput-object v0, v4, v6

    .line 358
    .local v4, "PROJ":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    iget v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->TOKEN_QUERY:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "account_type!=?"

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "com.android.sim"

    aput-object v7, v6, v9

    const-string v7, "display_name"

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 348
    .end local v4    # "PROJ":[Ljava/lang/String;
    .end local v8    # "pm":Landroid/os/PowerManager;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private startJoin(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 380
    const-string v5, "SameNameJoinActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startJoin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, "nameList":Lcom/android/contacts/model/SameNameList;
    const/4 v5, -0x1

    :try_start_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 384
    .end local v3    # "nameList":Lcom/android/contacts/model/SameNameList;
    .local v4, "nameList":Lcom/android/contacts/model/SameNameList;
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 385
    const-string v5, "display_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "displayName":Ljava/lang/String;
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 387
    .local v1, "id":J
    const-string v5, "SameNameJoinActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/contacts/model/SameNameList;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    invoke-virtual {v4, v1, v2}, Lcom/android/contacts/model/SameNameList;->addContact(J)V

    move-object v3, v4

    .end local v4    # "nameList":Lcom/android/contacts/model/SameNameList;
    .restart local v3    # "nameList":Lcom/android/contacts/model/SameNameList;
    :goto_1
    move-object v4, v3

    .line 397
    .end local v3    # "nameList":Lcom/android/contacts/model/SameNameList;
    .restart local v4    # "nameList":Lcom/android/contacts/model/SameNameList;
    goto :goto_0

    .line 391
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/contacts/model/SameNameList;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 392
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1
    new-instance v3, Lcom/android/contacts/model/SameNameList;

    invoke-direct {v3, v0}, Lcom/android/contacts/model/SameNameList;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    .end local v4    # "nameList":Lcom/android/contacts/model/SameNameList;
    .restart local v3    # "nameList":Lcom/android/contacts/model/SameNameList;
    :try_start_2
    invoke-virtual {v3, v1, v2}, Lcom/android/contacts/model/SameNameList;->addContact(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 402
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "id":J
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz p1, :cond_2

    .line 403
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_2
    throw v5

    .line 398
    .end local v3    # "nameList":Lcom/android/contacts/model/SameNameList;
    .restart local v4    # "nameList":Lcom/android/contacts/model/SameNameList;
    :cond_3
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Lcom/android/contacts/model/SameNameList;->isValid()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 399
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 402
    :cond_4
    if-eqz p1, :cond_5

    .line 403
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 406
    const-string v5, "SameNameJoinActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exceptionIds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V

    .line 408
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 409
    new-instance v5, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;-><init>(Lcom/android/contacts/activities/SameNameJoinActivity;)V

    iput-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCommitThread:Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;

    .line 410
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mCommitThread:Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;

    invoke-virtual {v5}, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->start()V

    .line 414
    :goto_3
    return-void

    .line 412
    :cond_6
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V

    goto :goto_3

    .line 402
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "nameList":Lcom/android/contacts/model/SameNameList;
    .restart local v3    # "nameList":Lcom/android/contacts/model/SameNameList;
    goto :goto_2
.end method

.method private updateProgressStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 185
    const v4, 0x7f090212

    .line 186
    .local v4, "textTotal":I
    const v2, 0x7f090212

    .line 187
    .local v2, "textCheck":I
    const v3, 0x7f090212

    .line 188
    .local v3, "textJoin":I
    const v0, 0x7f020076

    .line 189
    .local v0, "check":I
    const v1, 0x7f020076

    .line 190
    .local v1, "join":I
    iget v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    packed-switch v5, :pswitch_data_0

    .line 233
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stCheck:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stJoin:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stTotal:Landroid/widget/TextView;

    const-string v6, ""

    invoke-direct {p0, v4, v6}, Lcom/android/contacts/activities/SameNameJoinActivity;->getSpannableString(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->icCheck:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->icJoin:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    return-void

    .line 192
    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progressSingle:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 197
    :pswitch_1
    const v2, 0x7f090213

    .line 198
    const v3, 0x7f090214

    .line 199
    move v4, v3

    .line 200
    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progressSingle:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    const v2, 0x7f090215

    .line 206
    const v3, 0x7f090215

    .line 207
    move v4, v3

    .line 208
    const v0, 0x7f020075

    .line 209
    const v1, 0x7f020075

    .line 210
    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progressSingle:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    const v2, 0x7f090089

    .line 216
    const v3, 0x7f090089

    .line 217
    move v4, v3

    .line 218
    const v0, 0x7f020074

    .line 219
    const v1, 0x7f020074

    .line 220
    goto :goto_0

    .line 223
    :pswitch_4
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 224
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progressSingle:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    const v2, 0x7f090089

    .line 226
    const v3, 0x7f090219

    .line 227
    move v4, v3

    .line 228
    const v0, 0x7f020074

    .line 229
    const v1, 0x7f020073

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/SameNameJoinActivity;->showConfirmDialog(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 253
    :sswitch_0
    iget v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mStatus:I

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->startChecking()V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->finish()V

    goto :goto_0

    .line 261
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/SameNameJoinActivity;->showConfirmDialog(Z)V

    goto :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b003c -> :sswitch_1
        0x7f0b0106 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v1, 0x7f040078

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 127
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 128
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 130
    const v1, 0x7f09020d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 133
    :cond_0
    const v1, 0x7f0b0106

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    .line 134
    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    .line 135
    iget-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start_from_menu"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :goto_0
    const v1, 0x7f0b0088

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;

    .line 143
    const v1, 0x7f0b0103

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->progressSingle:Landroid/widget/ProgressBar;

    .line 144
    const v1, 0x7f0b00fc

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stTotal:Landroid/widget/TextView;

    .line 145
    const v1, 0x7f0b0102

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stCheck:Landroid/widget/TextView;

    .line 146
    const v1, 0x7f0b00ff

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->stJoin:Landroid/widget/TextView;

    .line 147
    const v1, 0x7f0b0101

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->icCheck:Landroid/widget/ImageView;

    .line 148
    const v1, 0x7f0b00fe

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->icJoin:Landroid/widget/ImageView;

    .line 149
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V

    .line 151
    new-instance v1, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;-><init>(Lcom/android/contacts/activities/SameNameJoinActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->mQueryHandler:Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;

    .line 152
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity;->actionOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "SameNameJoinActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 170
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 269
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 271
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->finish()V

    .line 272
    const/4 v0, 0x1

    return v0

    .line 269
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 157
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "SameNameJoinActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/contacts/activities/SameNameJoinActivity;->cancelJoining()V

    .line 163
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 164
    return-void
.end method
