.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

.field final synthetic val$accounts:Ljava/util/List;

.field final synthetic val$orgNumAccounts:I


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iput p2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->val$orgNumAccounts:I

    iput-object p3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->val$accounts:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->val$orgNumAccounts:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->val$accounts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    # invokes: Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$200(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 174
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0
.end method
