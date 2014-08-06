.class public abstract Lcom/android/contacts/common/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSIMStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 102
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDefaultVerticalScrollbarPosition()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 104
    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 108
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    .line 121
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 136
    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 148
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSIMStateReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 874
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$3;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const v6, 0x7f07000a

    const/4 v3, 0x1

    .line 531
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 533
    .local v0, "hasScrollbar":Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 534
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 535
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 536
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 537
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, "leftPadding":I
    const/4 v2, 0x0

    .line 540
    .local v2, "rightPadding":I
    iget v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v4, v3, :cond_2

    .line 541
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 547
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 550
    .end local v1    # "leftPadding":I
    .end local v2    # "rightPadding":I
    :cond_0
    return-void

    .line 531
    .end local v0    # "hasScrollbar":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 544
    .restart local v0    # "hasScrollbar":Z
    .restart local v1    # "leftPadding":I
    .restart local v2    # "rightPadding":I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method private getDefaultVerticalScrollbarPosition()I
    .locals 3

    .prologue
    .line 884
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 885
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 886
    .local v0, "layoutDirection":I
    packed-switch v0, :pswitch_data_0

    .line 891
    const/4 v2, 0x2

    :goto_0
    return v2

    .line 888
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 810
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 812
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 813
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 372
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 376
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 391
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .param p1, "partitionIndex"    # I

    .prologue
    .line 350
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 351
    .local v3, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 352
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 353
    .local v1, "directoryId":J
    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 354
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 355
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V

    goto :goto_0

    .line 360
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 362
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 2

    .prologue
    .line 856
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 860
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 767
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 775
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 777
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 778
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 780
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 781
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 753
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 764
    :cond_2
    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 346
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 660
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 644
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 671
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 652
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 444
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 456
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 558
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    .prologue
    .line 621
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 509
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 565
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 520
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .line 382
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 385
    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    .prologue
    .line 686
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 687
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 689
    const/4 v0, 0x1

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 694
    const/4 v0, 0x1

    .line 697
    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 260
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 262
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 330
    new-instance v2, Lcom/android/contacts/common/list/DirectoryListLoader;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 331
    .local v2, "loader":Lcom/android/contacts/common/list/DirectoryListLoader;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDirectorySearchMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 332
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 341
    .end local v2    # "loader":Lcom/android/contacts/common/list/DirectoryListLoader;
    :goto_0
    return-object v2

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    .line 337
    .local v2, "loader":Landroid/content/CursorLoader;
    if-eqz p2, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 340
    .local v0, "directoryId":J
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    goto :goto_0

    .line 337
    .end local v0    # "directoryId":J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 703
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .line 707
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    .line 708
    .local v0, "searchMode":Z
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 709
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 710
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 711
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 715
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 722
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 724
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    .line 725
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 726
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 732
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 736
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 737
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 738
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 739
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 743
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 746
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 748
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 749
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 750
    return-void

    :cond_2
    move v1, v2

    .line 739
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 820
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 823
    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 800
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 802
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 803
    .local v0, "adjPosition":I
    if-ltz v0, :cond_0

    .line 804
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(IJ)V

    .line 806
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, -0x1

    .line 396
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 401
    .local v1, "loaderId":I
    if-ne v1, v4, :cond_2

    .line 402
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 403
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 408
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 409
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_0

    .line 410
    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 411
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 418
    .end local v0    # "directorySearchMode":I
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 419
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 425
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 428
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setProfileHeader()V

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->showCount(ILandroid/database/Cursor;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 847
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 848
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 849
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSIMStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 850
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 871
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 838
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 839
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 840
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSIMStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 843
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 787
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 791
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 289
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 291
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 299
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 463
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 464
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    .line 466
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 830
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 833
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 469
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 470
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->onDataReload()V

    .line 471
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 472
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    .line 473
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 474
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 270
    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 271
    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 272
    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 273
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    .line 274
    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 275
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 276
    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 277
    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 278
    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 279
    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 280
    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 281
    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 284
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .param p1, "displayOrder"    # I

    .prologue
    .line 664
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 665
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 668
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 191
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 682
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 683
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 648
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 649
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 198
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 199
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    .line 200
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 201
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setIncludeProfile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 577
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 578
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 581
    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 656
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 657
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;

    .prologue
    .line 214
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 215
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 553
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 554
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 555
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 488
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 489
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 630
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 636
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 641
    :cond_1
    return-void

    .line 634
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 573
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 574
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 592
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    .line 593
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 595
    if-nez p1, :cond_0

    .line 596
    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 597
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 604
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    .line 605
    if-nez p1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v2, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 618
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 593
    goto :goto_0

    :cond_5
    move v1, v2

    .line 615
    goto :goto_1
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 499
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 500
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 501
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 506
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 569
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 570
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .prologue
    .line 675
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    .line 676
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 679
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 524
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 525
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 526
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 528
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 513
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 514
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 515
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 517
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 481
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected startLoading()V
    .locals 6

    .prologue
    .line 302
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    .line 325
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 308
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    .line 309
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 310
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 311
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 312
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 313
    .local v0, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 314
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    .line 315
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 309
    .end local v0    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 324
    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method
