.class final Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;
.super Ljava/lang/Thread;
.source "SameNameJoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/SameNameJoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommitJoinThread"
.end annotation


# instance fields
.field public canceled:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/contacts/activities/SameNameJoinActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/SameNameJoinActivity;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->canceled:Z

    .line 437
    invoke-virtual {p1}, Lcom/android/contacts/activities/SameNameJoinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->mContext:Landroid/content/Context;

    .line 438
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 440
    iget-object v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$200(Lcom/android/contacts/activities/SameNameJoinActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 441
    .local v7, "total":I
    const/4 v1, 0x0

    .line 442
    .local v1, "current":I
    const-string v8, "SameNameJoinActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start merge "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$200(Lcom/android/contacts/activities/SameNameJoinActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/SameNameList;

    .line 444
    .local v6, "nameList":Lcom/android/contacts/model/SameNameList;
    const-string v8, "SameNameJoinActivity"

    invoke-virtual {v6}, Lcom/android/contacts/model/SameNameList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-boolean v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->canceled:Z

    if-nez v8, :cond_0

    .line 446
    invoke-virtual {v6}, Lcom/android/contacts/model/SameNameList;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "displayName":Ljava/lang/String;
    const-string v8, "SameNameJoinActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$900(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 450
    .local v5, "msg":Landroid/os/Message;
    const/16 v8, 0x64

    iput v8, v5, Landroid/os/Message;->what:I

    .line 451
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "display_name"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v8, "progress"

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "current":I
    .local v2, "current":I
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    const-string v8, "group_number"

    invoke-virtual {v6}, Lcom/android/contacts/model/SameNameList;->getContactIds()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    iget-object v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$900(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    iget-object v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    iget-object v9, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    # invokes: Lcom/android/contacts/activities/SameNameJoinActivity;->actuallyJoinOneGroup(Landroid/content/ContentResolver;Lcom/android/contacts/model/SameNameList;)V
    invoke-static {v8, v9, v6}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$1000(Lcom/android/contacts/activities/SameNameJoinActivity;Landroid/content/ContentResolver;Lcom/android/contacts/model/SameNameList;)V

    move v1, v2

    .line 461
    .end local v2    # "current":I
    .restart local v1    # "current":I
    goto/16 :goto_0

    .line 459
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    const-string v8, "SameNameJoinActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canceled on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$900(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 464
    .end local v6    # "nameList":Lcom/android/contacts/model/SameNameList;
    :cond_1
    iget-boolean v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->canceled:Z

    if-nez v8, :cond_2

    .line 465
    iget-object v8, p0, Lcom/android/contacts/activities/SameNameJoinActivity$CommitJoinThread;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$900(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 466
    const-string v8, "SameNameJoinActivity"

    const-string v9, "merge done"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_2
    return-void
.end method
