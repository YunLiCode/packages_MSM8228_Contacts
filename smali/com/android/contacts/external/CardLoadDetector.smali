.class public Lcom/android/contacts/external/CardLoadDetector;
.super Landroid/app/IntentService;
.source "CardLoadDetector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mCheckTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/contacts/external/CardLoadDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/external/CardLoadDetector;->TAG:Ljava/lang/String;

    .line 24
    const-class v0, Lcom/android/contacts/external/CardLoadDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/external/CardLoadDetector;->LOG_TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/android/contacts/external/CardLoadDetector;->mCheckTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/contacts/external/CardLoadDetector;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/external/CardLoadDetector;->setIntentRedelivery(Z)V

    .line 34
    return-void
.end method

.method public static detectLoadState(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.ACTION_REFRESH_CARD_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    const-class v1, Lcom/android/contacts/external/CardLoadDetector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method

.method private hasSameNumberOfContacts(I)Z
    .locals 10
    .param p1, "subscription"    # I

    .prologue
    const/4 v9, 0x0

    .line 108
    const-string v0, "com.android.sim"

    invoke-static {p1}, Lcom/android/contacts/common/util/SimContactsOperation;->getAccountNameBySub(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getContactCountByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 111
    .local v8, "dbCount":I
    const/4 v7, 0x0

    .line 113
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/external/CardLoadDetector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/android/contacts/common/util/SimContactsOperation;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 114
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 116
    .local v6, "cardCount":I
    :goto_0
    if-eqz v7, :cond_0

    .line 117
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    sget-object v0, Lcom/android/contacts/external/CardLoadDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSameNumberOfContacts-> dbCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-ne v8, v6, :cond_1

    const/4 v9, 0x1

    :cond_1
    return v9

    .end local v6    # "cardCount":I
    :cond_2
    move v6, v9

    .line 114
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 117
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_3
    throw v0
.end method

.method private isCardNeedRefresh(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "needRefresh":Z
    invoke-static {p0, p1}, Lcom/android/contacts/external/CardLoadReceiver;->getCardLoadState(Landroid/content/Context;I)I

    move-result v0

    .line 78
    .local v0, "cardState":I
    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/contacts/external/CardLoadDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cardState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needRefresh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1

    .line 81
    :pswitch_0
    invoke-static {p1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :pswitch_1
    const/4 v1, 0x1

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/external/CardLoadDetector;->hasSameNumberOfContacts(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendCardRefreshBroadcast(I)V
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 100
    sget-object v1, Lcom/android/contacts/external/CardLoadDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCardRefreshBroadcast("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.ACTION_REFRESH_CARD_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v1, "ss"

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/contacts/external/CardLoadDetector;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    if-nez p1, :cond_1

    .line 40
    sget-object v1, Lcom/android/contacts/external/CardLoadDetector;->TAG:Ljava/lang/String;

    const-string v2, "May be a malicious attack..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/contacts/external/CardLoadDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v1, "com.android.contacts.action.ACTION_REFRESH_CARD_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget v1, Lcom/android/contacts/external/CardLoadDetector;->mCheckTimes:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget v3, Lcom/android/contacts/external/CardLoadDetector;->mCheckTimes:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0x1f40

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasAnyEnabledIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0, v5}, Lcom/android/contacts/external/CardLoadDetector;->isCardNeedRefresh(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-direct {p0, v5}, Lcom/android/contacts/external/CardLoadDetector;->sendCardRefreshBroadcast(I)V

    .line 60
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v6}, Lcom/android/contacts/external/CardLoadDetector;->isCardNeedRefresh(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-direct {p0, v6}, Lcom/android/contacts/external/CardLoadDetector;->sendCardRefreshBroadcast(I)V

    .line 64
    :cond_3
    sget v1, Lcom/android/contacts/external/CardLoadDetector;->mCheckTimes:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/contacts/external/CardLoadDetector;->mCheckTimes:I

    goto :goto_0
.end method
