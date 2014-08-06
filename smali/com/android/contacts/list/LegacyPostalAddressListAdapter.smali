.class public Lcom/android/contacts/list/LegacyPostalAddressListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "LegacyPostalAddressListAdapter.java"


# static fields
.field static final POSTALS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->POSTALS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 58
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 59
    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 96
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 98
    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 99
    return-void
.end method

.method protected bindPostalAddress(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 105
    .local v2, "type":I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 110
    .end local v0    # "customLabel":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/common/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 112
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 90
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    .line 91
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 92
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->bindPostalAddress(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 93
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 1
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 63
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 64
    sget-object v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->POSTALS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 65
    const-string v0, "display_name"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 66
    const-string v0, "kind=2"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getContactMethodUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 76
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 77
    .local v1, "id":J
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 85
    return-object v0
.end method
