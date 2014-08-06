.class public Lcom/android/contacts/activities/GroupEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFragment:Lcom/android/contacts/group/GroupEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 139
    new-instance v0, Lcom/android/contacts/activities/GroupEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupEditorActivity$3;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupEditorActivity;)Lcom/android/contacts/group/GroupEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/GroupEditorActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    return-object v0
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->save()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 121
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v7, "saveCompleted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const v7, 0x7f04004e

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/GroupEditorActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 63
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 66
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 68
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04003d

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "customActionBarView":Landroid/view/View;
    const v7, 0x7f0b00a1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 71
    .local v5, "saveMenuItem":Landroid/view/View;
    new-instance v7, Lcom/android/contacts/activities/GroupEditorActivity$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/GroupEditorActivity$1;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v7, 0x7f0b00a2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, "discardMenuItem":Landroid/view/View;
    new-instance v7, Lcom/android/contacts/activities/GroupEditorActivity$2;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/GroupEditorActivity$2;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const/16 v7, 0x10

    const/16 v8, 0x1a

    invoke-virtual {v1, v7, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 88
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 91
    .end local v2    # "customActionBarView":Landroid/view/View;
    .end local v3    # "discardMenuItem":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "saveMenuItem":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0b00b8

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/group/GroupEditorFragment;

    iput-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    .line 93
    iget-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-virtual {v7, v8}, Lcom/android/contacts/group/GroupEditorFragment;->setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V

    .line 94
    iget-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/group/GroupEditorFragment;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 100
    .local v6, "uri":Landroid/net/Uri;
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v0, v6, v8}, Lcom/android/contacts/group/GroupEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const-string v0, "GroupEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 127
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZLandroid/net/Uri;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v1, "saveError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupEditorFragment;->setStatus(Lcom/android/contacts/group/GroupEditorFragment$Status;)V

    goto :goto_0
.end method
