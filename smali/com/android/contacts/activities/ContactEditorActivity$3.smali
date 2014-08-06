.class Lcom/android/contacts/activities/ContactEditorActivity$3;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 201
    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 1
    .param p1, "newLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 196
    return-void
.end method

.method public onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 225
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 228
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    :cond_0
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 242
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 243
    return-void
.end method

.method public onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "rawContactUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .param p4, "redirect"    # Z

    .prologue
    .line 248
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 250
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 253
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    if-eqz p3, :cond_0

    .line 259
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    :cond_0
    if-eqz p4, :cond_1

    .line 263
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 266
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    const-string v1, "addToDefaultDirectory"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 218
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 181
    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 2
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 191
    return-void

    .line 186
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 187
    :cond_2
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
