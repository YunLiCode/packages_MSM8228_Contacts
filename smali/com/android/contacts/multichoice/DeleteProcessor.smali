.class public Lcom/android/contacts/multichoice/DeleteProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "DeleteProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsAirPlaneModeOn:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

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

.field private mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/contacts/multichoice/DeleteProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceService;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Ljava/util/List;I)V
    .locals 3
    .param p1, "service"    # Lcom/android/contacts/multichoice/MultiChoiceService;
    .param p2, "listener"    # Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;
    .param p4, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/multichoice/MultiChoiceService;",
            "Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mCancelled:Z

    .line 40
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mDone:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mIsRunning:Z

    .line 255
    new-instance v1, Lcom/android/contacts/multichoice/DeleteProcessor$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/multichoice/DeleteProcessor$1;-><init>(Lcom/android/contacts/multichoice/DeleteProcessor;)V

    iput-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    .line 53
    iput-object p2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    .line 54
    iput-object p3, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mRequestList:Ljava/util/List;

    .line 55
    iput p4, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    .line 56
    invoke-virtual {p1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 57
    invoke-direct {p0}, Lcom/android/contacts/multichoice/DeleteProcessor;->getAirPlaneMode()V

    .line 58
    new-instance v1, Lcom/android/contacts/common/util/SimContactsOperation;

    invoke-direct {v1, p1}, Lcom/android/contacts/common/util/SimContactsOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    .line 60
    invoke-virtual {p1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 62
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    sget-object v2, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/multichoice/DeleteProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/multichoice/DeleteProcessor;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/contacts/multichoice/DeleteProcessor;->getAirPlaneMode()V

    return-void
.end method

.method private actualBatchDelete(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "contactIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v5, "[actualBatchDelete]"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    .line 220
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 223
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    .end local v2    # "id":Ljava/lang/Long;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 226
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    sget-object v4, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[actualBatchDelete] contactIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v4, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "deleteCount":I
    sget-object v4, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[actualBatchDelete] deleteCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getAirPlaneMode()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mIsAirPlaneModeOn:Z

    .line 267
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    return-void
.end method

.method private runInternal()V
    .locals 18

    .prologue
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/multichoice/DeleteProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Cancelled before actually handing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 132
    :cond_0
    const/16 v16, 0x1

    .line 133
    .local v16, "successful":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 134
    .local v5, "totalItems":I
    const/4 v10, 0x0

    .line 135
    .local v10, "successfulItems":I
    const/4 v4, 0x0

    .line 137
    .local v4, "currentCount":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v12, "contactIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    .line 139
    .local v14, "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mCancelled:Z

    if-eqz v1, :cond_4

    .line 140
    sget-object v1, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v2, "[runInternal] mCancelled = true, break loop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v14    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 192
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/multichoice/DeleteProcessor;->actualBatchDelete(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v10, v1

    .line 193
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mCancelled:Z

    if-eqz v1, :cond_a

    .line 197
    sget-object v1, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v2, "[runInternal] mCancelled = true, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v16, 0x0

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 200
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    sub-int v11, v5, v10

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    goto :goto_0

    .line 143
    .restart local v14    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    iget-object v6, v14, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V

    .line 148
    iget-object v1, v14, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_5

    .line 149
    iget-object v1, v14, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mAccount:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Landroid/accounts/Account;)I

    move-result v15

    .line 155
    .local v15, "subscription":I
    :goto_2
    const/4 v1, -0x1

    if-eq v15, v1, :cond_7

    .line 156
    sget-boolean v1, Lcom/android/contacts/multichoice/DeleteProcessor;->mIsAirPlaneModeOn:Z

    if-eqz v1, :cond_6

    .line 157
    sget-object v1, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v2, "[runInternal] is not ready for deleting card contact"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v16, 0x0

    .line 159
    goto :goto_1

    .line 151
    .end local v15    # "subscription":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget-wide v2, v14, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Landroid/content/Context;J)I

    move-result v15

    .restart local v15    # "subscription":I
    goto :goto_2

    .line 162
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget-wide v2, v14, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/SimContactsOperation;->getSimAccountValues(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v17

    .line 164
    .local v17, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mSimContactsOperation:Lcom/android/contacts/common/util/SimContactsOperation;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v15}, Lcom/android/contacts/common/util/SimContactsOperation;->delete(Landroid/content/ContentValues;I)I

    move-result v1

    if-gtz v1, :cond_7

    .line 165
    sget-object v1, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[runInternal] delete card("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") contact failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v16, 0x0

    .line 167
    goto/16 :goto_1

    .line 171
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_7
    iget-wide v1, v14, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_8

    .line 173
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/multichoice/DeleteProcessor;->actualBatchDelete(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v10, v1

    .line 174
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 177
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v2, "[runInternal] for loop cancelled = true, turn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/multichoice/DeleteProcessor;->actualBatchDelete(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v10, v1

    .line 181
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 183
    :cond_9
    const/16 v16, 0x0

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    sub-int v11, v5, v10

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    goto/16 :goto_0

    .line 205
    .end local v14    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    .end local v15    # "subscription":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 206
    if-eqz v16, :cond_b

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onFinished(III)V

    goto/16 :goto_0

    .line 209
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    sub-int v11, v5, v10

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onFailed(IIIII)V

    goto/16 :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 7
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 84
    sget-object v2, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v4, "DeleteProcessor received cancel request!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mDone:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mCancelled:Z

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    sget-object v2, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cancel] mIsRunning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mIsRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-boolean v6, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mCancelled:Z

    .line 92
    iget-boolean v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mIsRunning:Z

    if-nez v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v4, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    invoke-virtual {v2, v4, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 94
    iget-object v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelled(IIIII)V

    :goto_1
    move v0, v6

    .line 100
    goto :goto_0

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    iget v3, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    invoke-virtual {v2, v3, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 97
    iget-object v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mListener:Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mJobId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onCancelling(II)V

    goto :goto_1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x2

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mDone:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 107
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mIsRunning:Z

    .line 108
    iget-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 109
    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/contacts/multichoice/DeleteProcessor;->registerReceiver()V

    .line 111
    invoke-direct {p0}, Lcom/android/contacts/multichoice/DeleteProcessor;->runInternal()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-enter p0

    .line 117
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mDone:Z

    .line 118
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 119
    invoke-direct {p0}, Lcom/android/contacts/multichoice/DeleteProcessor;->unregisterReceiver()V

    .line 120
    iget-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 124
    :cond_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lcom/android/contacts/multichoice/DeleteProcessor;->TAG:Ljava/lang/String;

    const-string v2, "RuntimeException thrown during delete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-enter p0

    .line 117
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mDone:Z

    .line 118
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    invoke-direct {p0}, Lcom/android/contacts/multichoice/DeleteProcessor;->unregisterReceiver()V

    .line 120
    iget-object v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/contacts/multichoice/DeleteProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 116
    :cond_1
    throw v1

    .line 118
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
