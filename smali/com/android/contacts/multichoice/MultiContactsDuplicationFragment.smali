.class public Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;
.super Lcom/android/contacts/multichoice/MultiChoiceFragment;
.source "MultiContactsDuplicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$1;,
        Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;,
        Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountDst:Landroid/accounts/Account;

.field private mAccountSrc:Landroid/accounts/Account;

.field private mConnection:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

.field private volatile mEntryCount:Ljava/util/concurrent/CountDownLatch;

.field private mHandler:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    .line 41
    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    .line 43
    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

    .line 44
    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

    .line 47
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mRetryCount:I

    .line 168
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

    return-object v0
.end method

.method static synthetic access$310(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mRetryCount:I

    return v0
.end method

.method private handleCopy()V
    .locals 8

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->startCopyService()V

    .line 120
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v5, :cond_0

    .line 121
    new-instance v5, Landroid/os/HandlerThread;

    sget-object v6, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v5, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;-><init>(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

    .line 126
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 129
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "displayName":Ljava/lang/String;
    new-instance v5, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v1}, Lcom/android/contacts/multichoice/MultiChoiceRequest;-><init>(JLjava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "contactId":Ljava/lang/String;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    :goto_1
    return-void

    .line 137
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7, v3}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->configureAdapter()V

    .line 85
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/android/contacts/common/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 71
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    instance-of v1, v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    move-object v1, v0

    .line 73
    check-cast v1, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setStrictSearchMode(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    const-string v1, "com.android.sim"

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 76
    check-cast v1, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setForceWithNumber(Z)V

    .line 79
    :cond_0
    return-object v0
.end method

.method destroySelf()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 217
    :cond_0
    return-void
.end method

.method protected isAccountFilterClickable()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    .line 58
    const-string v1, "to_account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;

    .line 60
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mEntryCount:Ljava/util/concurrent/CountDownLatch;

    .line 62
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, v3}, Lcom/android/contacts/common/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 66
    :cond_0
    return-void
.end method

.method public onOptionAction()V
    .locals 4

    .prologue
    .line 99
    sget-object v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionAction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getActionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckedItems.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901ad

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mEntryCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mEntryCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 114
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->handleCopy()V

    goto :goto_0

    .line 110
    :cond_1
    sget-object v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;

    const-string v1, "Avoid re-entrance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startCopyService()V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;-><init>(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

    .line 205
    sget-object v0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;

    const-string v1, "Bind to MultiChoiceService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 210
    return-void
.end method
