.class Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;
.super Ljava/lang/Object;
.source "MultiContactsDuplicationFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/android/contacts/multichoice/MultiChoiceService;

.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;->this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;
    .param p2, "x1"    # Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;-><init>(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 157
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    check-cast p2, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;->getService()Lcom/android/contacts/multichoice/MultiChoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    .line 159
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 163
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from MultiChoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public sendCopyRequest(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/multichoice/MultiChoiceRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send an copy request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    if-nez v0, :cond_0

    .line 147
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mService is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    new-instance v1, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;-><init>(Lcom/android/contacts/multichoice/MultiChoiceService;)V

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;->this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    # getter for: Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->access$100(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleCopyRequest(Ljava/util/List;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;Landroid/accounts/Account;)V

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method
