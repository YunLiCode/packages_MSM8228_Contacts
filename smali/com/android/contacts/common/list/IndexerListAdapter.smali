.class public abstract Lcom/android/contacts/common/list/IndexerListAdapter;
.super Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.source "IndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    .line 59
    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method protected abstract clearPinnedHeaderContactsCount(Landroid/view/View;)V
.end method

.method public configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 11
    .param p1, "listView"    # Lcom/android/contacts/common/list/PinnedHeaderListView;

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 205
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 169
    .local v0, "index":I
    iget-object v9, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 170
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v2

    .line 173
    .local v2, "listPosition":I
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v7, v2, v9

    .line 175
    .local v7, "position":I
    const/4 v8, -0x1

    .line 176
    .local v8, "section":I
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 177
    .local v5, "partition":I
    iget v9, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    if-ne v5, v9, :cond_3

    .line 178
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/IndexerListAdapter;->getOffsetInPartition(I)I

    move-result v4

    .line 179
    .local v4, "offset":I
    if-eq v4, v10, :cond_3

    .line 180
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v8

    .line 184
    .end local v4    # "offset":I
    :cond_3
    if-ne v8, v10, :cond_4

    .line 185
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    iget-object v9, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/contacts/common/list/IndexerListAdapter;->setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 188
    if-nez v8, :cond_7

    .line 189
    iget-object v9, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/IndexerListAdapter;->setPinnedHeaderContactsCount(Landroid/view/View;)V

    .line 194
    :goto_1
    iget v9, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForPartition(I)I

    move-result v6

    .line 195
    .local v6, "partitionStart":I
    iget v9, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/IndexerListAdapter;->hasHeader(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 196
    add-int/lit8 v6, v6, 0x1

    .line 200
    :cond_5
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v9

    add-int v3, v6, v9

    .line 201
    .local v3, "nextSectionPosition":I
    add-int/lit8 v9, v3, -0x1

    if-ne v7, v9, :cond_6

    const/4 v1, 0x1

    .line 202
    .local v1, "isLastInSection":Z
    :cond_6
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto :goto_0

    .line 191
    .end local v1    # "isLastInSection":Z
    .end local v3    # "nextSectionPosition":I
    .end local v6    # "partitionStart":I
    :cond_7
    iget-object v9, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/IndexerListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected abstract createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    # getter for: Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I
    invoke-static {v1}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->access$000(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    .line 234
    :goto_0
    return-object v1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    # setter for: Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I
    invoke-static {v1, p1}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->access$002(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;I)I

    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 220
    .local v0, "section":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    .line 222
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 228
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    .line 234
    .end local v0    # "section":I
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    goto :goto_0

    .line 224
    .restart local v0    # "section":I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    .line 225
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 228
    goto :goto_2

    .line 230
    .end local v0    # "section":I
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    .line 231
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    .line 232
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/common/list/IndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 156
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, -0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, -0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .locals 0
    .param p1, "partition"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    .line 97
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 105
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->invalidate()V

    .line 106
    return-void
.end method

.method protected abstract setPinnedHeaderContactsCount(Landroid/view/View;)V
.end method

.method protected abstract setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 89
    return-void
.end method
