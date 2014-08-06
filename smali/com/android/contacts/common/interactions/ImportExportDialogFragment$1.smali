.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    # getter for: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 65
    .local v0, "contactsAreAvailable":Z
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->loadData(Z)V
    invoke-static {v1, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Z)V

    .line 66
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    # getter for: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 68
    .end local v0    # "contactsAreAvailable":Z
    :cond_0
    return-void
.end method
