.class Lcom/android/contacts/multichoice/MultiChoiceFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiChoiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment$2;->this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/contacts/multichoice/MultiChoiceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment$2;->this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/list/PhoneAndEmailListAdapter;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment$2;->this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    # invokes: Lcom/android/contacts/multichoice/MultiChoiceFragment;->reloadData()V
    invoke-static {v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->access$100(Lcom/android/contacts/multichoice/MultiChoiceFragment;)V

    .line 117
    :cond_0
    return-void
.end method
