.class Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog$1;
.super Ljava/lang/Object;
.source "MultiContactsDeletionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog$1;->this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog$1;->this$0:Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment$ConfirmDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    .line 138
    .local v0, "target":Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;
    if-eqz v0, :cond_0

    .line 139
    # invokes: Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->handleDelete()V
    invoke-static {v0}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;->access$300(Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;)V

    .line 141
    :cond_0
    return-void
.end method
