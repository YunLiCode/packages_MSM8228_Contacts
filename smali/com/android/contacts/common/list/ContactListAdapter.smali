.class public abstract Lcom/android/contacts/common/list/ContactListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;
    }
.end annotation


# instance fields
.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 138
    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 139
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindAccountType(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 301
    const/16 v5, 0xa

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "accountName":Ljava/lang/String;
    const/16 v5, 0xb

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "accountType":Ljava/lang/String;
    const/16 v5, 0xc

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "dataSet":Ljava/lang/String;
    const/4 v2, 0x0

    .line 306
    .local v2, "accountRes":I
    if-eqz v1, :cond_0

    if-nez v3, :cond_3

    .line 307
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setAccount(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setAccount(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    return-void

    .line 308
    :cond_3
    const-string v5, "com.android.localphone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "PHONE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 310
    const v2, 0x7f02002e

    goto :goto_0

    .line 311
    :cond_4
    const-string v5, "com.android.sim"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 312
    const-string v5, "SIM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 313
    const v2, 0x7f020030

    goto :goto_0

    .line 314
    :cond_5
    const-string v5, "SIM1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 315
    const v2, 0x7f020031

    goto :goto_0

    .line 316
    :cond_6
    const-string v5, "SIM2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    const v2, 0x7f020032

    goto :goto_0

    .line 320
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 321
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setAccount(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 289
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    .line 283
    :goto_0
    return-void

    .line 266
    :cond_0
    const-wide/16 v0, 0x0

    .line 267
    .local v0, "photoId":J
    const/4 v2, 0x0

    .line 268
    .local v2, "photoUri":Landroid/net/Uri;
    invoke-interface {p3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 271
    :cond_1
    invoke-interface {p3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 272
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "photoUriString":Ljava/lang/String;
    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 276
    .end local v3    # "photoUriString":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v4

    .line 277
    .local v4, "photoView":Landroid/widget/ImageView;
    const v5, 0x7f0b0013

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 278
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_4

    .line 279
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v1, v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    goto :goto_0

    .line 273
    .end local v4    # "photoView":Landroid/widget/ImageView;
    .restart local v3    # "photoUriString":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 281
    .end local v3    # "photoUriString":Ljava/lang/String;
    .restart local v4    # "photoView":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 292
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    .line 294
    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 297
    const/16 v0, 0xd

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 298
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 245
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    if-nez p2, :cond_0

    const/4 v2, 0x7

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactsCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 250
    :goto_0
    iget-object v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 251
    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 257
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :goto_2
    return-void

    .line 248
    .restart local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 253
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 255
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 411
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 414
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 415
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 416
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->setProfileExists(Z)V

    .line 418
    :cond_0
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactLookupKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 205
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 187
    .local v1, "partitionIndex":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 188
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 192
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 193
    .local v0, "contactId":J
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 195
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 196
    .local v2, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 197
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 200
    :cond_0
    return-object v5
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v3

    .line 388
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 389
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 390
    .local v2, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 395
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    .line 406
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected final getProjection(Z)[Ljava/lang/String;
    .locals 2
    .param p1, "forSearch"    # Z

    .prologue
    const/4 v1, 0x1

    .line 424
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    .line 425
    .local v0, "sortOrder":I
    if-eqz p1, :cond_1

    .line 426
    if-ne v0, v1, :cond_0

    .line 427
    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$000()[Ljava/lang/String;

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    .line 429
    :cond_0
    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 432
    :cond_1
    if-ne v0, v1, :cond_2

    .line 433
    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$200()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 435
    :cond_2
    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$300()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    .prologue
    .line 329
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 330
    const/4 v9, -0x1

    .line 379
    :cond_0
    :goto_0
    return v9

    .line 333
    :cond_1
    const/4 v2, 0x0

    .line 334
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 335
    .local v8, "partitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    .line 336
    .local v7, "partitionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 337
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 338
    .local v6, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 339
    move v8, v3

    .line 343
    .end local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_2
    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    .line 344
    const/4 v9, -0x1

    goto :goto_0

    .line 336
    .restart local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    .end local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 348
    if-nez v2, :cond_5

    .line 349
    const/4 v9, -0x1

    goto :goto_0

    .line 352
    :cond_5
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 353
    const/4 v5, -0x1

    .line 354
    .local v5, "offset":I
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 355
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 356
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "lookupKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 358
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 371
    .end local v4    # "lookupKey":Ljava/lang/String;
    :cond_7
    :goto_2
    const/4 v10, -0x1

    if-ne v5, v10, :cond_a

    .line 372
    const/4 v9, -0x1

    goto :goto_0

    .line 362
    :cond_8
    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_9

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    .line 364
    :cond_9
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 365
    .local v0, "contactId":J
    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_6

    .line 366
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 367
    goto :goto_2

    .line 375
    .end local v0    # "contactId":J
    :cond_a
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    .line 376
    .local v9, "position":I
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 377
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 10
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 216
    .local v0, "directoryId":J
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_0

    .line 225
    :goto_0
    return v5

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "lookupKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v4

    .line 222
    goto :goto_0

    .line 225
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 232
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 236
    return-object v0
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .param p1, "selectedDirectoryId"    # J
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "contactId"    # J

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    .line 159
    iput-object p3, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 160
    iput-wide p4, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    .line 161
    return-void
.end method
