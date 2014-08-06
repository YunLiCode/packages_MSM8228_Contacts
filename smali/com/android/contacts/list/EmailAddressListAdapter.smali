.class public Lcom/android/contacts/list/EmailAddressListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "EmailAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;
    }
.end annotation


# instance fields
.field private mGroupId:J

.field private mGroupMode:Z

.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mGroupMode:Z

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mGroupId:J

    .line 91
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method private getGroupSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "contact_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "( SELECT contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, " FROM view_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " WHERE mimetype = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "vnd.android.cursor.item/group_membership\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, " AND data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mGroupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bindEmailAddress(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 202
    .local v2, "type":I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    .end local v0    # "customLabel":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/common/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 209
    return-void
.end method

.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 230
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 231
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x4

    .line 234
    const-wide/16 v0, 0x0

    .line 235
    .local v0, "photoId":J
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    .line 240
    .local v2, "photoView":Landroid/widget/ImageView;
    const v3, 0x7f0b0013

    invoke-virtual {p0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 242
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/EmailAddressListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 213
    .local v0, "section":I
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 222
    .end local v1    # "title":Ljava/lang/String;
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p2, :cond_1

    .line 223
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 227
    :goto_1
    return-void

    .line 217
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 218
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 191
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    .line 192
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0, v0, p4}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 193
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 194
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 195
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindEmailAddress(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 196
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 117
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    .end local v1    # "query":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    :cond_1
    :goto_0
    const-string v2, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    const-string v2, "remove_duplicate_entries"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 130
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mGroupMode:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getGroupSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getContactNameDisplayOrder()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 133
    # getter for: Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 138
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getSortOrder()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 139
    const-string v2, "sort_key"

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 143
    :goto_2
    return-void

    .line 120
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 121
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const-string v2, "address_book_index_extras"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 135
    :cond_4
    # getter for: Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->access$100()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_5
    const-string v2, "sort_key_alt"

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 157
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 162
    .local v2, "item":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 163
    const/4 v4, 0x0

    .line 167
    :goto_0
    return-object v4

    .line 165
    :cond_0
    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 166
    .local v0, "contactId":J
    const/16 v4, 0x9

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 176
    .local v0, "id":J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getEmailAddress(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 152
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 186
    return-object v0
.end method

.method public setGroupId(J)V
    .locals 2
    .param p1, "groupId"    # J

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 96
    iput-wide p1, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mGroupId:J

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mGroupMode:Z

    .line 99
    :cond_0
    return-void
.end method
