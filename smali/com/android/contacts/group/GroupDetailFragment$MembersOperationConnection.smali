.class Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MembersOperationConnection"
.end annotation


# instance fields
.field private mMembersOperationService:Lcom/android/contacts/multichoice/MultiChoiceService;

.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/group/GroupDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/group/GroupDetailFragment$1;

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 772
    const-string v0, "GroupDetailFragment"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    check-cast p2, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;->getService()Lcom/android/contacts/multichoice/MultiChoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;->mMembersOperationService:Lcom/android/contacts/multichoice/MultiChoiceService;

    .line 774
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 778
    const-string v0, "GroupDetailFragment"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method public sendMemsOpRequest(Ljava/util/List;)Z
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
    .line 760
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    const-string v0, "GroupDetailFragment"

    const-string v1, "Send a delete request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;->mMembersOperationService:Lcom/android/contacts/multichoice/MultiChoiceService;

    if-nez v0, :cond_0

    .line 762
    const-string v0, "GroupDetailFragment"

    const-string v1, "mDeleteService is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x0

    .line 767
    :goto_0
    return v0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;->mMembersOperationService:Lcom/android/contacts/multichoice/MultiChoiceService;

    new-instance v1, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;->mMembersOperationService:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;-><init>(Lcom/android/contacts/multichoice/MultiChoiceService;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleMemsOpRequest(Ljava/util/List;Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;)V

    .line 767
    const/4 v0, 0x1

    goto :goto_0
.end method
