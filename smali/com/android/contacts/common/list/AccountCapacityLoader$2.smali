.class Lcom/android/contacts/common/list/AccountCapacityLoader$2;
.super Ljava/lang/Thread;
.source "AccountCapacityLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/AccountCapacityLoader;->loadAccountCapacity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

    iput-object p2, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

    # getter for: Lcom/android/contacts/common/list/AccountCapacityLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/common/list/AccountCapacityLoader;->access$000(Lcom/android/contacts/common/list/AccountCapacityLoader;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getContactCountByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "com.android.sim"

    iget-object v4, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "capacity":I
    const-string v3, "SIM1"

    iget-object v4, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

    # getter for: Lcom/android/contacts/common/list/AccountCapacityLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/common/list/AccountCapacityLoader;->access$000(Lcom/android/contacts/common/list/AccountCapacityLoader;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity(Landroid/content/Context;I)I

    move-result v1

    .line 85
    :cond_0
    :goto_0
    if-gtz v1, :cond_3

    .line 95
    .end local v1    # "capacity":I
    :goto_1
    return-void

    .line 80
    .restart local v1    # "capacity":I
    :cond_1
    const-string v3, "SIM2"

    iget-object v4, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

    # getter for: Lcom/android/contacts/common/list/AccountCapacityLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/common/list/AccountCapacityLoader;->access$000(Lcom/android/contacts/common/list/AccountCapacityLoader;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 82
    :cond_2
    const-string v3, "SIM"

    iget-object v4, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

    # getter for: Lcom/android/contacts/common/list/AccountCapacityLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/common/list/AccountCapacityLoader;->access$000(Lcom/android/contacts/common/list/AccountCapacityLoader;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 88
    :cond_3
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .end local v1    # "capacity":I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 93
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    iget-object v3, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
