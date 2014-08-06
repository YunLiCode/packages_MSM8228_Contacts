.class public abstract Lcom/android/contacts/common/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# static fields
.field private static mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private static final mInitializationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v1, Lcom/android/contacts/common/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 108
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setInstanceForTest(Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 2
    .param p0, "mockManager"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 123
    sget-object v1, Lcom/android/contacts/common/model/AccountTypeManager;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    sput-object p0, Lcom/android/contacts/common/model/AccountTypeManager;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public contains(Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "contactWritableOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 189
    .local v0, "account_2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const/4 v2, 0x1

    .line 193
    .end local v0    # "account_2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return v2
.end method

.method public abstract getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
.end method

.method public final getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1, p2}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAccountTypes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupWritableAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1
    .param p1, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getUsableInvitableAccountTypes()Ljava/util/Map;
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
.end method
