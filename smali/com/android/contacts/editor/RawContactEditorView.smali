.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactEditorView.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mAddFieldButton:Landroid/widget/Button;

.field private mAddOrganizationButton:Landroid/view/View;

.field private mAutoAddToDefaultGroup:Z

.field private mCapacityTextView:Landroid/widget/TextView;

.field private mFields:Landroid/view/ViewGroup;

.field private mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsPopupMenuShowing:Z

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mOrganizationSectionViewContainer:Landroid/view/ViewGroup;

.field private mOrganizationView:Landroid/view/View;

.field private mOrganizationViewExpanded:Z

.field private mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

.field private mPhoneticNameAdded:Z

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRawContactId:J

.field private mState:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/RawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationViewExpanded:Z

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 118
    sput-object p1, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/android/contacts/common/list/AccountCapacityLoader;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddOrganizationButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationSectionViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationViewExpanded:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsPopupMenuShowing:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    .prologue
    .line 463
    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    if-nez v8, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v4, 0x0

    .line 469
    .local v4, "hasGroupMembership":Z
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 470
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/ValuesDelta;

    .line 472
    .local v7, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v6

    .line 473
    .local v6, "id":Ljava/lang/Long;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 474
    const/4 v4, 0x1

    .line 480
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":Ljava/lang/Long;
    .end local v7    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    if-nez v4, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getDefaultGroupId()J

    move-result-wide v0

    .line 482
    .local v0, "defaultGroupId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 483
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    .line 484
    .local v3, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->setGroupRowId(J)V

    goto :goto_0
.end method

.method private getDefaultGroupId()J
    .locals 11

    .prologue
    const/4 v10, 0x5

    .line 494
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "accountType":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "accountDataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 498
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 499
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 501
    .local v7, "type":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "dataSet":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 504
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 505
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 511
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private getSectionViewsWithoutFields()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/KindSectionView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    .local v1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 548
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 549
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 550
    check-cast v4, Lcom/android/contacts/editor/KindSectionView;

    .line 553
    .local v4, "sectionView":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 547
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .restart local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    .line 558
    .local v3, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 561
    :cond_2
    const-string v5, "#displayName"

    iget-object v6, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 565
    const-string v5, "#phoneticName"

    iget-object v6, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v5}, Lcom/android/contacts/editor/PhoneticNameEditorView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 573
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_4
    return-object v1
.end method

