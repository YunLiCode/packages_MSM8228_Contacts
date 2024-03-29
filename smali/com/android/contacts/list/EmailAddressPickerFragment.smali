.class public Lcom/android/contacts/list/EmailAddressPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "EmailAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 38
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 39
    return-void
.end method

.method private pickEmailAddress(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnEmailAddressPickerActionListener;->onPickEmailAddressAction(Landroid/net/Uri;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setDisplayPhotos(Z)V

    .line 56
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    const v0, 0x7f04001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 48
    .local v0, "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->pickEmailAddress(Landroid/net/Uri;)V

    .line 49
    return-void
.end method

.method public setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    .line 43
    return-void
.end method
