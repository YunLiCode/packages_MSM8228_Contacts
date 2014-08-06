.class public Lcom/android/contacts/common/list/ProviderStatusWatcher;
.super Landroid/database/ContentObserver;
.source "ProviderStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;,
        Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;,
        Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/contacts/common/list/ProviderStatusWatcher;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

.field private mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

.field private final mSignal:Ljava/lang/Object;

.field private final mStartLoadingRunnable:Ljava/lang/Runnable;

.field private mStartRequestedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "ProviderStatusWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/android/contacts/common/list/ProviderStatusWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher$1;-><init>(Lcom/android/contacts/common/list/ProviderStatusWatcher;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ProviderStatusWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->startLoading()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/ProviderStatusWatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/common/list/ProviderStatusWatcher;Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;)Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ProviderStatusWatcher;
    .param p1, "x1"    # Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/ProviderStatusWatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/list/ProviderStatusWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->notifyListeners()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/contacts/common/list/ProviderStatusWatcher;Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;)Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ProviderStatusWatcher;
    .param p1, "x1"    # Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ProviderStatusWatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-class v1, Lcom/android/contacts/common/list/ProviderStatusWatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/common/list/ProviderStatusWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isStarted()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartRequestedCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 5

    .prologue
    .line 123
    sget-boolean v2, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "ProviderStatusWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;

    .line 128
    .local v1, "listener":Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;
    invoke-interface {v1}, Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;->onProviderStatusChange()V

    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;
    :cond_1
    return-void
.end method

.method public static retryUpgrade(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    const-string v1, "ProviderStatusWatcher"

    const-string v2, "retryUpgrade"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Lcom/android/contacts/common/list/ProviderStatusWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher$2;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method

.method private startLoading()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-boolean v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "ProviderStatusWatcher"

    const-string v1, "Start loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    new-instance v0, Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;-><init>(Lcom/android/contacts/common/list/ProviderStatusWatcher;Lcom/android/contacts/common/list/ProviderStatusWatcher$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

    .line 230
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private waitForLoaded()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/common/list/ProviderStatusWatcher$LoaderTask;

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->startLoading()V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 218
    :cond_1
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public getProviderStatus()Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;
    .locals 3

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->waitForLoaded()V

    .line 198
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;-><init>(ILjava/lang/String;)V

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 285
    sget-boolean v2, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 286
    const-string v2, "ProviderStatusWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v2, "ProviderStatusWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;

    .line 292
    .local v1, "listener":Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;
    invoke-interface {v1}, Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;->onAnyStautsChange()V

    goto :goto_0

    .line 296
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;
    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    :goto_1
    return-void

    .line 301
    :cond_2
    const-string v2, "ProviderStatusWatcher"

    const-string v3, "Provider status changed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v2, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public removeListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "ProviderStatusWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() mStartRequestedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartRequestedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartRequestedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartRequestedCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->startLoading()V

    .line 150
    sget-boolean v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "ProviderStatusWatcher"

    const-string v1, "Start observing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "ProviderStatusWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() mStartRequestedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartRequestedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    const-string v0, "ProviderStatusWatcher"

    const-string v1, "Already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartRequestedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartRequestedCount:I

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 172
    sget-boolean v0, Lcom/android/contacts/common/list/ProviderStatusWatcher;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "ProviderStatusWatcher"

    const-string v1, "Stop observing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
