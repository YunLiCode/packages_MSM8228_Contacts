.class public Lcom/android/contacts/common/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field public static mPath:Landroid/net/Uri;

.field private static mSelectedSim:I

.field public static mVCardShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/util/AccountSelectionUtil;->mSelectedSim:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-static {p0, p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f09008f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    if-eqz p1, :cond_0

    .line 201
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :cond_0
    sget-boolean v1, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v1, :cond_1

    .line 207
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    sget-object v1, Lcom/android/contacts/common/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    .line 211
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/common/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 181
    const-string v1, "AccountSelectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doImportFromSim("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/contacts/common/util/AccountSelectionUtil;->mSelectedSim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_PICK_SIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "importIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 184
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "subscription"

    sget v2, Lcom/android/contacts/common/util/AccountSelectionUtil;->mSelectedSim:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const/4 v1, -0x1

    sput v1, Lcom/android/contacts/common/util/AccountSelectionUtil;->mSelectedSim:I

    .line 195
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void

    .line 193
    :cond_1
    const-string v1, "subscription"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    .line 101
    .local v5, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v5, v1, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const-string v1, "AccountSelectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number of available accounts: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v7, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 111
    .local v7, "dialogContext":Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 113
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;

    const v2, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 148
    .local v0, "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-nez p2, :cond_0

    .line 149
    new-instance v6, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 151
    .local v6, "accountSelectedListener":Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    move-object p2, v6

    .line 153
    .end local v6    # "accountSelectedListener":Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    :cond_0
    if-nez p3, :cond_1

    .line 154
    new-instance p3, Lcom/android/contacts/common/util/AccountSelectionUtil$2;

    .end local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    invoke-direct {p3}, Lcom/android/contacts/common/util/AccountSelectionUtil$2;-><init>()V

    .line 160
    .restart local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static setImportSubscription(I)V
    .locals 0
    .param p0, "subscription"    # I

    .prologue
    .line 57
    sput p0, Lcom/android/contacts/common/util/AccountSelectionUtil;->mSelectedSim:I

    .line 58
    return-void
.end method
