.class public abstract Lcom/android/contacts/common/list/ContactEntryListAdapter;
.super Lcom/android/contacts/common/list/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# instance fields
.field private mContactsCount:Ljava/lang/String;

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mIncludeProfile:Z

.field private mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartitions()V

    .line 94
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    .line 95
    return-void
.end method

.method private getPartitionByDirectoryId(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 164
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 166
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 167
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 172
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 164
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 422
    if-nez p1, :cond_0

    .line 423
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 436
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 428
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "sections":[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 432
    .local v1, "counts":[I
    new-instance v3, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 434
    .end local v1    # "counts":[I
    .end local v2    # "sections":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    .line 129
    return-void
.end method

.method public areAllPartitionsEmpty()Z
    .locals 3

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 488
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 489
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    const/4 v2, 0x0

    .line 493
    :goto_1
    return v2

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 525
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 526
    .local v11, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v12, v11, Lcom/android/contacts/common/list/DirectoryPartition;

    if-nez v12, :cond_0

    .line 560
    :goto_0
    return-void

    :cond_0
    move-object v7, v11

    .line 530
    check-cast v7, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 531
    .local v7, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    .line 532
    .local v4, "directoryId":J
    const v12, 0x7f0b0030

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 533
    .local v10, "labelTextView":Landroid/widget/TextView;
    const v12, 0x7f0b0093

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 534
    .local v9, "displayNameTextView":Landroid/widget/TextView;
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_1

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_2

    .line 535
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_1
    const v12, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 547
    .local v3, "countText":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 548
    const v12, 0x7f09003c

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 538
    .end local v3    # "countText":Landroid/widget/TextView;
    :cond_2
    const v12, 0x7f090039

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 539
    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "directoryName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v8, v6

    .line 543
    .local v8, "displayName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 540
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 550
    .end local v6    # "directoryName":Ljava/lang/String;
    .restart local v3    # "countText":Landroid/widget/TextView;
    :cond_4
    if-nez p3, :cond_5

    const/4 v2, 0x0

    .line 551
    .local v2, "count":I
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v12

    if-lt v2, v12, :cond_6

    .line 553
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f09003d

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 550
    .end local v2    # "count":I
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_3

    .line 556
    .restart local v2    # "count":I
    :cond_6
    const v12, 0x7f09003e

    const/high16 v13, 0x7f0c0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V
    .locals 11
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "photoIdColumn"    # I
    .param p5, "photoUriColumn"    # I
    .param p6, "contactIdColumn"    # I
    .param p7, "lookUpKeyColumn"    # I

    .prologue
    .line 632
    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 633
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 639
    .local v3, "photoId":J
    :goto_0
    move/from16 v0, p5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 640
    move/from16 v0, p5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 641
    .local v6, "photoUriString":Ljava/lang/String;
    if-nez v6, :cond_2

    const/4 v5, 0x0

    .line 646
    .end local v6    # "photoUriString":Ljava/lang/String;
    .local v5, "photoUri":Landroid/net/Uri;
    :goto_1
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v2

    .line 647
    .local v2, "lookupUri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v7

    .line 648
    .local v7, "quickContact":Landroid/widget/QuickContactBadge;
    invoke-virtual {v7, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 650
    const v8, 0x7f0b0013

    invoke-virtual {v7, v8, v2}, Landroid/widget/QuickContactBadge;->setTag(ILjava/lang/Object;)V

    .line 651
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-gtz v8, :cond_0

    if-nez v5, :cond_4

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual {v8, v7, v3, v4, v9}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 657
    :goto_2
    return-void

    .line 635
    .end local v2    # "lookupUri":Landroid/net/Uri;
    .end local v3    # "photoId":J
    .end local v5    # "photoUri":Landroid/net/Uri;
    .end local v7    # "quickContact":Landroid/widget/QuickContactBadge;
    :cond_1
    const-wide/16 v3, -0x1

    .restart local v3    # "photoId":J
    goto :goto_0

    .line 641
    .restart local v6    # "photoUriString":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 643
    .end local v6    # "photoUriString":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "photoUri":Landroid/net/Uri;
    goto :goto_1

    .line 654
    .restart local v2    # "lookupUri":Landroid/net/Uri;
    .restart local v7    # "quickContact":Landroid/widget/QuickContactBadge;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v8

    const/4 v9, -0x1

    iget-boolean v10, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual {v8, v7, v5, v9, v10}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_2
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 399
    .local v0, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_2

    .line 400
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 403
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    .line 407
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 410
    invoke-direct {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 343
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 346
    const-string v11, "ContactEntryListAdapter"

    const-string v12, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    :goto_0
    return-void

    .line 350
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v1, "directoryIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 353
    .local v7, "idColumnIndex":I
    const-string v11, "directoryType"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 354
    .local v2, "directoryTypeColumnIndex":I
    const-string v11, "displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 355
    .local v3, "displayNameColumnIndex":I
    const-string v11, "photoSupport"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 359
    .local v10, "photoSupportColumnIndex":I
    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 360
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 361
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 362
    .local v5, "id":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-direct {p0, v5, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 364
    new-instance v8, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 365
    .local v8, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v8, v5, v6}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 366
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 367
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 368
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 369
    .local v9, "photoSupport":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    :cond_2
    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 371
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    .line 369
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 376
    .end local v5    # "id":J
    .end local v8    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v9    # "photoSupport":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 377
    .local v0, "count":I
    move v4, v0

    .local v4, "i":I
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_6

    .line 378
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 379
    .local v8, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v11, v8, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v11, :cond_5

    .line 380
    check-cast v8, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v8    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v5

    .line 381
    .restart local v5    # "id":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 382
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_3

    .line 387
    .end local v5    # "id":J
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->invalidate()V

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 202
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 204
    .local v3, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 205
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 206
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 202
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->clearPartitions()V

    .line 210
    return-void
.end method

.method protected clearPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 124
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 500
    const/4 v1, -0x1

    .line 501
    .local v1, "defaultPartitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 502
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 503
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 504
    .local v3, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 506
    move v1, v2

    .line 510
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 511
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 512
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 514
    :cond_1
    return-void

    .line 502
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v0, v3, v3}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 133
    .local v0, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 136
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 137
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    new-instance v0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 661
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 662
    .local v0, "contactId":J
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 664
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 665
    .local v2, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 666
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 669
    :cond_0
    return-object v5
.end method

.method public getContactsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 447
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 448
    .local v1, "type":I
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 451
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 452
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    .line 454
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 452
    .restart local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .restart local v1    # "type":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    :goto_0
    return-object v1

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x0

    .line 470
    :goto_0
    return v0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 470
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 476
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 477
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 478
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    const/4 v3, 0x1

    .line 483
    :goto_1
    return v3

    .line 476
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 602
    .local v0, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 603
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    .line 605
    :goto_0
    return v1

    .restart local v0    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, "isUserProfile":Z
    if-nez p1, :cond_1

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 571
    .local v3, "partition":I
    if-ltz v3, :cond_1

    .line 574
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 575
    .local v2, "offset":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 576
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 577
    const-string v6, "is_user_profile"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 578
    .local v4, "profileColumnIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 579
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    .line 582
    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 586
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "offset":I
    .end local v3    # "partition":I
    .end local v4    # "profileColumnIndex":I
    :cond_1
    return v1

    .line 579
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "offset":I
    .restart local v3    # "partition":I
    .restart local v4    # "profileColumnIndex":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 519
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 520
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDataReload()V
    .locals 6

    .prologue
    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "notify":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 184
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 186
    .local v4, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v5, v4, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 187
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 188
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    const/4 v3, 0x1

    .line 191
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 184
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_2
    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 197
    :cond_3
    return-void
.end method

.method public removeDirectoriesAfterDefault()V
    .locals 7

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 151
    .local v2, "partitionCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 153
    .local v1, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v3, v1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v1    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 160
    :cond_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    .line 151
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 260
    return-void
.end method

.method public setContactsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 674
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 336
    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    .line 99
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 252
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 244
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1, "displayPhotos"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 284
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 292
    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 617
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 316
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    .line 272
    return-void
.end method

.method protected setPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 118
    .restart local p1    # "header":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 108
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    .end local p1    # "pinnedHeaderView":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setSectionHeader(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .param p1, "exists"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 323
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 324
    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    .end local v0    # "indexer":Landroid/widget/SectionIndexer;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "quickContactEnabled"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 308
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 218
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 300
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    .line 268
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
