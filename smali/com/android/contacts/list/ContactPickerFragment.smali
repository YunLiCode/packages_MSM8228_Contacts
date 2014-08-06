.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field private mShortcutRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 182
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isCreateContactEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 183
    return-void

    .line 182
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    new-instance v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;-><init>(Landroid/app/Activity;)V

    .line 156
    .local v0, "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    if-nez v1, :cond_1

    .line 157
    :cond_0
    const/4 v1, -0x7

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 163
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 164
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 165
    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 171
    .end local v0    # "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    :goto_1
    return-object v0

    .line 160
    .restart local v0    # "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    :cond_1
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0

    .line 168
    .end local v0    # "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    :cond_2
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 170
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_1
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    .line 146
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 187
    const v0, 0x7f040021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isCreateContactEnabled()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    return v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 108
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f04002a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    .line 138
    :goto_1
    return-void

    .line 128
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 132
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v2, :cond_2

    .line 133
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 134
    .local v0, "builder":Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto :goto_1

    .line 136
    .end local v0    # "builder":Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 198
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "editMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    const-string v0, "createContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const-string v0, "shortcutRequested"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 150
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 96
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 101
    const-string v0, "createContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 102
    const-string v0, "shortcutRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    goto :goto_0
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 78
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnContactPickerActionListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    .line 62
    return-void
.end method

.method public setShortcutRequested(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 82
    return-void
.end method
