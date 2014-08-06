.class public Lcom/android/contacts/list/JoinContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "JoinContactListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mMaxJoinCount:I

.field private mRawContactsCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetContactId:J

.field private mTargetRawContactsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/JoinContactListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setIndexedPartition(I)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setDirectorySearchMode(I)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mMaxJoinCount:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mRawContactsCountMap:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method private inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(ZZ)V

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    .line 80
    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 207
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 226
    packed-switch p2, :pswitch_data_0

    .line 242
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported partition index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    move-object v3, p1

    .line 228
    check-cast v3, Lcom/android/contacts/common/list/ContactListItemView;

    .line 229
    .local v3, "view":Lcom/android/contacts/common/list/ContactListItemView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 231
    invoke-virtual {p0, v3, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 246
    :goto_0
    iget v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mMaxJoinCount:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetRawContactsCount:I

    if-lez v4, :cond_0

    .line 247
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 248
    .local v0, "contactId":J
    iget-object v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mRawContactsCountMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "rawContactsCount":I
    move-object v3, p1

    .line 251
    check-cast v3, Lcom/android/contacts/common/list/ContactListItemView;

    .line 252
    iget v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetRawContactsCount:I

    add-int/2addr v4, v2

    iget v7, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mMaxJoinCount:I

    if-gt v4, v7, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setEnabled(Z)V

    .line 253
    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0900f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 257
    .end local v0    # "contactId":J
    .end local v2    # "rawContactsCount":I
    :cond_0
    return-void

    .end local v3    # "view":Lcom/android/contacts/common/list/ContactListItemView;
    :pswitch_1
    move-object v3, p1

    .line 235
    check-cast v3, Lcom/android/contacts/common/list/ContactListItemView;

    .line 236
    .restart local v3    # "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0, v3, p4, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 237
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 238
    invoke-virtual {p0, v3, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    .restart local v0    # "contactId":J
    .restart local v2    # "rawContactsCount":I
    :cond_1
    move v4, v6

    .line 252
    goto :goto_1

    .line 253
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0900f8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 2
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->configureDefaultPartition(ZZ)V

    .line 171
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 11
    .param p1, "cursorLoader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 88
    move-object v3, p1

    check-cast v3, Lcom/android/contacts/list/JoinContactLoader;

    .line 90
    .local v3, "loader":Lcom/android/contacts/list/JoinContactLoader;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 91
    .local v1, "builder":Landroid/net/Uri$Builder;
    iget-wide v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    const-string v4, "suggestions"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "filter":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    :cond_0
    const-string v4, "limit"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSuggestionUri(Landroid/net/Uri;)V

    .line 104
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/JoinContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setProjection([Ljava/lang/String;)V

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/list/JoinContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "no_sim"

    const-string v6, "com.android.sim"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, "allContactsUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/contacts/list/JoinContactLoader;->setUri(Landroid/net/Uri;)V

    .line 121
    const-string v4, "_id!=?"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSelection(Ljava/lang/String;)V

    .line 122
    new-array v4, v8, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 124
    const-string v4, "sort_key"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    .line 128
    :goto_1
    return-void

    .line 114
    .end local v0    # "allContactsUri":Landroid/net/Uri;
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/list/JoinContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "no_sim"

    const-string v6, "com.android.sim"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "allContactsUri":Landroid/net/Uri;
    goto :goto_0

    .line 126
    :cond_2
    const-string v4, "sort_key_alt"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 287
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 288
    .local v0, "contactId":J
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemViewType(II)I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected isEnabled(II)Z
    .locals 7
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 267
    iget v3, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mMaxJoinCount:I

    if-gez v3, :cond_0

    .line 268
    sget-object v3, Lcom/android/contacts/list/JoinContactListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "isEnabled() mMaxJoinCount is not limit."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->isEnabled(II)Z

    move-result v3

    .line 282
    :goto_0
    return v3

    .line 271
    :cond_0
    iget v3, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetRawContactsCount:I

    if-gtz v3, :cond_1

    .line 272
    sget-object v3, Lcom/android/contacts/list/JoinContactListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "isEnabled() mTargetRawContactsCount is unavailable."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->isEnabled(II)Z

    move-result v3

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/JoinContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 276
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 277
    sget-object v3, Lcom/android/contacts/list/JoinContactListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "isEnabled() cursor is null."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->isEnabled(II)Z

    move-result v3

    goto :goto_0

    .line 280
    :cond_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 281
    .local v0, "contactId":J
    sget-object v3, Lcom/android/contacts/list/JoinContactListAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnabled(partition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", contactId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mRawContactsCountMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetRawContactsCount:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mMaxJoinCount:I

    if-gt v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v2, 0x7f0b0063

    const v1, 0x7f04005f

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090123

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 194
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090124

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 212
    packed-switch p2, :pswitch_data_0

    .line 217
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRawContactsCountMap(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "rawContactsCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mMaxJoinCount:I

    if-gez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mRawContactsCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mRawContactsCountMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mRawContactsCountMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetRawContactsCount:I

    .line 164
    :goto_2
    sget-object v0, Lcom/android/contacts/list/JoinContactListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetContactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rawContactsCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetRawContactsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mRawContactsCountMap:Ljava/util/HashMap;

    goto :goto_1

    .line 162
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetRawContactsCount:I

    goto :goto_2
.end method

.method public setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 137
    return-void
.end method

.method public setTargetContactId(J)V
    .locals 0
    .param p1, "targetContactId"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    .line 84
    return-void
.end method
