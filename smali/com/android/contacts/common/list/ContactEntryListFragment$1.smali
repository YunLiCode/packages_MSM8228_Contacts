.class Lcom/android/contacts/common/list/ContactEntryListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 148
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment$1;, "Lcom/android/contacts/common/list/ContactEntryListFragment.1;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment$1;, "Lcom/android/contacts/common/list/ContactEntryListFragment.1;"
    const-string v0, "ContactEntryListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 155
    :cond_0
    return-void
.end method
