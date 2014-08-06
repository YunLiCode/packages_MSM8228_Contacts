.class Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;
.super Landroid/os/Handler;
.source "GroupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    .line 720
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 721
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0xc8

    .line 726
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 751
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 728
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mConnection:Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$1800(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;->sendMemsOpRequest(Ljava/util/List;)Z

    move-result v0

    .line 730
    .local v0, "successful":Z
    if-nez v0, :cond_2

    .line 731
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # operator-- for: Lcom/android/contacts/group/GroupDetailFragment;->mRetryCount:I
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$1910(Lcom/android/contacts/group/GroupDetailFragment;)I

    move-result v1

    if-lez v1, :cond_1

    .line 732
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 738
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 744
    .end local v0    # "successful":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mConnection:Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$1800(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mConnection:Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$1800(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 726
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
