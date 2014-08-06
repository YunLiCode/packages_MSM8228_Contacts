.class public Lcom/android/contacts/multichoice/MultiChoiceActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "MultiChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

.field private mIntentResolver:Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/multichoice/MultiChoiceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mIntentResolver:Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;

    .line 47
    return-void
.end method

.method private showActionBar(Z)V
    .locals 11
    .param p1, "searchMode"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 170
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04002b

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 173
    .local v5, "searchViewContainer":Landroid/view/View;
    const v6, 0x7f0b0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SearchView;

    iput-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    .line 175
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v10}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 176
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v9}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 177
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    const v7, 0x7f0900ce

    invoke-virtual {p0, v7}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v10}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 180
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 181
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 182
    iget-object v6, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 186
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 187
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 188
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 216
    .end local v5    # "searchViewContainer":Landroid/view/View;
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 193
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040065

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "customActionBarView":Landroid/view/View;
    const v6, 0x7f0b00d3

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 197
    .local v2, "doneMenuItem":Landroid/widget/ImageButton;
    new-instance v6, Lcom/android/contacts/multichoice/MultiChoiceActivity$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity$1;-><init>(Lcom/android/contacts/multichoice/MultiChoiceActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v6, 0x7f0b00d5

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 207
    .local v4, "searchMenuItem":Landroid/widget/ImageButton;
    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const/16 v6, 0x10

    const/16 v7, 0x1a

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 214
    iput-object v8, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 299
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 301
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceActivity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 220
    .local v0, "actionCode":I
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureListFragment action code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    if-nez v1, :cond_0

    .line 223
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1

    .line 224
    new-instance v1, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;

    invoke-direct {v1}, Lcom/android/contacts/multichoice/MultiContactsDeletionFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    .line 231
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->setActionCode(I)V

    .line 232
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->setLegacyCompatibilityMode(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 234
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->setVisibleScrollbarEnabled(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0b0072

    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 238
    return-void

    .line 225
    :cond_1
    const/16 v1, 0x7d9

    if-ne v0, v1, :cond_2

    .line 226
    new-instance v1, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;

    invoke-direct {v1}, Lcom/android/contacts/multichoice/MultiContactsDuplicationFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    goto :goto_0

    .line 228
    :cond_2
    new-instance v1, Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-direct {v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 52
    instance-of v0, p1, Lcom/android/contacts/multichoice/MultiChoiceFragment;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/android/contacts/multichoice/MultiChoiceFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    .line 55
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 160
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->showActionBar(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateSelectedItemsView()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->setResult(I)V

    .line 165
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    return-void

    .line 268
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->showActionBar(Z)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00d5
        :pswitch_0
    .end packed-switch
.end method

.method public onClose()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_0

    .line 261
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 259
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->showActionBar(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->updateSelectedItemsView()V

    move v0, v1

    .line 261
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v2, "contacts_request"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactsRequest;

    iput-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mIntentResolver:Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 65
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    sget-object v2, Lcom/android/contacts/multichoice/MultiChoiceActivity;->TAG:Ljava/lang/String;

    const-string v3, "Request is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0, v4}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->finish()V

    .line 87
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "redirect":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->finish()V

    goto :goto_0

    .line 79
    :cond_2
    const v2, 0x7f040020

    invoke-virtual {p0, v2}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->configureListFragment()V

    .line 83
    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 84
    .local v1, "searchView":Landroid/widget/SearchView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 86
    invoke-direct {p0, v4}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->showActionBar(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f020041

    .line 93
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 95
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f100005

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    const v3, 0x7f0b012d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 98
    .local v2, "optionItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 99
    .local v0, "actionCode":I
    packed-switch v0, :pswitch_data_0

    .line 121
    :pswitch_0
    const v3, 0x7f020047

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 122
    const v3, 0x7f0900dc

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 124
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 101
    :pswitch_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    const v3, 0x7f0901ea

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 105
    :pswitch_2
    const v3, 0x7f02004a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 106
    const v3, 0x7f09014c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 109
    :pswitch_3
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 110
    const v3, 0x7f0901f6

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 113
    :pswitch_4
    const v3, 0x7f02004c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 114
    const v3, 0x7f0901f5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 117
    :pswitch_5
    const v3, 0x7f020042

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 118
    const v3, 0x1040001

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    if-eqz p2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->showInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x7f0b0071
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 131
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->onSelectAll()V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->onClearSelect()V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->onOptionAction()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b012b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->onBackPressed()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mFragment:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/multichoice/MultiChoiceFragment;->startSearch(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 293
    if-eqz p1, :cond_0

    .line 294
    const-string v0, "contacts_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 296
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 287
    const-string v0, "contacts_request"

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 288
    return-void
.end method
