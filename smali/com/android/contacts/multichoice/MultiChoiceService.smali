.class public Lcom/android/contacts/multichoice/MultiChoiceService;
.super Landroid/app/Service;
.source "MultiChoiceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mCurrentJobId:I

.field private static final mRunningJobMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/contacts/common/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/contacts/common/CommonApplication;->getInstance()Lcom/android/contacts/common/CommonApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/CommonApplication;->SINGLE_TASK_SERVICE:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 48
    return-void
.end method

.method public static declared-synchronized isProcessing(I)Z
    .locals 6
    .param p0, "requestType"    # I

    .prologue
    const/4 v3, 0x0

    .line 187
    const-class v4, Lcom/android/contacts/multichoice/MultiChoiceService;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-gtz v5, :cond_1

    .line 200
    :cond_0
    :goto_0
    monitor-exit v4

    return v3

    .line 191
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 192
    sget-object v5, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/common/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 194
    .local v2, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ProcessorBase;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v5, p0, :cond_2

    .line 195
    const/4 v3, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/common/vcard/ProcessorBase;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 7

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 159
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 160
    .local v1, "jobId":Ljava/lang/Integer;
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 161
    .local v2, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ProcessorBase;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "jobId":Ljava/lang/Integer;
    .end local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 164
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "jobId":Ljava/lang/Integer;
    .restart local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v4, "Found unfinished job (id: %d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "jobId":Ljava/lang/Integer;
    .end local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :goto_1
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_2
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v4, "No unfinished job. Stop this service."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceService;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z
    .locals 4
    .param p1, "processor"    # Lcom/android/contacts/common/vcard/ProcessorBase;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executor service status: shutdown?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", terminated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    sget v2, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    const/4 v1, 0x1

    .line 84
    :goto_0
    monitor-exit p0

    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to execute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;->mJobId:I

    .line 133
    .local v0, "jobId":I
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received cancel request jobId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 137
    .local v2, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    if-eqz v2, :cond_1

    .line 138
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    .line 149
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to remove unknown jobId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v4, "Process \'com.android.contacts\' had been crashed ?!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 145
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "jobId":I
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized handleCopyRequest(Ljava/util/List;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Landroid/accounts/Account;)V
    .locals 6
    .param p2, "listener"    # Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;
    .param p3, "target"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;",
            "Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    .line 102
    new-instance v0, Lcom/android/contacts/multichoice/CopyProcessor;

    sget v4, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/multichoice/CopyProcessor;-><init>(Lcom/android/contacts/multichoice/MultiChoiceService;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Ljava/util/List;ILandroid/accounts/Account;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    if-eqz p2, :cond_0

    .line 104
    const/4 v1, 0x1

    sget v2, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    iget-object v5, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleDeleteRequest(Ljava/util/List;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;)V
    .locals 6
    .param p2, "listener"    # Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;",
            "Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    .line 92
    new-instance v0, Lcom/android/contacts/multichoice/DeleteProcessor;

    sget v1, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/contacts/multichoice/DeleteProcessor;-><init>(Lcom/android/contacts/multichoice/MultiChoiceService;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const/4 v1, 0x2

    sget v2, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    iget-object v5, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleFinishNotification(IZ)V
    .locals 5
    .param p1, "jobId"    # I
    .param p2, "successful"    # Z

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Received handle finish notification (id: %d). Result: %b"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    const-string v0, "success"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mRunningJobMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Tried to remove unknown job (id: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 177
    :cond_1
    :try_start_1
    const-string v0, "failure"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleMemsOpRequest(Ljava/util/List;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;)V
    .locals 11
    .param p2, "listener"    # Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;",
            "Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    const-wide/16 v2, 0x0

    .line 111
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    .line 112
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    iget-object v10, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mGroupsId:[J

    .line 113
    .local v10, "groupsId":[J
    const/4 v5, 0x0

    .line 114
    .local v5, "type":I
    const/4 v0, 0x1

    aget-wide v0, v10, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, v10, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 115
    const/4 v5, 0x0

    .line 123
    :goto_0
    new-instance v0, Lcom/android/contacts/multichoice/MembersProcessor;

    sget v4, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/multichoice/MembersProcessor;-><init>(Lcom/android/contacts/multichoice/MultiChoiceService;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Ljava/util/List;II)V

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    if-eqz p2, :cond_0

    .line 125
    sget v6, Lcom/android/contacts/multichoice/MultiChoiceService;->mCurrentJobId:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    iget-object v9, v0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    aget-wide v0, v10, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    aget-wide v0, v10, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 117
    const/4 v5, 0x4

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x1

    aget-wide v0, v10, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    aget-wide v0, v10, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 119
    const/4 v5, 0x5

    goto :goto_0

    .line 121
    :cond_3
    const/4 v5, 0x3

    goto :goto_0

    .line 111
    .end local v5    # "type":I
    .end local v10    # "groupsId":[J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceService;->mBinder:Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    new-instance v0, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;-><init>(Lcom/android/contacts/multichoice/MultiChoiceService;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceService;->mBinder:Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

    .line 59
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Multi-choice service is being created."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method
