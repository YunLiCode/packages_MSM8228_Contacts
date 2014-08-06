.class public Lcom/android/contacts/editor/GroupMembershipView;
.super Landroid/widget/LinearLayout;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,
        Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedNewGroup:Z

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroupId:J

.field private mDefaultGroupVisibilityKnown:Z

.field private mDefaultGroupVisible:Z

.field private mFavoritesGroupId:J

.field private mGroupList:Landroid/widget/TextView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private mNoGroupString:Ljava/lang/String;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I

.field private mState:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/GroupMembershipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/GroupMembershipView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    return p1
.end method

.method private createNewGroup()V
    .locals 5

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 413
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    new-instance v4, Lcom/android/contacts/editor/GroupMembershipView$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/GroupMembershipView$1;-><init>(Lcom/android/contacts/editor/GroupMembershipView;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    .line 424
    return-void
.end method

.method private hasMembership(J)Z
    .locals 7
    .param p1, "groupId"    # J

    .prologue
    const/4 v4, 0x1

    .line 391
    iget-wide v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    :goto_0
    return v4

    .line 395
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    .line 398
    .local v3, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 399
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v2

    .line 400
    .local v2, "id":Ljava/lang/Long;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    goto :goto_0

    .line 406
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isGroupChecked(J)Z
    .locals 5
    .param p1, "groupId"    # J

    .prologue
    .line 380
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    .line 381
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 382
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 383
    .local v2, "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 384
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v3

    .line 387
    .end local v2    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :goto_1
    return v3

    .line 381
    .restart local v2    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v2    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateView()V
    .locals 12

    .prologue
    .line 211
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 213
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    const/4 v0, 0x0

    .line 218
    .local v0, "accountHasGroups":Z
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 219
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 223
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 224
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "accountType":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "dataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 229
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 230
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_5

    .line 232
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 242
    :goto_2
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 244
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "title":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 247
    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 233
    .end local v7    # "title":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_6

    .line 235
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    goto :goto_2

    .line 237
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 255
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    :cond_7
    if-nez v0, :cond_8

    .line 256
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    goto/16 :goto_0

    .line 260
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-nez v8, :cond_9

    .line 261
    const v8, 0x7f0b00c5

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    .line 262
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :cond_9
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 266
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_a

    .line 267
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSecondaryTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    :goto_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 275
    iget-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    if-nez v8, :cond_1

    .line 277
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 278
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    goto/16 :goto_0

    .line 270
    :cond_a
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 277
    :cond_b
    const/4 v8, 0x0

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v11}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 327
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v11, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f040055

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12, v13}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;-><init>(Lcom/android/contacts/editor/GroupMembershipView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, -0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 292
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "dataSet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 299
    .local v6, "groupId":J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v11, v6, v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v11, v6, v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v11, :cond_1

    .line 301
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v3

    .line 303
    .local v3, "checked":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v12, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct {v12, v6, v7, v10, v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v11, v12}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 308
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "checked":Z
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v10    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v12, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const-wide/16 v13, 0x85

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f09018f

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v11, v12}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->add(Ljava/lang/Object;)V

    .line 311
    new-instance v11, Landroid/widget/ListPopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 312
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->show()V

    .line 318
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 319
    .local v9, "listView":Landroid/widget/ListView;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 320
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v11}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v4

    .line 322
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v11, v8}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v11}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v11

    invoke-virtual {v9, v8, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 322
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 326
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 332
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 334
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 160
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    .line 162
    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSecondaryTextColor:I

    .line 163
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    const v2, 0x7f090172

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
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
    .line 338
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v8, p1

    check-cast v8, Landroid/widget/ListView;

    .line 339
    .local v8, "list":Landroid/widget/ListView;
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    .line 341
    .local v0, "count":I
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 342
    add-int/lit8 v9, v0, -0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 343
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V

    .line 377
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 348
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v9, v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 347
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 352
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 353
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v1, :cond_4

    .line 354
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 355
    .local v2, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 356
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v3

    .line 357
    .local v3, "groupId":Ljava/lang/Long;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v9, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/contacts/editor/GroupMembershipView;->isGroupChecked(J)Z

    move-result v9

    if-nez v9, :cond_2

    .line 360
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 367
    .end local v2    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "groupId":Ljava/lang/Long;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    .line 368
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v9, v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 369
    .local v7, "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    .line 370
    .local v3, "groupId":J
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v9

    if-nez v9, :cond_5

    .line 371
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-static {v9, v10}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 372
    .restart local v2    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setGroupRowId(J)V

    .line 367
    .end local v2    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 376
    .end local v3    # "groupId":J
    .end local v7    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 172
    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 182
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 184
    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 186
    invoke-virtual {p0, p0}, Lcom/android/contacts/editor/GroupMembershipView;->onClick(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    .line 190
    .local v3, "position":I
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 191
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/GroupMembershipView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 198
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v3    # "position":I
    :cond_0
    return-void
.end method

.method public setKind(Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 176
    const v1, 0x7f0b009a

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    .local v0, "kindTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public setState(Lcom/android/contacts/model/RawContactDelta;)V
    .locals 2
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;

    .prologue
    const/4 v1, 0x0

    .line 201
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 202
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 207
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 208
    return-void
.end method