.method private showAddInformationPopupWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 587
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    .line 589
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getSectionViewsWithoutFields()Ljava/util/ArrayList;

    move-result-object v0

    .line 593
    .local v0, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-direct {v3, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 594
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 595
    .local v2, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 596
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v1, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v4, Lcom/android/contacts/editor/RawContactEditorView$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/RawContactEditorView$3;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 606
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v4, Lcom/android/contacts/editor/RawContactEditorView$4;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/editor/RawContactEditorView$4;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 628
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 629
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsPopupMenuShowing:Z

    .line 630
    return-void
.end method

.method private updatePhoneticNameVisibility()V
    .locals 3

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 526
    .local v0, "showByDefault":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    if-eqz v1, :cond_1

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 528
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->requestFocus()Z

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNameEditor()Lcom/android/contacts/editor/StructuredNameEditorView;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public isIsPopupMenuShowing()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsPopupMenuShowing:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 159
    const v0, 0x7f0b00f3

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 160
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/StructuredNameEditorView;->setDeletable(Z)V

    .line 162
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhoneticNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    .line 163
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setDeletable(Z)V

    .line 165
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    .line 167
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040067

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationView:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationView:Landroid/view/View;

    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddOrganizationButton:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationView:Landroid/view/View;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationSectionViewContainer:Landroid/view/ViewGroup;

    .line 178
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCapacityTextView:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 200
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 201
    check-cast v0, Landroid/os/Bundle;

    .line 202
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "organizationViewExpanded"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationViewExpanded:Z

    .line 203
    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationViewExpanded:Z

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationSectionViewContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddOrganizationButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_0
    const-string v1, "superInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 215
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "organizationViewExpanded"

    iget-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationViewExpanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v1, "superInstanceState"

    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    return-object v0
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 454
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 127
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 141
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 142
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    .line 446
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 447
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 450
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 21
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 227
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 233
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v6, v7}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->setId(I)V

    .line 238
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 239
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 240
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 246
    .local v19, "subscription":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mCapacityTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    if-eqz p4, :cond_5

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "accountName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v6, 0x7f09019a

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 287
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 291
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->setHasPhotoEditor(Z)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->setVisibility(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 302
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v3, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040059

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 311
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 313
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v3, :cond_3

    .line 315
    iget-object v13, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 316
    .local v13, "mimeType":Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 318
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 319
    .local v5, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v3, "com.android.sim"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v6, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070022

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 325
    .local v14, "paddingRight":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->getPaddingLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v7}, Lcom/android/contacts/editor/StructuredNameEditorView;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v14}, Lcom/android/contacts/common/util/ContactDisplayUtils;->dipToPx(Landroid/content/Context;F)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/editor/StructuredNameEditorView;->getPaddingBottom()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v6, v7, v8, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->setPadding(IIII)V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    goto/16 :goto_3

    .line 253
    .end local v5    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "paddingRight":F
    :cond_4
    sget-object v3, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 254
    .local v10, "accountType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f09019b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v10, v8, v20

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 259
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 260
    .restart local v9    # "accountName":Ljava/lang/String;
    sget-object v3, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 262
    .restart local v10    # "accountType":Ljava/lang/CharSequence;
    const-string v3, "com.android.localphone"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const v6, 0x7f090046

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 285
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f090155

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v10, v8, v20

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 264
    :cond_6
    const-string v3, "com.android.sim"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 265
    sget-object v3, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const v6, 0x7f0900e5

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mCapacityTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mCapacityTextView:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v9}, Lcom/android/contacts/common/list/AccountCapacityLoader;->loadAccountCapacity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 272
    :cond_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 273
    sget-object v3, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f090046

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 275
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f090156

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v9, v8, v20

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 281
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 291
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 331
    .restart local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .restart local v5    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "mimeType":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v6, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const-string v6, "#phoneticName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_3

    .line 338
    .end local v5    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_c
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 340
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 341
    .restart local v5    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_3

    .line 342
    .end local v5    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_d
    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_3

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/RawContactDelta;)V

    goto/16 :goto_3

    .line 346
    :cond_e
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_12

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/editor/KindSectionView;

    .line 349
    .local v18, "sectionView":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 350
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    const-string v3, "com.android.sim"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 353
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/common/util/ContactPhoneUtils;->canSaveEmail(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v6}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 356
    .local v11, "emailEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 357
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 358
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v3

    if-nez v3, :cond_11

    .line 359
    const-string v3, "USIMContactEditor"

    const-string v6, "Edit USIM contact after email full"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 361
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 362
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 367
    .end local v11    # "emailEntryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v18    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_12
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_15

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/editor/KindSectionView;

    .line 370
    .restart local v18    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    const-string v3, "com.android.sim"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 371
    invoke-static {}, Lcom/android/contacts/common/model/account/SimAccountType;->getPhoneTypeHome()Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v15

    .line 372
    .local v15, "phoneTypeHome":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/common/util/ContactPhoneUtils;->canSaveAnr(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 373
    const/4 v3, 0x1

    iput v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 374
    iget-object v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 375
    iget-object v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    .end local v15    # "phoneTypeHome":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_13
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 385
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 378
    .restart local v15    # "phoneTypeHome":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_14
    const/4 v3, 0x2

    iput v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 379
    iget-object v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 380
    iget-object v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 387
    .end local v15    # "phoneTypeHome":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v18    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_15
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/editor/KindSectionView;

    .line 391
    .local v16, "section":Lcom/android/contacts/editor/KindSectionView;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setTitleVisible(Z)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 393
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 396
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 401
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationSectionViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationSectionViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddOrganizationButton:Landroid/view/View;

    new-instance v6, Lcom/android/contacts/editor/RawContactEditorView$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/contacts/editor/RawContactEditorView$2;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mOrganizationView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 420
    .end local v16    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_17
    iget-object v3, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/editor/KindSectionView;

    .line 423
    .restart local v16    # "section":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 424
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 429
    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v16    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_19

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 433
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getSectionViewsWithoutFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 439
    .local v17, "sectionCount":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-lez v17, :cond_1a

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 439
    :cond_1a
    const/16 v3, 0x8

    goto :goto_6
.end method

.method public showAddInfoPopupWindow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 577
    if-eqz p1, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0
.end method
