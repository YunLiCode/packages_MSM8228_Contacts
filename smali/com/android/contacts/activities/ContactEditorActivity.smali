.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFinishActivityOnSaveCompleted:Z

.field private mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 176
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return v0
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 174
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    :cond_0
    const-string v8, "ContactEditorActivity"

    const-string v9, "Delete or copy is processing!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v8, 0x7f0901c8

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 138
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 82
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v8, "finishActivityOnSaveCompleted"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    .line 93
    const-string v8, "joinCompleted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_2
    const-string v8, "saveCompleted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    goto :goto_0

    .line 103
    :cond_3
    const v8, 0x7f040019

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 106
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_4

    .line 109
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 111
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04003d

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "customActionBarView":Landroid/view/View;
    const v8, 0x7f0b00a1

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 113
    .local v6, "saveMenuItem":Landroid/view/View;
    new-instance v8, Lcom/android/contacts/activities/ContactEditorActivity$1;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v8, 0x7f0b00a2

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, "discardMenuItem":Landroid/view/View;
    new-instance v8, Lcom/android/contacts/activities/ContactEditorActivity$2;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/16 v8, 0x10

    const/16 v9, 0x1a

    invoke-virtual {v1, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 130
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 133
    .end local v2    # "customActionBarView":Landroid/view/View;
    .end local v3    # "discardMenuItem":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "saveMenuItem":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f0b0068

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 135
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-virtual {v8, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 136
    const-string v8, "android.intent.action.EDIT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 137
    .local v7, "uri":Landroid/net/Uri;
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v0, v7, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string v0, "ContactEditorActivity"

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

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "saveCompleted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const-string v2, "saveMode"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "saveSucceeded"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "saveResult"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;I)V

    goto :goto_0

    .line 157
    :cond_3
    const-string v0, "joinCompleted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->onJoinCompleted(Landroid/net/Uri;)V

    goto :goto_0
.end method
