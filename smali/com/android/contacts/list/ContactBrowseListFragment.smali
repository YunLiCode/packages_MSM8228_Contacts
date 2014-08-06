.class public abstract Lcom/android/contacts/list/ContactBrowseListFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

.field private mDelaySelection:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectedPosition:I

.field protected mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

.field private mPersistentSelectionPrefix:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshingContactUri:Z

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectionPersistenceRequested:Z

.field private mSelectionRequired:Z

.field private mSelectionToScreenRequested:Z

.field private mSelectionVerified:Z

.field private mSmoothScrollRequested:Z

.field private mStartedLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 96
    const-string v0, "defaultContactBrowserSelection"

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private checkSelection()V
    .locals 14

    .prologue
    const/4 v13, -0x6

    const/4 v12, 0x0

    .line 419
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    .line 432
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactListAdapter;
    if-eqz v0, :cond_0

    .line 436
    const/4 v8, 0x1

    .line 437
    .local v8, "directoryLoading":Z
    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v6

    .line 438
    .local v6, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 439
    invoke-virtual {v0, v9}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v10

    .line 440
    .local v10, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v1, v10, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_5

    move-object v7, v10

    .line 441
    check-cast v7, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 442
    .local v7, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 443
    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v8

    .line 449
    .end local v7    # "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v10    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_2
    if-nez v8, :cond_0

    .line 453
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 456
    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v11

    .line 457
    .local v11, "selectedPosition":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_6

    .line 458
    iput v11, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 504
    :goto_2
    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 507
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    if-eqz v1, :cond_3

    .line 508
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 509
    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 512
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v1, :cond_4

    .line 513
    invoke-virtual {p0, v11}, Lcom/android/contacts/list/ContactBrowseListFragment;->requestSelectionToScreen(I)V

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 518
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto :goto_0

    .line 438
    .end local v11    # "selectedPosition":I
    .restart local v10    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 460
    .end local v10    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    .restart local v11    # "selectedPosition":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 461
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    if-eqz v1, :cond_b

    .line 462
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectFirstFoundContactAfterDelay()V

    .line 463
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto/16 :goto_0

    .line 468
    :cond_7
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v1, :cond_a

    .line 474
    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 483
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-eq v1, v13, :cond_8

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_9

    .line 486
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto/16 :goto_0

    .line 489
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 492
    :cond_a
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v1, v13, :cond_b

    .line 496
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 500
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    goto :goto_2
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistentSelectionKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 678
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyInvalidSelection()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onInvalidSelection()V

    .line 627
    :cond_0
    return-void
.end method

.method private parseSelectedContactUri()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 355
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v3, "directory"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "directoryParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 359
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 361
    .local v1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 362
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    .line 380
    .end local v0    # "directoryParam":Ljava/lang/String;
    .end local v1    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 357
    .restart local v0    # "directoryParam":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_3

    .line 367
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 370
    :cond_3
    const-string v2, "ContactList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported contact URI: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 372
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 376
    .end local v0    # "directoryParam":Ljava/lang/String;
    :cond_4
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 377
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 378
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1
.end method

.method private restoreFilter()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 672
    return-void
.end method

.method private restoreSelectedUri(Z)V
    .locals 7
    .param p1, "willReloadData"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 654
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, "selectedUri":Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    .line 660
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0

    .line 662
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 668
    return-void
.end method

.method private saveSelectedUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v1, v2}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 642
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 643
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 646
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private setSelectedContactUri(Landroid/net/Uri;ZZZZ)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "required"    # Z
    .param p3, "smoothScroll"    # Z
    .param p4, "persistent"    # Z
    .param p5, "willReloadData"    # Z

    .prologue
    .line 326
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 329
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 331
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 332
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 333
    iput-boolean p4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 334
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 335
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 337
    if-nez p5, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    .line 341
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactListAdapter;
    if-eqz v0, :cond_2

    .line 342
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 344
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 349
    .end local v0    # "adapter":Lcom/android/contacts/common/list/ContactListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 351
    :cond_3
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 7

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 386
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    .line 387
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactListAdapter;
    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v6

    .line 392
    .local v6, "searchMode":Z
    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 394
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 396
    :cond_1
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 402
    :cond_2
    if-nez v6, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setIncludeProfile(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 179
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreFilter()V

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 182
    return-void
.end method

.method protected onContactUriQueryFinished(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 274
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 275
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 276
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->checkSelection()V

    .line 277
    return-void
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
    .line 407
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 411
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 412
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 242
    const-string v0, "selectedUri"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    const-string v0, "selectionVerified"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v0, "lastSelected"

    iget v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    return-void
.end method

.method protected refreshSelectedContactUri()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->cancel()V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSelectionVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 258
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 267
    :cond_3
    new-instance v1, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    .line 268
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 592
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 594
    :cond_0
    return-void
.end method

.method protected requestSelectionToScreen(I)V
    .locals 3
    .param p1, "selectedPosition"    # I

    .prologue
    .line 562
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/AutoScrollListView;

    .line 564
    .local v0, "listView":Lcom/android/contacts/common/list/AutoScrollListView;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/AutoScrollListView;->requestPositionToScreen(IZ)V

    .line 566
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 568
    .end local v0    # "listView":Lcom/android/contacts/common/list/AutoScrollListView;
    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 227
    if-nez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 232
    const-string v0, "selectedUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 233
    const-string v0, "selectionVerified"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 234
    const-string v0, "lastSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 235
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    goto :goto_0
.end method

.method protected selectDefaultContact()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    .line 545
    .local v6, "adapter":Lcom/android/contacts/common/list/ContactListAdapter;
    iget v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 546
    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v7

    .line 547
    .local v7, "count":I
    iget v8, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 548
    .local v8, "pos":I
    if-lt v8, v7, :cond_0

    if-lez v7, :cond_0

    .line 549
    add-int/lit8 v8, v7, -0x1

    .line 551
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 554
    .end local v7    # "count":I
    .end local v8    # "pos":I
    :cond_1
    if-nez v1, :cond_2

    .line 555
    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getFirstContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 558
    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 559
    return-void
.end method

.method public selectFirstFoundContactAfterDelay()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 529
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 530
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 533
    .local v7, "queryString":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 535
    const-wide/16 v0, 0x1f4

    invoke-virtual {v6, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    .line 196
    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V
    .locals 3
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2, "restoreSelectedUri"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :cond_2
    const-string v0, "ContactList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 211
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveFilter()V

    .line 212
    if-eqz p2, :cond_3

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto :goto_0
.end method

.method public setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnContactBrowserActionListener;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    .line 598
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 292
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    .line 293
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 294
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 192
    :cond_1
    return-void
.end method

.method public setSelectedContactUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 287
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 288
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 307
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 579
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 580
    return-void
.end method

.method public viewContact(Landroid/net/Uri;)V
    .locals 6
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 605
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 606
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onViewContactAction(Landroid/net/Uri;)V

    .line 607
    :cond_0
    return-void
.end method
