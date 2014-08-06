.class public Lcom/android/contacts/list/PostalAddressPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "PostalAddressPickerFragment.java"


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
.field private mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 39
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 40
    return-void
.end method

.method private pickPostalAddress(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnPostalAddressPickerActionListener;->onPickPostalAddressAction(Landroid/net/Uri;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "adapter":Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 63
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setDisplayPhotos(Z)V

    .line 70
    .end local v0    # "adapter":Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "adapter":Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
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
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    .line 51
    .local v0, "adapter":Lcom/android/contacts/list/PostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    .line 56
    .end local v0    # "adapter":Lcom/android/contacts/list/PostalAddressListAdapter;
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    .line 54
    .local v0, "adapter":Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContactMethodUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    .line 45
    return-void
.end method
