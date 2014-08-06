.class public Lcom/android/contacts/interactions/GroupCreationDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "GroupCreationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 60
    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 65
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .prologue
    .line 48
    new-instance v1, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    invoke-direct {v1, p4}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;-><init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    .line 49
    .local v1, "dialog":Lcom/android/contacts/interactions/GroupCreationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "accountType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "accountName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "dataSet"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    const-string v2, "createGroupDialog"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f09018e

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 73
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 75
    .local v0, "filters":[Landroid/text/InputFilter;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 76
    return-void
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 11
    .param p1, "groupLabel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 86
    .local v9, "arguments":Landroid/os/Bundle;
    const-string v1, "accountType"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "accountType":Ljava/lang/String;
    const-string v1, "accountName"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "accountName":Ljava/lang/String;
    const-string v1, "dataSet"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "dataSet":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    invoke-interface {v1}, Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;->onGroupCreated()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v1, v7, v8, v10}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "android.intent.action.EDIT"

    move-object v2, p1

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/String;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    return-void
.end method
