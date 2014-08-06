.class public Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;,
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mHideSimContacts:Z

.field private mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mShortcutAction:Ljava/lang/String;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 64
    iput-boolean v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mHideSimContacts:Z

    .line 66
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 78
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 84
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 125
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-static {v3, v0, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 132
    .local v1, "shouldShowHeader":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 133
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "shouldShowHeader":Z
    :cond_2
    move v1, v2

    .line 128
    goto :goto_1

    .line 136
    .restart local v1    # "shouldShowHeader":Z
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 234
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 242
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 224
    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 225
    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mHideSimContacts:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setHideSimContacts(Z)V

    .line 226
    return-object v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 195
    .local v0, "adapter":Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected getVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    const v2, 0x7f04001c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "searchContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 254
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_0
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 283
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 98
    const v1, 0x7f040010

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "paddingView":Landroid/view/View;
    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getVisibleScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 107
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 186
    .local v0, "phoneUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v1, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was clicked before adapter is ready. Ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 209
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 210
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 165
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    .line 169
    :cond_0
    const/4 v1, 0x1

    .line 171
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 279
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    const-string v0, "shortcutAction"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "hide_sim"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mHideSimContacts:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->startPhoneNumberShortcutIntent(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 145
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 150
    const-string v0, "shortcutAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 151
    const-string v0, "hide_sim"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mHideSimContacts:Z

    goto :goto_0
.end method

.method public setHideSimContacts(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mHideSimContacts:Z

    .line 115
    return-void
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .line 92
    return-void
.end method

.method protected setPhotoPosition(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .prologue
    .line 246
    check-cast p1, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .end local p1    # "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 247
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 120
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 121
    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 180
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    .line 201
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 202
    return-void
.end method

.method protected startPhoneNumberShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 268
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 269
    .local v0, "builder":Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    .line 270
    return-void
.end method
