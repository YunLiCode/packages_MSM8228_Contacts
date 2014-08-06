.class Lcom/android/contacts/common/vcard/SelectAccountActivity$1;
.super Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/SelectAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p4, "x2"    # I

    .prologue
    .line 83
    .local p3, "x1":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    iget-object v2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 88
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "account_name"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v2, "account_type"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "data_set"

    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    iget-object v2, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->finish()V

    .line 94
    return-void
.end method
