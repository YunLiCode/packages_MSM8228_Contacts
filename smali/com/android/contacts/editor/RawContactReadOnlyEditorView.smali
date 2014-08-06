.class public Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Ljava/lang/String;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountType:Ljava/lang/String;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mCapacityTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

.field private mName:Landroid/widget/TextView;

.field private mRawContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 91
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/android/contacts/common/list/AccountCapacityLoader;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p1, "titleText"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/CharSequence;
    .param p4, "isFirstEntry"    # Z

    .prologue
    .line 276
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 277
    return-void
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 10
    .param p1, "titleText"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/CharSequence;
    .param p4, "isFirstEntry"    # Z
    .param p5, "forceLTR"    # Z

    .prologue
    .line 281
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04005c

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, "field":Landroid/view/View;
    const v6, 0x7f0b003b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, "divider":Landroid/view/View;
    if-eqz p4, :cond_1

    .line 284
    const v6, 0x7f0b009a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 285
    .local v4, "titleView":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .end local v4    # "titleView":Landroid/widget/TextView;
    :goto_0
    const v6, 0x7f0b0016

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    .local v0, "dataView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    if-eqz p5, :cond_0

    .line 295
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 297
    :cond_0
    const v6, 0x7f0b0051

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 298
    .local v5, "typeView":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 299
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 305
    return-void

    .line 288
    .end local v0    # "dataView":Landroid/widget/TextView;
    .end local v5    # "typeView":Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f0b00c6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 289
    .local v3, "titleContainer":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 290
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 301
    .end local v3    # "titleContainer":Landroid/view/View;
    .restart local v0    # "dataView":Landroid/widget/TextView;
    .restart local v5    # "typeView":Landroid/widget/TextView;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00f9

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;->onExternalEditorRequest(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 112
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    .line 113
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mCapacityTextView:Landroid/widget/TextView;

    .line 117
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .line 97
    return-void
.end method

.method public setState(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 23
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 131
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 135
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mCapacityTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    if-eqz p4, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v5, 0x7f09019a

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 197
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    .line 198
    .local v3, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v3, :cond_2

    .line 199
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 200
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    if-eqz v2, :cond_a

    const/16 v16, 0x1

    .line 201
    .local v16, "hasPhotoEditor":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setHasPhotoEditor(Z)V

    .line 202
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 203
    .local v4, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 207
    .end local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v16    # "hasPhotoEditor":Z
    :cond_2
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 208
    .restart local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    if-eqz v4, :cond_c

    const-string v2, "data1"

    invoke-virtual {v4, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 228
    .local v20, "res":Landroid/content/res/Resources;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 229
    .local v19, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v19, :cond_10

    .line 230
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_10

    .line 231
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    .line 232
    .local v18, "phone":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNormalizedNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->phoneHasType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 238
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneType()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v2, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 243
    .local v8, "phoneType":Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v5, 0x7f090053

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v17, :cond_f

    const/4 v9, 0x1

    :goto_8
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 230
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 148
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    .end local v8    # "phoneType":Ljava/lang/CharSequence;
    .end local v17    # "i":I
    .end local v18    # "phone":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v19    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v20    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 149
    .local v11, "accountType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f09019b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 154
    .end local v11    # "accountType":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 156
    .restart local v11    # "accountType":Ljava/lang/CharSequence;
    const-string v2, "com.android.localphone"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const v5, 0x7f090046

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f090155

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 158
    :cond_5
    const-string v2, "com.android.sim"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    const/16 v21, 0x1

    .line 160
    .local v21, "subscription":I
    const-string v2, "SIM1"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 161
    const/16 v21, 0x0

    .line 163
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-static {v2, v0}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const v5, 0x7f0900e5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mCapacityTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountCapacityLoader:Lcom/android/contacts/common/list/AccountCapacityLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mCapacityTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v9}, Lcom/android/contacts/common/list/AccountCapacityLoader;->loadAccountCapacity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 170
    .end local v21    # "subscription":I
    :cond_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v5, 0x7f090046

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 173
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f090156

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v9, v10

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 179
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 200
    .end local v11    # "accountType":Ljava/lang/CharSequence;
    .restart local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 203
    .restart local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v16    # "hasPhotoEditor":Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 208
    .end local v16    # "hasPhotoEditor":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f090040

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 216
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    new-instance v5, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 241
    .restart local v7    # "phoneNumber":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "phone":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v19    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .restart local v20    # "res":Landroid/content/res/Resources;
    :cond_e
    const/4 v8, 0x0

    .restart local v8    # "phoneType":Ljava/lang/CharSequence;
    goto/16 :goto_7

    .line 243
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 249
    .end local v7    # "phoneNumber":Ljava/lang/String;
    .end local v8    # "phoneType":Ljava/lang/CharSequence;
    .end local v17    # "i":I
    .end local v18    # "phone":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_10
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 250
    .local v15, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v15, :cond_13

    .line 251
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_13

    .line 252
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/ValuesDelta;

    .line 253
    .local v12, "email":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v12}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailData()Ljava/lang/String;

    move-result-object v13

    .line 255
    .local v13, "emailAddress":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/contacts/common/model/ValuesDelta;->emailHasType()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 256
    invoke-virtual {v12}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailType()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v2, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 261
    .local v14, "emailType":Ljava/lang/CharSequence;
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v5, 0x7f090054

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v17, :cond_12

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v14, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 251
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 259
    .end local v14    # "emailType":Ljava/lang/CharSequence;
    :cond_11
    const/4 v14, 0x0

    .restart local v14    # "emailType":Ljava/lang/CharSequence;
    goto :goto_b

    .line 261
    :cond_12
    const/4 v2, 0x0

    goto :goto_c

    .line 267
    .end local v12    # "email":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v13    # "emailAddress":Ljava/lang/String;
    .end local v14    # "emailType":Ljava/lang/CharSequence;
    .end local v17    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 270
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method
