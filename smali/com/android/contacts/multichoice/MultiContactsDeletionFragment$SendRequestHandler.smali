.class Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;
.super Landroid/os/Handler;
.source "MultiContactsDeletionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0xc8

    .line 98
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    :goto_0
    return-void

    .line 100
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    # getter for: Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;
    invoke-static {v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->access$100(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$DeleteRequestConnection;->sendDeleteRequest(Ljava/util/List;)Z

    move-result v0

    .line 102
    .local v0, "successful":Z
    if-nez v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    # operator-- for: Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->mRetryCount:I
    invoke-static {v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->access$210(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 115
    .end local v0    # "successful":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->destroySelf()V

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
