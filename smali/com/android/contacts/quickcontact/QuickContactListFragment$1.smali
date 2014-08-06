.class Lcom/android/contacts/quickcontact/QuickContactListFragment$1;
.super Landroid/widget/BaseAdapter;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/Action;

    .line 101
    .local v4, "action":Lcom/android/contacts/quickcontact/Action;
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_2

    move-object/from16 v15, p2

    .line 111
    .local v15, "resultView":Landroid/view/View;
    :goto_0
    const v19, 0x1020014

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 113
    .local v17, "text1":Landroid/widget/TextView;
    const v19, 0x1020015

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 115
    .local v18, "text2":Landroid/widget/TextView;
    const v19, 0x7f0b004e

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 117
    .local v5, "actionsContainer":Landroid/view/View;
    const v19, 0x7f0b0054

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 119
    .local v6, "alternateActionButton":Landroid/widget/ImageView;
    const v19, 0x7f0b0053

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 120
    .local v8, "alternateActionDivider":Landroid/view/View;
    const v19, 0x7f0b0057

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 122
    .local v7, "alternateActionButton2":Landroid/widget/ImageView;
    const v19, 0x7f0b0055

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 123
    .local v9, "alternateActionDivider2":Landroid/view/View;
    const v19, 0x7f0b0050

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 126
    .local v14, "presenceIconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mThirdActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 133
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v19

    if-eqz v19, :cond_4

    const/4 v10, 0x1

    .line 134
    .local v10, "hasAlternateAction":Z
    :goto_1
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->get2AlternateIntent()Landroid/content/Intent;

    move-result-object v19

    if-eqz v19, :cond_5

    const/4 v11, 0x1

    .line 135
    .local v11, "hasAlternateAction2":Z
    :goto_2
    if-eqz v10, :cond_6

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getAlternateIconDescription()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    if-eqz v10, :cond_7

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    if-eqz v11, :cond_8

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->get2AlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->get2AlternateIconDescription()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    if-eqz v11, :cond_9

    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    const-string v19, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 147
    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f0900d8

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    if-eqz v10, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f0900d7

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    if-eqz v18, :cond_1

    .line 160
    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v16

    .line 161
    .local v16, "subtitle":Ljava/lang/CharSequence;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 163
    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    .end local v16    # "subtitle":Ljava/lang/CharSequence;
    :cond_1
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getPresence()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 170
    .local v13, "presenceIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_b

    .line 171
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :goto_8
    return-object v15

    .line 103
    .end local v5    # "actionsContainer":Landroid/view/View;
    .end local v6    # "alternateActionButton":Landroid/widget/ImageView;
    .end local v7    # "alternateActionButton2":Landroid/widget/ImageView;
    .end local v8    # "alternateActionDivider":Landroid/view/View;
    .end local v9    # "alternateActionDivider2":Landroid/view/View;
    .end local v10    # "hasAlternateAction":Z
    .end local v11    # "hasAlternateAction2":Z
    .end local v13    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "presenceIconView":Landroid/widget/ImageView;
    .end local v15    # "resultView":Landroid/view/View;
    .end local v17    # "text1":Landroid/widget/TextView;
    .end local v18    # "text2":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v20

    const-string v19, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const v19, 0x7f040071

    :goto_9
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :cond_3
    const v19, 0x7f040070

    goto :goto_9

    .line 133
    .restart local v5    # "actionsContainer":Landroid/view/View;
    .restart local v6    # "alternateActionButton":Landroid/widget/ImageView;
    .restart local v7    # "alternateActionButton2":Landroid/widget/ImageView;
    .restart local v8    # "alternateActionDivider":Landroid/view/View;
    .restart local v9    # "alternateActionDivider2":Landroid/view/View;
    .restart local v14    # "presenceIconView":Landroid/widget/ImageView;
    .restart local v15    # "resultView":Landroid/view/View;
    .restart local v17    # "text1":Landroid/widget/TextView;
    .restart local v18    # "text2":Landroid/widget/TextView;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 134
    .restart local v10    # "hasAlternateAction":Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 135
    .restart local v11    # "hasAlternateAction2":Z
    :cond_6
    const/16 v19, 0x8

    goto/16 :goto_3

    .line 138
    :cond_7
    const/16 v19, 0x8

    goto/16 :goto_4

    .line 140
    :cond_8
    const/16 v19, 0x8

    goto/16 :goto_5

    .line 143
    :cond_9
    const/16 v19, 0x8

    goto/16 :goto_6

    .line 165
    .restart local v16    # "subtitle":Ljava/lang/CharSequence;
    :cond_a
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 174
    .end local v16    # "subtitle":Ljava/lang/CharSequence;
    .restart local v13    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method
