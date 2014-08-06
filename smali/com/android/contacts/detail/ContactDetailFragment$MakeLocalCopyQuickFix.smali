.class Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;
.super Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeLocalCopyQuickFix"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    .prologue
    .line 2269
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 2269
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2290
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2322
    :goto_0
    return-void

    .line 2294
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getDirectoryExportSupport()I

    move-result v1

    .line 2295
    .local v1, "exportSupport":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2297
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getDirectoryAccountName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1900(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 2302
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 2304
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2305
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v2, v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1900(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 2311
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 2312
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1900(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 2316
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v4, 0x7f09008e

    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const v1, 0x7f090179

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2273
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2280
    :cond_0
    :goto_0
    return v0

    .line 2276
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getDirectoryExportSupport()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2280
    const/4 v0, 0x1

    goto :goto_0
.end method
