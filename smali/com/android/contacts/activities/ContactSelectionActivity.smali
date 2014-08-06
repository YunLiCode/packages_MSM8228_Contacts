.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mCreateNewContactButton:Landroid/view/View;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/common/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 93
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    return-void
.end method

.method private configureActivityTitle()V
    .locals 3

    .prologue
    const v2, 0x7f090103

    .line 254
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 260
    .local v0, "actionCode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 267
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 262
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 272
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 277
    :sswitch_3
    const v1, 0x7f090100

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 282
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 287
    :sswitch_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 292
    :sswitch_6
    const v1, 0x7f090101

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 297
    :sswitch_7
    const v1, 0x7f090102

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 302
    :sswitch_8
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x46 -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    .locals 1
    .param p1, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;-><init>()V

    .line 395
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    goto :goto_0
.end method

.method private prepareSearchViewAndActionBar()V
    .locals 9

    .prologue
    const v8, 0x7f0900ce

    const/16 v5, 0x8

    const v7, 0x7f0b0071

    const/4 v6, 0x1

    .line 159
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 163
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 165
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 166
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 173
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 174
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "searchViewOnLayout":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 177
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "searchViewContainer":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 186
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 187
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 190
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 191
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 192
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 196
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 197
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 198
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 217
    .end local v1    # "searchViewContainer":Landroid/view/View;
    .end local v2    # "searchViewOnLayout":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 201
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 207
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 208
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/activities/ContactSelectionActivity$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private shouldShowCreateNewContactButton()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 602
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 604
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 605
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    const-string v1, "ContactSelectionActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    return-void
.end method

.method private startCreateNewContactActivity()V
    .locals 3

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 597
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    .line 599
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    iget v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    sparse-switch v3, :sswitch_data_0

    .line 377
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 315
    .local v0, "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    .line 316
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 317
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    .line 383
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 386
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0b0072

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 389
    return-void

    .line 322
    :sswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 323
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setIncludeProfile(Z)V

    .line 324
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0

    .line 329
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 330
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0

    .line 335
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 336
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    .line 337
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0

    .line 342
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_4
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v0

    .line 343
    .local v0, "fragment":Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "withoutSim"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setHideSimContacts(Z)V

    .line 345
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0

    :cond_0
    move v1, v2

    .line 343
    goto :goto_1

    .line 350
    .end local v0    # "fragment":Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    :sswitch_5
    new-instance v1, Lcom/android/contacts/list/EmailAddressPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0

    .line 355
    :sswitch_6
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v0

    .line 356
    .restart local v0    # "fragment":Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 358
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto :goto_0

    .line 363
    .end local v0    # "fragment":Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    :sswitch_7
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v0

    .line 364
    .restart local v0    # "fragment":Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 366
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 371
    .end local v0    # "fragment":Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    :sswitch_8
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    .line 372
    .local v0, "fragment":Lcom/android/contacts/list/PostalAddressPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 613
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 614
    if-nez p1, :cond_1

    .line 615
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 616
    if-eqz p3, :cond_0

    .line 617
    invoke-virtual {p0, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 622
    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 98
    instance-of v0, p1, Lcom/android/contacts/common/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/android/contacts/common/list/ContactEntryListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    .line 102
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 593
    :goto_0
    return-void

    .line 589
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x7f0b0073
        :pswitch_0
    .end packed-switch
.end method

.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 556
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 559
    :cond_0
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 114
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    .local v0, "redirect":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 128
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureActivityTitle()V

    .line 130
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    .line 132
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 133
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    .line 137
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->prepareSearchViewAndActionBar()V

    .line 139
    const v1, 0x7f0b0073

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    .line 140
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->shouldShowCreateNewContactButton()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->shouldShowCreateNewContactButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 226
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 228
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 566
    :pswitch_0
    if-eqz p2, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->showInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x7f0b0071
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 244
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 236
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 240
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    goto :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b011f -> :sswitch_1
    .end sparse-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string v0, "actionCode"

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 581
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 583
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 577
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 415
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V

    goto :goto_0

    .line 413
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 532
    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 536
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 539
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 541
    return-void
.end method
