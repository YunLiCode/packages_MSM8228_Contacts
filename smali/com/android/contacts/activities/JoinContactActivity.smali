.class public Lcom/android/contacts/activities/JoinContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinContactActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field private mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

.field private mSearchView:Landroid/widget/SearchView;

.field private mTargetContactId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private prepareSearchViewAndActionBar()V
    .locals 9

    .prologue
    const v8, 0x7f0900ce

    const v7, 0x7f0b0071

    const/4 v6, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 137
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, "searchViewOnLayout":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 140
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, "searchViewLayout":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    .line 149
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/JoinContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 153
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 154
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 155
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 159
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 160
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 161
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 170
    .end local v1    # "searchViewLayout":Landroid/view/View;
    .end local v2    # "searchViewOnLayout":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 171
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    .line 164
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/JoinContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 166
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method private setupActionListener()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    .line 113
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    new-instance v1, Lcom/android/contacts/activities/JoinContactActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/JoinContactActivity$1;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 133
    return-void
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    const-string v1, "JoinContactActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 229
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/JoinContactListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 77
    instance-of v0, p1, Lcom/android/contacts/list/JoinContactListFragment;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/android/contacts/list/JoinContactListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 79
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V

    .line 81
    :cond_0
    return-void
.end method

.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 189
    :cond_0
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v3, -0x1

    .line 85
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 89
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 90
    const-string v1, "JoinContactActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missing required extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    const v1, 0x7f04005d

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setContentView(I)V

    .line 98
    const v1, 0x7f090120

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setTitle(I)V

    .line 100
    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/JoinContactListFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0b0072

    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->prepareSearchViewAndActionBar()V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :pswitch_0
    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->showInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x7f0b0071
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 208
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 224
    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 225
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    return-void
.end method
