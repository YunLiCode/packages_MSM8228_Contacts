.class final Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# instance fields
.field private final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mThirdActionClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1936
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 1946
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 1960
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mThirdActionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 1595
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 23
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1805
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 1807
    .local v18, "views":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 1808
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1814
    :goto_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1820
    const v19, 0x7f0b0016

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    const v20, 0x7f060017

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1825
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1830
    .local v6, "presenceIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 1831
    .local v7, "presenceIconView":Landroid/widget/ImageView;
    if-eqz v6, :cond_6

    .line 1832
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1833
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1838
    :goto_3
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    check-cast v5, Lcom/android/contacts/detail/ActionsViewContainer;

    .line 1840
    .local v5, "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setTag(Ljava/lang/Object;)V

    .line 1841
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1845
    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 1846
    .local v12, "secondaryActionView":Landroid/widget/ImageView;
    const/4 v11, 0x0

    .line 1847
    .local v11, "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 1848
    .local v10, "secondaryActionDescription":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 1849
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1850
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1861
    :cond_0
    :goto_4
    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    .line 1862
    .local v13, "secondaryActionViewContainer":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    if-eqz v11, :cond_9

    .line 1863
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1865
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1866
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1867
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1874
    :goto_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    .line 1875
    .local v16, "thirdActionView":Landroid/widget/ImageView;
    const/4 v15, 0x0

    .line 1876
    .local v15, "thirdActionIcon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .line 1877
    .local v14, "thirdActionDescription":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 1878
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1880
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1883
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionViewContainer:Landroid/view/View;

    move-object/from16 v17, v0

    .line 1884
    .local v17, "thirdActionViewContainer":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    if-eqz v15, :cond_a

    .line 1885
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1886
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1887
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1888
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 1896
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isInSubSection()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getWidePaddingLeft()I

    move-result v19

    :goto_7
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingRight()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1902
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionView:Landroid/view/View;

    .line 1903
    .local v8, "primaryActionView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingTop()I

    move-result v20

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingBottom()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1908
    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingTop()I

    move-result v20

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingBottom()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1913
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingTop()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingBottom()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1920
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->textDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1921
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->textDirection:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1923
    :cond_2
    return-void

    .line 1811
    .end local v5    # "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    .end local v6    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "presenceIconView":Landroid/widget/ImageView;
    .end local v8    # "primaryActionView":Landroid/view/View;
    .end local v10    # "secondaryActionDescription":Ljava/lang/String;
    .end local v11    # "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "secondaryActionView":Landroid/widget/ImageView;
    .end local v13    # "secondaryActionViewContainer":Landroid/view/View;
    .end local v14    # "thirdActionDescription":Ljava/lang/String;
    .end local v15    # "thirdActionIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "thirdActionView":Landroid/widget/ImageView;
    .end local v17    # "thirdActionViewContainer":Landroid/view/View;
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1820
    :cond_4
    const v20, 0x7f060016

    goto/16 :goto_1

    .line 1825
    :cond_5
    const/16 v19, 0x8

    goto/16 :goto_2

    .line 1835
    .restart local v6    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "presenceIconView":Landroid/widget/ImageView;
    :cond_6
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1851
    .restart local v5    # "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    .restart local v10    # "secondaryActionDescription":Ljava/lang/String;
    .restart local v11    # "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "secondaryActionView":Landroid/widget/ImageView;
    :cond_7
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_8

    .line 1852
    const v19, 0x7f020078

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1854
    const v19, 0x7f090150

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 1855
    :cond_8
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_0

    .line 1856
    const v19, 0x7f020077

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1858
    const v19, 0x7f09014f

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 1869
    .restart local v13    # "secondaryActionViewContainer":Landroid/view/View;
    :cond_9
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1870
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1891
    .restart local v14    # "thirdActionDescription":Ljava/lang/String;
    .restart local v15    # "thirdActionIcon":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "thirdActionView":Landroid/widget/ImageView;
    .restart local v17    # "thirdActionViewContainer":Landroid/view/View;
    :cond_a
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1896
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingLeft()I

    move-result v19

    goto/16 :goto_7
.end method

