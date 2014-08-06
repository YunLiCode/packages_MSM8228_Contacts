.class Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;
.super Ljava/lang/Object;
.source "MultiContactsDeletionFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteRequestConnection"
.end annotation


# instance fields
.field private mDeleteService:Lcom/android/contacts/multichoice/MultiChoiceService;

.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;->this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;
    .param p2, "x1"    # Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;-><init>(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 77
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    check-cast p2, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;->getService()Lcom/android/contacts/multichoice/MultiChoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;->mDeleteService:Lcom/android/contacts/multichoice/MultiChoiceService;

    .line 79
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 83
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public sendDeleteRequest(Ljava/util/List;)Z
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
    .line 66
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send a delete request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;->mDeleteService:Lcom/android/contacts/multichoice/MultiChoiceService;

    if-nez v0, :cond_0

    .line 68
    # getter for: Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDeleteService is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;->mDeleteService:Lcom/android/contacts/multichoice/MultiChoiceService;

    new-instance v1, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;->mDeleteService:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;-><init>(Lcom/android/contacts/multichoice/MultiChoiceService;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleDeleteRequest(Ljava/util/List;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_0
.end method
