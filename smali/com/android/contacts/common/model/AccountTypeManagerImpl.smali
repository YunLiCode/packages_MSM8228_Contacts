.class Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/common/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAMPLE_CONTACT_URI:Landroid/net/Uri;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckFilterValidityRunnable:Ljava/lang/Runnable;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private final mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 210
    const-wide/16 v0, 0x1

    const-string v2, "xxx"

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 266
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;

    invoke-direct {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 308
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManager;-><init>()V

    .line 218
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 219
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 220
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 221
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 222
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 231
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 237
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 246
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    .line 253
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 309
    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 310
    new-instance v2, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v2, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 312
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 314
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 315
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 316
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 330
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 350
    invoke-static {v5, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .local p3, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 579
    .local v0, "accountsForType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-nez v0, :cond_0

    .line 580
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 582
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    return-void
.end method

.method static findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 781
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 782
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v1

    .line 783
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType;

    .line 784
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v4, :cond_0

    .line 785
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 787
    const-string v5, "AccountTypeManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 788
    const-string v5, "AccountTypeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inviteClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 792
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 795
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .param p0, "auths"    # [Landroid/accounts/AuthenticatorDescription;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 593
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v1

    .line 592
    .restart local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getAllInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 810
    .local v2, "allInvitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 811
    sget-object v8, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 844
    :goto_0
    return-object v8

    .line 814
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 815
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 817
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 818
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 819
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 822
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    sget-object v8, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Lcom/android/contacts/common/MoreContactUtils;->getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 824
    .local v4, "invitableIntent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 825
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 828
    :cond_2
    const/high16 v8, 0x10000

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 830
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_3

    .line 833
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 839
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 840
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 844
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v4    # "invitableIntent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    goto :goto_0
.end method

.method private getAllInvitableAccountTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 737
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method

.method private isSimStateDeactived(Landroid/accounts/Account;)Z
    .locals 3
    .param p1, "accunt"    # Landroid/accounts/Account;

    .prologue
    .line 635
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 636
    .local v0, "subscription":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    :cond_0
    const/4 v1, 0x0

    .line 640
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isSimDeactivated(I)Z

    move-result v1

    goto :goto_0
.end method

.method private varargs saveAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p2, "saveAccountTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 665
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 666
    .local v0, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    if-eqz p2, :cond_0

    array-length v7, p2

    if-lez v7, :cond_0

    .line 667
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimStateDeactived(Landroid/accounts/Account;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 671
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 672
    .local v6, "type":Ljava/lang/String;
    if-eqz v6, :cond_1

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 673
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "type":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private varargs trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p2, "trimAccountTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 646
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 647
    .local v0, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    if-eqz p2, :cond_2

    array-length v7, p2

    if-lez v7, :cond_2

    .line 648
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v1, v3

    .line 649
    .local v6, "type":Ljava/lang/String;
    if-eqz v6, :cond_1

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 648
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 654
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "type":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimStateDeactived(Landroid/accounts/Account;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 657
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_3
    return-object v5
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 376
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 381
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "accountTypeWithDataSet"    # Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 724
    monitor-enter p0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 726
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v0, :cond_0

    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    goto :goto_0

    .line 727
    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 850
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 851
    .local v0, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    monitor-enter p0

    .line 852
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType;

    .line 853
    .local v2, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 857
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 1
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getAccounts(ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts(ZI)Ljava/util/List;
    .locals 6
    .param p1, "contactWritableOnly"    # Z
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 611
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 612
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 613
    .local v0, "isAirMode":Z
    packed-switch p2, :pswitch_data_0

    .line 631
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_0
    return-object v1

    .line 615
    :pswitch_0
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_1
    new-array v3, v5, [Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "com.android.sim"

    :goto_2
    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 619
    :pswitch_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.android.sim"

    aput-object v3, v2, v4

    const-string v3, "com.android.localphone"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_3

    .line 623
    :pswitch_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_4
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.sim"

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_4

    .line 627
    :pswitch_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_5
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.sim"

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->saveAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_5

    .line 631
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 686
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 4
    .param p1, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 697
    const/4 v0, 0x0

    .line 700
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 704
    :cond_0
    if-nez v0, :cond_1

    .line 706
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 709
    :cond_1
    if-nez v0, :cond_2

    .line 710
    const-string v1, "AccountTypeManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 711
    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_2
    return-object v0
.end method

.method public getUsableInvitableAccountTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 756
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 758
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 769
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->getCachedValue()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected loadAccountsInBackground()V
    .locals 41

    .prologue
    .line 394
    const-string v37, "ContactsPerf"

    const/16 v38, 0x3

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 395
    const-string v37, "ContactsPerf"

    const-string v38, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    new-instance v35, Landroid/util/TimingLogger;

    const-string v37, "AccountTypeManager"

    const-string v38, "loadAccountsInBackground"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v35, "timings":Landroid/util/TimingLogger;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v28

    .line 399
    .local v28, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 402
    .local v30, "startTimeWall":J
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 408
    .local v7, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 410
    .local v6, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 411
    .local v10, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 412
    .local v15, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 413
    .local v24, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v23

    .line 415
    .local v23, "extensionPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 416
    .local v11, "am":Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v16

    .line 419
    .local v16, "cs":Landroid/content/IContentService;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v34

    .line 420
    .local v34, "syncs":[Landroid/content/SyncAdapterType;
    invoke-virtual {v11}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 423
    .local v14, "auths":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v12, v34

    .local v12, "arr$":[Landroid/content/SyncAdapterType;
    array-length v0, v12

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget-object v32, v12, v25

    .line 424
    .local v32, "sync":Landroid/content/SyncAdapterType;
    const-string v37, "com.android.contacts"

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 423
    :cond_1
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 431
    :cond_2
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 432
    .local v36, "type":Ljava/lang/String;
    move-object/from16 v0, v36

    invoke-static {v14, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    .line 433
    .local v13, "auth":Landroid/accounts/AuthenticatorDescription;
    if-nez v13, :cond_6

    .line 434
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "No authenticator found for type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", ignoring it."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 502
    .end local v12    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v13    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v14    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v25    # "i$":I
    .end local v27    # "len$":I
    .end local v32    # "sync":Landroid/content/SyncAdapterType;
    .end local v34    # "syncs":[Landroid/content/SyncAdapterType;
    .end local v36    # "type":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 503
    .local v17, "e":Landroid/os/RemoteException;
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Problem loading accounts: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v37, "Loaded account types"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v9

    .line 509
    .local v9, "accounts":[Landroid/accounts/Account;
    move-object v12, v9

    .local v12, "arr$":[Landroid/accounts/Account;
    array-length v0, v12

    move/from16 v27, v0

    .restart local v27    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    move/from16 v26, v25

    .end local v25    # "i$":I
    .local v26, "i$":I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    aget-object v3, v12, v26

    .line 510
    .local v3, "account":Landroid/accounts/Account;
    const/16 v33, 0x0

    .line 512
    .local v33, "syncable":Z
    :try_start_1
    const-string v37, "com.android.contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v3, v1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    if-lez v37, :cond_10

    const/16 v33, 0x1

    .line 517
    :goto_3
    if-eqz v33, :cond_11

    .line 518
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 519
    .local v5, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-eqz v5, :cond_11

    .line 522
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v26    # "i$":I
    .local v25, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_11

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType;

    .line 523
    .local v4, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v8, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v8, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v8, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 527
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_5
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v37

    if-eqz v37, :cond_4

    .line 530
    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 439
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v8    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v33    # "syncable":Z
    .local v12, "arr$":[Landroid/content/SyncAdapterType;
    .restart local v13    # "auth":Landroid/accounts/AuthenticatorDescription;
    .restart local v14    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .local v25, "i$":I
    .restart local v32    # "sync":Landroid/content/SyncAdapterType;
    .restart local v34    # "syncs":[Landroid/content/SyncAdapterType;
    .restart local v36    # "type":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v37, "com.google"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 440
    new-instance v4, Lcom/android/contacts/common/model/account/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/common/model/account/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    .restart local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :goto_5
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->isInitialized()Z

    move-result v37

    if-nez v37, :cond_b

    .line 454
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->isEmbedded()Z

    move-result v37

    if-eqz v37, :cond_1

    .line 455
    new-instance v37, Ljava/lang/IllegalStateException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Problem initializing embedded type "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 441
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_7
    invoke-static/range {v36 .. v36}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_8

    .line 442
    new-instance v4, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_5

    .line 443
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_8
    const-string v37, "com.android.sim"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_9

    .line 444
    new-instance v4, Lcom/android/contacts/common/model/account/SimAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/common/model/account/SimAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_5

    .line 445
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_9
    const-string v37, "com.android.localphone"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 446
    new-instance v4, Lcom/android/contacts/common/model/account/PhoneAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/common/model/account/PhoneAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_5

    .line 449
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_a
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering external account type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", packageName="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v4, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .restart local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_5

    .line 463
    :cond_b
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iput-object v0, v4, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 464
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v4, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 465
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v4, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 467
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 471
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 475
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v13    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v32    # "sync":Landroid/content/SyncAdapterType;
    .end local v36    # "type":Ljava/lang/String;
    :cond_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_3

    .line 476
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " extension packages"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 478
    .local v22, "extensionPackage":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    move/from16 v2, v38

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 480
    .local v4, "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->isInitialized()Z

    move-result v37

    if-eqz v37, :cond_d

    .line 484
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->hasContactsMetadata()Z

    move-result v37

    if-nez v37, :cond_e

    .line 485
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Skipping extension package "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " because"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 489
    :cond_e
    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 490
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Skipping extension package "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " because"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " attribute"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 495
    :cond_f
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering extension package account type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", dataSet="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", packageName="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 512
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    .end local v14    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v22    # "extensionPackage":Ljava/lang/String;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v34    # "syncs":[Landroid/content/SyncAdapterType;
    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v9    # "accounts":[Landroid/accounts/Account;
    .local v12, "arr$":[Landroid/accounts/Account;
    .restart local v26    # "i$":I
    .restart local v33    # "syncable":Z
    :cond_10
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 513
    :catch_1
    move-exception v17

    .line 514
    .restart local v17    # "e":Landroid/os/RemoteException;
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Cannot obtain sync flag for account: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 509
    .end local v17    # "e":Landroid/os/RemoteException;
    .end local v26    # "i$":I
    :cond_11
    add-int/lit8 v25, v26, 0x1

    .local v25, "i$":I
    move/from16 v26, v25

    .end local v25    # "i$":I
    .restart local v26    # "i$":I
    goto/16 :goto_2

    .line 537
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v33    # "syncable":Z
    :cond_12
    sget-object v37, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v37

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 538
    sget-object v37, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    sget-object v37, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 541
    const-string v37, "Loaded accounts"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 543
    monitor-enter p0

    .line 544
    :try_start_3
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 545
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 546
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 547
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-static {v0, v10, v7}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 550
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    invoke-virtual/range {v35 .. v35}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 554
    .local v20, "endTimeWall":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    .line 556
    .local v18, "endTime":J
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Loaded meta-data for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " account types, "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " accounts in "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sub-long v39, v20, v30

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms(wall) "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sub-long v39, v18, v28

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms(cpu)"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v37, v0

    if-eqz v37, :cond_13

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 562
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 564
    :cond_13
    const-string v37, "ContactsPerf"

    const/16 v38, 0x3

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 565
    const-string v37, "ContactsPerf"

    const-string v38, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void

    .line 550
    .end local v18    # "endTime":J
    .end local v20    # "endTimeWall":J
    :catchall_0
    move-exception v37

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v37
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 368
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 358
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    return-void
.end method