.method private getAddConnectionEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;

    .line 1764
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;
    if-eqz p2, :cond_0

    .line 1765
    move-object v1, p2

    .line 1766
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;

    .line 1773
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1775
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->primaryActionView:Landroid/view/View;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->access$1500(Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1777
    return-object v1

    .line 1768
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1770
    .restart local v1    # "result":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;-><init>(Landroid/view/View;)V

    .line 1771
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1781
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1786
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 1787
    move-object v1, p2

    .line 1788
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 1799
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 1800
    return-object v1

    .line 1791
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04000f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1794
    .restart local v1    # "v":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mThirdActionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 1796
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 1627
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v8

    if-eqz v8, :cond_5

    const v0, 0x7f040030

    .line 1630
    .local v0, "desiredLayoutResourceId":I
    :goto_0
    const/4 v5, 0x0

    .line 1631
    .local v5, "result":Landroid/view/View;
    const/4 v6, 0x0

    .line 1636
    .local v6, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    if-eqz p1, :cond_0

    .line 1637
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    check-cast v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .line 1638
    .restart local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    iget v8, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v8, v0, :cond_0

    .line 1639
    move-object v5, p1

    .line 1644
    :cond_0
    if-nez v5, :cond_1

    .line 1645
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1646
    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .end local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-direct {v6, v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    .line 1647
    .restart local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1650
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v9

    iget-object v10, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V

    .line 1652
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v9

    iget-object v10, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V

    .line 1655
    iget-object v8, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 1656
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v1, 0x1

    .line 1657
    .local v1, "expandOnClick":Z
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v10

    iget-object v11, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10, v11, v1}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 1660
    .local v3, "listener":Landroid/view/View$OnClickListener;
    if-nez v1, :cond_2

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1661
    :cond_2
    invoke-virtual {v6, v3}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->enablePhotoOverlay(Landroid/view/View$OnClickListener;)V

    .line 1662
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/Contact;->isSimAccountType(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1664
    iget-object v8, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setClickable(Z)V

    .line 1670
    .end local v1    # "expandOnClick":Z
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v2, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/ImageView;

    .line 1671
    .local v2, "favoritesStar":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 1672
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v9

    invoke-static {v2, v7, v8, v9}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredImageView(Landroid/widget/ImageView;ZZZ)V

    .line 1675
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    .line 1676
    .local v4, "lookupUri":Landroid/net/Uri;
    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;

    invoke-direct {v7, p0, v4, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1704
    .end local v4    # "lookupUri":Landroid/net/Uri;
    :cond_4
    return-object v5

    .line 1627
    .end local v0    # "desiredLayoutResourceId":I
    .end local v2    # "favoritesStar":Landroid/widget/ImageView;
    .end local v5    # "result":Landroid/view/View;
    .end local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_5
    const v0, 0x7f040031

    goto/16 :goto_0

    .restart local v0    # "desiredLayoutResourceId":I
    .restart local v5    # "result":Landroid/view/View;
    .restart local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_6
    move v1, v7

    .line 1656
    goto/16 :goto_1
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1720
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    .line 1724
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
    if-eqz p2, :cond_0

    .line 1725
    move-object v1, p2

    .line 1726
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;

    .line 1733
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1735
    return-object v1

    .line 1728
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040062

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1729
    .restart local v1    # "result":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;-><init>(Landroid/view/View;)V

    .line 1730
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1739
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    .line 1743
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
    if-eqz p2, :cond_0

    .line 1744
    move-object v1, p2

    .line 1745
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    .line 1753
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1756
    return-object v1

    .line 1747
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040012

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1749
    .restart local v1    # "result":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;-><init>(Landroid/view/View;)V

    .line 1750
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 1708
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    .line 1709
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 1712
    .local v1, "result":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->isInSubSection()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getWidePaddingLeft()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1716
    return-object v1

    .line 1709
    .end local v1    # "result":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040013

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1712
    .restart local v1    # "result":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingLeft()I

    move-result v2

    goto :goto_1
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "maxLines"    # I

    .prologue
    const/4 v0, 0x1

    .line 1926
    if-ne p2, v0, :cond_0

    .line 1927
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1928
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1934
    :goto_0
    return-void

    .line 1930
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1931
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1932
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 2006
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1595
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1996
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 1997
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v1

    .line 2000
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1607
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1621
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1619
    :goto_0
    return-object v0

    .line 1611
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1613
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1615
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1617
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1619
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getAddConnectionEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1991
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2011
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
