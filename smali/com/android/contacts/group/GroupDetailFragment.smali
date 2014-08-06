.class public Lcom/android/contacts/group/GroupDetailFragment;
.super Landroid/app/Fragment;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;,
        Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;,
        Lcom/android/contacts/group/GroupDetailFragment$Listener;
    }
.end annotation


# instance fields
.field private listAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mAccountNameString:Ljava/lang/String;

.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccountTypeString:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

.field private mChooseTargetDlg:Landroid/app/AlertDialog;

.field private mCloseActivityAfterDelete:Z

.field private mConnection:Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

.field private final mContactTileListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mGroupSize:Landroid/widget/TextView;

.field private mGroupSourceView:Landroid/view/View;

.field private mGroupSourceViewContainer:Landroid/view/ViewGroup;

.field private mGroupTitle:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private final mGroupsListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsMembershipEditable:Z

.field private mIsReadOnly:Z

.field private mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mMemberListView:Landroid/widget/ListView;

.field private mOptionsMenuGroupDeletable:Z

.field private mOptionsMenuGroupEditable:Z

.field private mOptionsMenuMemberMoveable:Z

.field private mOptionsMenuMemberVisible:Z

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mRetryCount:I

.field private mRootView:Landroid/view/View;

.field private mShowGroupActionInActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 154
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRetryCount:I

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberMoveable:Z

    .line 274
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$1;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 297
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$2;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 329
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$3;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 352
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$4;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupsListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupsMetadataLoader()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateMemberMoveable(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->listAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/group/GroupDetailFragment;Ljava/util/ArrayList;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/group/GroupDetailFragment;->handleMembers(Ljava/util/ArrayList;JI)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/contacts/group/GroupDetailFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mConnection:Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

    return-object v0
.end method

.method static synthetic access$1910(Lcom/android/contacts/group/GroupDetailFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRetryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMembersLoader()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateSize(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupDetailFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/group/GroupDetailFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 381
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 382
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    .line 384
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;

    .line 385
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    .line 386
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    .line 387
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    .line 388
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    .line 389
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 393
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "accountTypeString":Ljava/lang/String;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "dataSet":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v0    # "accountTypeString":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private configurePhotoLoader()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 241
    :cond_2
    return-void
.end method

.method private getAddress(Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "forEmail"    # Z

    .prologue
    .line 665
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 666
    .local v0, "choiceSet":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 667
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 669
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 670
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    if-eqz p2, :cond_0

    .line 672
    const-string v4, " ,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 674
    :cond_0
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 677
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private handleMembers(Ljava/util/ArrayList;JI)V
    .locals 14
    .param p2, "targetId"    # J
    .param p4, "opType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "memberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startMemsOpService()V

    .line 784
    iget-object v11, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v11, :cond_0

    .line 785
    new-instance v11, Landroid/os/HandlerThread;

    const-string v12, "GroupDetailFragment"

    invoke-direct {v11, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 786
    iget-object v11, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 787
    new-instance v11, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;

    iget-object v12, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Landroid/os/Looper;)V

    iput-object v11, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandler:Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;

    .line 789
    :cond_0
    const-wide/16 v9, 0x0

    .line 790
    .local v9, "srcId":J
    const-wide/16 v3, 0x0

    .line 791
    .local v3, "destId":J
    packed-switch p4, :pswitch_data_0

    .line 803
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v8, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 805
    .local v0, "contact":Lcom/android/contacts/group/GroupEditorFragment$Member;
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    .line 806
    .local v1, "contactId":J
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "displayName":Ljava/lang/String;
    new-instance v7, Lcom/android/contacts/multichoice/MultiChoiceRequest;

    invoke-direct {v7, v1, v2, v5}, Lcom/android/contacts/multichoice/MultiChoiceRequest;-><init>(JLjava/lang/String;)V

    .line 808
    .local v7, "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    invoke-virtual {v7, v9, v10, v3, v4}, Lcom/android/contacts/multichoice/MultiChoiceRequest;->setGroupsId(JJ)V

    .line 809
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 793
    .end local v0    # "contact":Lcom/android/contacts/group/GroupEditorFragment$Member;
    .end local v1    # "contactId":J
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "request":Lcom/android/contacts/multichoice/MultiChoiceRequest;
    .end local v8    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    :pswitch_0
    iget-wide v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    .line 794
    goto :goto_0

    .line 796
    :pswitch_1
    iget-wide v9, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    .line 797
    goto :goto_0

    .line 799
    :pswitch_2
    iget-wide v9, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    .line 800
    move-wide/from16 v3, p2

    goto :goto_0

    .line 812
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/multichoice/MultiChoiceRequest;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 813
    iget-object v11, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandler:Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;

    iget-object v12, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandler:Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;

    const/16 v13, 0xc8

    invoke-virtual {v12, v13}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 818
    :goto_2
    return-void

    .line 815
    :cond_2
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRetryCount:I

    .line 816
    iget-object v11, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandler:Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;

    iget-object v12, p0, Lcom/android/contacts/group/GroupDetailFragment;->mHandler:Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;

    const/16 v13, 0x64

    invoke-virtual {v12, v13, v8}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/GroupDetailFragment$SendRequestHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showChooseTargetDlg(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "memberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    const/4 v3, 0x0

    .line 607
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->listAdapter:Landroid/widget/SimpleCursorAdapter;

    if-eqz v1, :cond_0

    .line 609
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 611
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->listAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v2, Lcom/android/contacts/group/GroupDetailFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/group/GroupDetailFragment$6;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 622
    const v1, 0x7f0900dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 623
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 624
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;

    .line 625
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 630
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private startAddMembers()V
    .locals 4

    .prologue
    .line 689
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_ADD_GROUP_MEMBERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v1, "account_type"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v1, "data_set"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 694
    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 695
    return-void
.end method

.method private startDelMembers()V
    .locals 4

    .prologue
    .line 697
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_DEL_GROUP_MEMBERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v1, "account_type"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v1, "data_set"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 702
    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 703
    return-void
.end method

.method private startEmailGroup()V
    .locals 4

    .prologue
    .line 711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_SEND_GROUP_EMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 713
    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 714
    return-void
.end method

.method private startGroupMembersLoader()V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 267
    return-void
.end method

.method private startGroupMetadataLoader()V
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 260
    return-void
.end method

.method private startGroupsMetadataLoader()V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupsListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 272
    return-void
.end method

.method private startMoveMembers()V
    .locals 4

    .prologue
    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_MOV_GROUP_MEMBERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v1, "account_type"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v1, "data_set"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 686
    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 687
    return-void
.end method

.method private startSMSGroup()V
    .locals 4

    .prologue
    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_SEND_GROUP_SMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 707
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 708
    return-void
.end method

.method private updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "accountTypeString"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 444
    .local v1, "manager":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 447
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsMembershipEditable:Z

    .line 452
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v2, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 460
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 461
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    .line 465
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 466
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 471
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-static {v2, v3, p1, p2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/group/GroupDetailFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/group/GroupDetailFragment$5;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/common/model/account/AccountType;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMemberMoveable(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 370
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberMoveable:Z

    .line 371
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberMoveable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->listAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 377
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 378
    return-void

    :cond_0
    move v0, v6

    .line 370
    goto :goto_0

    .line 373
    :cond_1
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x109000f

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v6

    new-array v5, v3, [I

    const v3, 0x1020014

    aput v3, v5, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->listAdapter:Landroid/widget/SimpleCursorAdapter;

    goto :goto_1
.end method

.method private updateSize(I)V
    .locals 8
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 413
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 414
    const/4 v1, 0x0

    .line 424
    .local v1, "groupSizeString":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 425
    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :goto_1
    if-lez p1, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberVisible:Z

    .line 431
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 432
    return-void

    .line 416
    .end local v1    # "groupSizeString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0006

    invoke-virtual {v5, v6, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "groupSizeTemplateString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v6, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 420
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "groupSizeString":Ljava/lang/String;
    goto :goto_0

    .line 427
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "groupSizeTemplateString":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v5, v1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 430
    goto :goto_2
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupTitleUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeActivityAfterDelete(Z)V
    .locals 0
    .param p1, "closeActivity"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    .line 600
    return-void
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method public getGroupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isGroupDeletable()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupEditableAndPresent()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsMembershipEditable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMembersOpRunning()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

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
    .locals 2

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupEditableAndPresent()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGroup(Landroid/net/Uri;)V
    .locals 0
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    .line 222
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMetadataLoader()V

    .line 223
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 634
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 663
    :goto_0
    return-void

    .line 638
    :cond_0
    const-string v3, "group_members"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 640
    .local v1, "memberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 657
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v2, "smsIntent":Landroid/content/Intent;
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v3, "address"

    invoke-direct {p0, p3, v4}, Lcom/android/contacts/group/GroupDetailFragment;->getAddress(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 642
    .end local v2    # "smsIntent":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->showChooseTargetDlg(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 645
    :sswitch_2
    invoke-direct {p0, v1, v6, v7, v4}, Lcom/android/contacts/group/GroupDetailFragment;->handleMembers(Ljava/util/ArrayList;JI)V

    goto :goto_0

    .line 648
    :sswitch_3
    invoke-direct {p0, v1, v6, v7, v5}, Lcom/android/contacts/group/GroupDetailFragment;->handleMembers(Ljava/util/ArrayList;JI)V

    goto :goto_0

    .line 651
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mailto"

    invoke-direct {p0, p3, v5}, Lcom/android/contacts/group/GroupDetailFragment;->getAddress(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 640
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x16 -> :sswitch_4
        0x21 -> :sswitch_2
        0x2c -> :sswitch_3
        0x37 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 176
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 177
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 182
    .local v0, "columnCount":I
    new-instance v2, Lcom/android/contacts/list/GroupMemberTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-direct {v2, p1, v3, v0}, Lcom/android/contacts/list/GroupMemberTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;I)V

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    .line 184
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->configurePhotoLoader()V

    .line 185
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 505
    const v0, 0x7f100009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 506
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setHasOptionsMenu(Z)V

    .line 196
    const v0, 0x7f04004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    .line 201
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    .line 203
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 564
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 570
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;Z)V

    goto :goto_1

    .line 575
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startMoveMembers()V

    goto :goto_1

    .line 579
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startAddMembers()V

    goto :goto_1

    .line 583
    :pswitch_4
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startDelMembers()V

    goto :goto_1

    .line 587
    :pswitch_5
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startSMSGroup()V

    goto :goto_1

    .line 591
    :pswitch_6
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startEmailGroup()V

    goto :goto_1

    .line 564
    :pswitch_data_0
    .packed-switch 0x7f0b0140
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    .line 530
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupEditableAndPresent()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    .line 531
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isMembersOpRunning()Z

    move-result v5

    .line 533
    .local v5, "isMembersOperating":Z
    const v8, 0x7f0b0140

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 534
    .local v3, "editMenu":Landroid/view/MenuItem;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 535
    if-nez v5, :cond_2

    move v8, v9

    :goto_2
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 537
    const v8, 0x7f0b0141

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 538
    .local v2, "deleteMenu":Landroid/view/MenuItem;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    if-nez v5, :cond_3

    move v8, v9

    :goto_3
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 541
    const v8, 0x7f0b0142

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 542
    .local v6, "moveMembersMenu":Landroid/view/MenuItem;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberVisible:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberMoveable:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_4
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 543
    if-nez v5, :cond_5

    move v8, v9

    :goto_5
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 545
    const v8, 0x7f0b0143

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 546
    .local v0, "addMembersMenu":Landroid/view/MenuItem;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 547
    if-nez v5, :cond_6

    move v8, v9

    :goto_6
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 549
    const v8, 0x7f0b0144

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 550
    .local v1, "delMembersMenu":Landroid/view/MenuItem;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberVisible:Z

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 551
    if-nez v5, :cond_7

    move v8, v9

    :goto_7
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 553
    const v8, 0x7f0b0145

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 554
    .local v7, "smsGroupMenu":Landroid/view/MenuItem;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberVisible:Z

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 555
    if-nez v5, :cond_8

    move v8, v9

    :goto_8
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 557
    const v8, 0x7f0b0146

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 558
    .local v4, "emailGroupMenu":Landroid/view/MenuItem;
    iget-boolean v8, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuMemberVisible:Z

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    if-nez v5, :cond_9

    :goto_9
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 560
    return-void

    .end local v0    # "addMembersMenu":Landroid/view/MenuItem;
    .end local v1    # "delMembersMenu":Landroid/view/MenuItem;
    .end local v2    # "deleteMenu":Landroid/view/MenuItem;
    .end local v3    # "editMenu":Landroid/view/MenuItem;
    .end local v4    # "emailGroupMenu":Landroid/view/MenuItem;
    .end local v5    # "isMembersOperating":Z
    .end local v6    # "moveMembersMenu":Landroid/view/MenuItem;
    .end local v7    # "smsGroupMenu":Landroid/view/MenuItem;
    :cond_0
    move v8, v10

    .line 529
    goto/16 :goto_0

    :cond_1
    move v8, v10

    .line 530
    goto/16 :goto_1

    .restart local v3    # "editMenu":Landroid/view/MenuItem;
    .restart local v5    # "isMembersOperating":Z
    :cond_2
    move v8, v10

    .line 535
    goto :goto_2

    .restart local v2    # "deleteMenu":Landroid/view/MenuItem;
    :cond_3
    move v8, v10

    .line 539
    goto :goto_3

    .restart local v6    # "moveMembersMenu":Landroid/view/MenuItem;
    :cond_4
    move v8, v10

    .line 542
    goto :goto_4

    :cond_5
    move v8, v10

    .line 543
    goto :goto_5

    .restart local v0    # "addMembersMenu":Landroid/view/MenuItem;
    :cond_6
    move v8, v10

    .line 547
    goto :goto_6

    .restart local v1    # "delMembersMenu":Landroid/view/MenuItem;
    :cond_7
    move v8, v10

    .line 551
    goto :goto_7

    .restart local v7    # "smsGroupMenu":Landroid/view/MenuItem;
    :cond_8
    move v8, v10

    .line 555
    goto :goto_8

    .restart local v4    # "emailGroupMenu":Landroid/view/MenuItem;
    :cond_9
    move v9, v10

    .line 559
    goto :goto_9
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 492
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 496
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "GroupDetailFragment"

    const-string v1, "onStop, cancel groups list dlg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 217
    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/group/GroupDetailFragment$Listener;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    .line 245
    return-void
.end method

.method public setQuickContact(Z)V
    .locals 1
    .param p1, "enableQuickContact"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->enableQuickContact(Z)V

    .line 227
    return-void
.end method

.method public setShowGroupSourceInActionBar(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    .line 249
    return-void
.end method

.method startMemsOpService()V
    .locals 4

    .prologue
    .line 821
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/group/GroupDetailFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mConnection:Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

    .line 822
    const-string v0, "GroupDetailFragment"

    const-string v1, "Bind to MultiChoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 825
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 826
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mConnection:Lcom/android/contacts/group/GroupDetailFragment$MembersOperationConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 827
    return-void
.end method
