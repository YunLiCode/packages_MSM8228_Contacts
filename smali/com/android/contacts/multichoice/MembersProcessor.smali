.class public Lcom/android/contacts/multichoice/MembersProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "MembersProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mCancelled:Z

.field private volatile mDone:Z

.field private volatile mIsRunning:Z

.field private final mJobId:I

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

.field private final mType:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/contacts/multichoice/MembersProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceService;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Ljava/util/List;II)V
    .locals 3
    .param p1, "service"    # Lcom/android/contacts/multichoice/MultiChoiceService;
    .param p2, "listener"    # Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;
    .param p4, "jobId"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/multichoice/MultiChoiceService;",
            "Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p3, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mCancelled:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mDone:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mIsRunning:Z

    .line 42
    iput-object p1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    .line 43
    iput-object p2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    .line 44
    iput-object p3, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mRequestList:Ljava/util/List;

    .line 45
    iput p4, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    .line 46
    invoke-virtual {p1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 47
    iput p5, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    .line 48
    invoke-virtual {p1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 50
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    sget-object v2, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    return-void
.end method

.method private actualOpOneMember(Lcom/android/contacts/multichoice/MultiChoiceRequest;)Z
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/multichoice/MultiChoiceRequest;

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 161
    sget-object v3, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[actualOpOneMember] type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz p1, :cond_0

    iget-wide v3, p1, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    iget-wide v1, p1, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    .line 167
    .local v1, "contactId":J
    iget-object v7, p1, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mGroupsId:[J

    .line 168
    .local v7, "groupsId":[J
    iget v3, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 179
    sget-object v0, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v8

    .line 181
    goto :goto_0

    .line 170
    :pswitch_0
    aget-wide v3, v7, v8

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/contacts/multichoice/MembersProcessor;->optSingleMemberAdd(JJ)V

    goto :goto_1

    .line 173
    :pswitch_1
    aget-wide v3, v7, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/contacts/multichoice/MembersProcessor;->optSingleMemberDel(JJ)V

    goto :goto_1

    .line 176
    :pswitch_2
    aget-wide v3, v7, v0

    aget-wide v5, v7, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/multichoice/MembersProcessor;->optSingleMemberMov(JJJ)V

    goto :goto_1

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private optSingleMemberAdd(JJ)V
    .locals 8
    .param p1, "contactId"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 214
    const/4 v6, 0x0

    .line 216
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v7, "values":Landroid/content/ContentValues;
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_0
    throw v0

    :cond_1
    if-eqz v6, :cond_2

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_2
    return-void
.end method

.method private optSingleMemberDel(JJ)V
    .locals 5
    .param p1, "contactId"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "mimetype=\'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND data1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method private optSingleMemberMov(JJJ)V
    .locals 13
    .param p1, "contactId"    # J
    .param p3, "srcGroupId"    # J
    .param p5, "targetGroupId"    # J

    .prologue
    .line 185
    const/4 v8, 0x0

    .line 187
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = ? AND mimetype = \'vnd.android.cursor.item/group_membership\' AND data1 IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "deleteClause":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 197
    .local v10, "rawContactId":J
    iget-object v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v9, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v12, "values":Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "data1"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    iget-object v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v9    # "deleteClause":Ljava/lang/String;
    .end local v10    # "rawContactId":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_0

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_0
    throw v2

    .restart local v9    # "deleteClause":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_2
    return-void
.end method

.method private runInternal()V
    .locals 14

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MembersProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    const-string v1, "Cancelled before actually handing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v13, 0x1

    .line 119
    .local v13, "successful":Z
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 120
    .local v4, "totalItems":I
    const/4 v9, 0x0

    .line 121
    .local v9, "successfulItems":I
    const/4 v3, 0x0

    .line 123
    .local v3, "currentCount":I
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    .line 124
    .local v12, "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mCancelled:Z

    if-eqz v0, :cond_3

    .line 125
    sget-object v0, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    const-string v1, "[runInternal] mCancelled = true, break loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v12    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 143
    sget-object v0, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    const-string v1, "[runInternal] mCancelled = true, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v13, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    invoke-virtual {v0, v1, v13}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 146
    iget-object v5, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v6, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    iget v7, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    sub-int v10, v4, v9

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    goto :goto_0

    .line 128
    .restart local v12    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 129
    invoke-direct {p0, v12}, Lcom/android/contacts/multichoice/MembersProcessor;->actualOpOneMember(Lcom/android/contacts/multichoice/MultiChoiceRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v9, v9, 0x1

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    iget v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    iget-object v5, v12, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    const-string v1, "[runInternal] for loop cancelled = true, turn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v13, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    invoke-virtual {v0, v1, v13}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 136
    iget-object v5, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v6, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    iget v7, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    sub-int v10, v4, v9

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    goto :goto_0

    .line 151
    .end local v12    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    invoke-virtual {v0, v1, v13}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 152
    if-eqz v13, :cond_6

    .line 153
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    iget v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onFinished(III)V

    goto/16 :goto_0

    .line 155
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v6, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    iget v7, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    sub-int v10, v4, v9

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onFailed(IIIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 7
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 72
    sget-object v1, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    const-string v2, "MembersProcessor received cancel request!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    sget-object v1, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[cancel] mIsRunning: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mIsRunning:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-boolean v6, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mCancelled:Z

    .line 80
    iget-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mIsRunning:Z

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 82
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    iget v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    :goto_1
    move v0, v6

    .line 88
    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 85
    iget-object v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    iget v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mJobId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelling(II)V

    goto :goto_1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mType:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mDone:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 95
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mIsRunning:Z

    .line 96
    iget-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 97
    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MembersProcessor;->runInternal()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-enter p0

    .line 104
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mDone:Z

    .line 105
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 106
    iget-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 110
    :cond_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lcom/android/contacts/multichoice/MembersProcessor;->TAG:Ljava/lang/String;

    const-string v2, "RuntimeException thrown during delete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-enter p0

    .line 104
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mDone:Z

    .line 105
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    iget-object v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/contacts/multichoice/MembersProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 103
    :cond_1
    throw v1

    .line 105
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
