.class public Lcom/android/contacts/list/GroupMemberTileAdapter;
.super Lcom/android/contacts/common/list/ContactTileAdapter;
.source "GroupMemberTileAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3, "numCols"    # I

    .prologue
    .line 35
    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected bindColumnIndices()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberTileAdapter;->getRowCount(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getDividerPosition(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 61
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/GroupMemberTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 76
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;>;"
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    .line 78
    .local v1, "contactIndex":I
    const/4 v0, 0x0

    .local v0, "columnCounter":I
    :goto_0
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/list/GroupMemberTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object v2
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    .line 51
    return-void
.end method
