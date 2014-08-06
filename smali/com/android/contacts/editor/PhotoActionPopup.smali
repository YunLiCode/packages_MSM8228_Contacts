.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p3, "mode"    # I

    .prologue
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v1, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    and-int/lit8 v10, p3, 0x1

    if-lez v10, :cond_0

    .line 82
    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x0

    const v12, 0x7f090157

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    and-int/lit8 v10, p3, 0x2

    if-lez v10, :cond_1

    .line 87
    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x3

    const v12, 0x7f090135

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    and-int/lit8 v10, p3, 0x4

    if-lez v10, :cond_3

    .line 92
    and-int/lit8 v10, p3, 0x8

    if-lez v10, :cond_5

    const/4 v7, 0x1

    .line 93
    .local v7, "replace":Z
    :goto_0
    if-eqz v7, :cond_6

    const v8, 0x7f090162

    .line 94
    .local v8, "takePhotoResId":I
    :goto_1
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "takePhotoString":Ljava/lang/String;
    if-eqz v7, :cond_7

    const v5, 0x7f090164

    .line 96
    .local v5, "pickPhotoResId":I
    :goto_2
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "pickPhotoString":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 98
    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v9}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    new-instance v10, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v5    # "pickPhotoResId":I
    .end local v6    # "pickPhotoString":Ljava/lang/String;
    .end local v7    # "replace":Z
    .end local v8    # "takePhotoResId":I
    .end local v9    # "takePhotoString":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v10, 0x7f04007b

    invoke-direct {v0, p0, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 106
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, "listPopupWindow":Landroid/widget/ListPopupWindow;
    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v2, v1, p2, v3}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Landroid/widget/ListPopupWindow;)V

    .line 130
    .local v2, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {v3, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 134
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070034

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 137
    .local v4, "minWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ge v10, v4, :cond_4

    .line 138
    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 140
    :cond_4
    return-object v3

    .line 92
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "clickListener":Landroid/widget/AdapterView$OnItemClickListener;
    .end local v3    # "listPopupWindow":Landroid/widget/ListPopupWindow;
    .end local v4    # "minWidth":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 93
    .restart local v7    # "replace":Z
    :cond_6
    const v8, 0x7f090161

    goto :goto_1

    .line 95
    .restart local v8    # "takePhotoResId":I
    .restart local v9    # "takePhotoString":Ljava/lang/String;
    :cond_7
    const v5, 0x7f090163

    goto :goto_2
.end method
