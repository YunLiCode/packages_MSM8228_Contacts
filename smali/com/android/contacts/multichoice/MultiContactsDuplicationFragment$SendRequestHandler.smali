.class Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;
.super Landroid/os/Handler;
.source "MultiContactsDuplicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    .line 173
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0xc8

    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 197
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 199
    :goto_0
    return-void

    .line 181
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    # getter for: Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mConnection:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;
    invoke-static {v0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->access$200(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$CopyRequestConnection;->sendCopyRequest(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    # operator-- for: Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->mRetryCount:I
    invoke-static {v0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->access$310(Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment$SendRequestHandler;->this$0:Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;->destroySelf()V

    goto :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
