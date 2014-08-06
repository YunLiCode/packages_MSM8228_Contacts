.class public Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;
.super Lcom/android/contacts/multichoice/MultiChoiceFragment;
.source "MultiContactsDeletionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$1;,
        Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;,
        Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;,
        Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;

.field private mHandler:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;-><init>()V

    .line 42
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mRetryCount:I

    .line 123
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;

    return-object v0
.end method

.method static synthetic access$210(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mRetryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->handleDelete()V

    return-void
.end method

.method private handleDelete()V
    .locals 11

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->startDeleteService()V

    .line 151
    iget-object v8, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v8, :cond_0

    .line 152
    new-instance v8, Landroid/os/HandlerThread;

    sget-object v9, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v8, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v8, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;

    iget-object v9, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;-><init>(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;

    .line 157
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v6, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "contactId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 160
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "display_name"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "displayName":Ljava/lang/String;
    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "accountName":Ljava/lang/String;
    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "accountType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v0, "account":Landroid/accounts/Account;
    :goto_1
    new-instance v8, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10, v4, v0}, Lcom/android/contacts/multichoice/MultiChoiceRequest;-><init>(JLjava/lang/String;Landroid/accounts/Account;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 169
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "contactId":Ljava/lang/String;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 170
    iget-object v8, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;

    iget-object v9, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;

    const/16 v10, 0xc8

    invoke-virtual {v9, v10}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    :goto_2
    return-void

    .line 172
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;

    iget-object v9, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mHandler:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;

    const/16 v10, 0x64

    invoke-virtual {v9, v10, v6}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method


# virtual methods
.method destroySelf()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 190
    :cond_0
    return-void
.end method

.method public onOptionAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    sget-object v1, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionAction("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getActionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v1, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckedItems.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getCheckedItems()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0901ad

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;

    invoke-direct {v0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;-><init>()V

    .line 56
    .local v0, "dialog":Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;
    invoke-virtual {v0, p0, v4}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method startDeleteService()V
    .locals 4

    .prologue
    .line 177
    new-instance v0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;-><init>(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;

    .line 178
    sget-object v0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;

    const-string v1, "Bind to MultiChoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 183
    return-void
.end method
