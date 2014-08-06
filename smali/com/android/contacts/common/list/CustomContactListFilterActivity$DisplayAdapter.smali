.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 550
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 551
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 552
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 553
    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 639
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 640
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 642
    .local v1, "validChild":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 643
    iget-object v2, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 645
    :goto_1
    return-object v2

    .line 640
    .end local v1    # "validChild":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 645
    .restart local v1    # "validChild":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildId(II)J
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 652
    .local v0, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 654
    .local v1, "childId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 656
    .end local v1    # "childId":Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 607
    if-nez p4, :cond_0

    .line 608
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04002d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 612
    :cond_0
    const v7, 0x1020014

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 613
    .local v5, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 614
    .local v6, "text2":Landroid/widget/TextView;
    const v7, 0x1020001

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 616
    .local v1, "checkbox":Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v7, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 617
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 618
    .local v2, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v4

    .line 621
    .local v4, "groupVisible":Z
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 622
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 624
    iget-object v7, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 625
    .local v3, "groupTitle":Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    .end local v4    # "groupVisible":Z
    :goto_0
    return-object p4

    .line 629
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 630
    const v7, 0x7f090086

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 631
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 5
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 663
    iget-object v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 664
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v4, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 665
    .local v1, "anyHidden":Z
    :goto_0
    iget-object v4, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v2, v4

    return v2

    .end local v1    # "anyHidden":Z
    :cond_0
    move v1, v3

    .line 664
    goto :goto_0

    .restart local v1    # "anyHidden":Z
    :cond_1
    move v2, v3

    .line 665
    goto :goto_1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 678
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 683
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 571
    if-nez p3, :cond_0

    .line 572
    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04002c

    invoke-virtual {v6, v7, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 576
    :cond_0
    const v6, 0x1020014

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 577
    .local v3, "text1":Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 579
    .local v4, "text2":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    .line 581
    .local v0, "account":Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v7, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 584
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const-string v6, "com.android.localphone"

    iget-object v7, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 585
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 601
    :goto_0
    return-object p3

    .line 587
    :cond_1
    const-string v6, "com.android.sim"

    iget-object v7, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 588
    const/4 v2, 0x1

    .line 589
    .local v2, "subscription":I
    const-string v5, "SIM1"

    iget-object v6, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 590
    const/4 v2, 0x0

    .line 593
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const v5, 0x7f0900e5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 596
    .end local v2    # "subscription":I
    :cond_3
    iget-object v6, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v6, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v6, :cond_4

    const/16 v5, 0x8

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;

    .line 557
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 558
    return-void
.end method
