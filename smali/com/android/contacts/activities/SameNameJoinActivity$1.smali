.class Lcom/android/contacts/activities/SameNameJoinActivity$1;
.super Landroid/os/Handler;
.source "SameNameJoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/SameNameJoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/SameNameJoinActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/SameNameJoinActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const-string v5, "display_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "displayName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->stTotal:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$100(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    const v7, 0x7f090217

    # invokes: Lcom/android/contacts/activities/SameNameJoinActivity;->getSpannableString(ILjava/lang/String;)Landroid/text/SpannableString;
    invoke-static {v6, v7, v2}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$000(Lcom/android/contacts/activities/SameNameJoinActivity;ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const-string v5, "progress"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "current":I
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->exceptionIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$200(Lcom/android/contacts/activities/SameNameJoinActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 102
    .local v4, "total":I
    const-string v5, "SameNameJoinActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->stJoin:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$300(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    const v7, 0x7f090216

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->progress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$400(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 105
    const-string v5, "group_number"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "groupNum":I
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # getter for: Lcom/android/contacts/activities/SameNameJoinActivity;->stCheck:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$500(Lcom/android/contacts/activities/SameNameJoinActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    const v7, 0x7f090218

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/activities/SameNameJoinActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    .end local v1    # "current":I
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "groupNum":I
    .end local v4    # "total":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    const/4 v6, 0x4

    # invokes: Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V
    invoke-static {v5, v6}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$600(Lcom/android/contacts/activities/SameNameJoinActivity;I)V

    goto/16 :goto_0

    .line 115
    :pswitch_2
    iget-object v5, p0, Lcom/android/contacts/activities/SameNameJoinActivity$1;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    const/4 v6, 0x3

    # invokes: Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V
    invoke-static {v5, v6}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$600(Lcom/android/contacts/activities/SameNameJoinActivity;I)V

    goto/16 :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
