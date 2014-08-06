.class Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    # invokes: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 87
    return-void
.end method
