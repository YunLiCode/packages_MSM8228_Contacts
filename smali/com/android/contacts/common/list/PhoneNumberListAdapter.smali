.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGroupId:J

.field private mGroupMode:Z

.field private mHideSimContacts:Z

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 109
    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mGroupMode:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mHideSimContacts:Z

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mGroupId:J

    .line 115
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDefaultFilterHeaderText(I)V

    .line 116
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method private applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "uriBuilder"    # Landroid/net/Uri$Builder;
    .param p3, "directoryId"    # J
    .param p5, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 205
    if-eqz p5, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 232
    :pswitch_0
    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showing all contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_1
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 239
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    :pswitch_3
    invoke-virtual {p5, p2}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 228
    :pswitch_4
    const-string v2, "no_sim"

    const-string v3, "com.android.sim"

    invoke-virtual {p2, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    goto :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getGroupSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "contact_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "( SELECT contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, " FROM view_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, " WHERE mimetype = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "vnd.android.cursor.item/group_membership\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, " AND data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mGroupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bindAccountType(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 383
    const/16 v5, 0x8

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "accountName":Ljava/lang/String;
    const/16 v5, 0x9

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "accountType":Ljava/lang/String;
    const/16 v5, 0xa

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "dataSet":Ljava/lang/String;
    const/4 v2, 0x0

    .line 387
    .local v2, "accountRes":I
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const-string v5, "com.android.localphone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "PHONE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 389
    :cond_0
    const v2, 0x7f02002e

    .line 402
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setAccount(Landroid/graphics/drawable/Drawable;)V

    .line 405
    :cond_2
    return-void

    .line 390
    :cond_3
    const-string v5, "com.android.sim"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 391
    const-string v5, "SIM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 392
    const v2, 0x7f020030

    goto :goto_0

    .line 393
    :cond_4
    const-string v5, "SIM1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 394
    const v2, 0x7f020031

    goto :goto_0

    .line 395
    :cond_5
    const-string v5, "SIM2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    const v2, 0x7f020032

    goto :goto_0

    .line 399
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 400
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setAccount(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 374
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 376
    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 353
    .local v2, "type":I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 358
    .end local v0    # "customLabel":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 359
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/common/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 360
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x6

    .line 408
    const-wide/16 v0, 0x0

    .line 409
    .local v0, "photoId":J
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 410
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 413
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    .line 414
    .local v2, "photoView":Landroid/widget/ImageView;
    const v3, 0x7f0b0013

    invoke-virtual {p0, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 416
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 363
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 365
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v3, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 366
    iget-boolean v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 371
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :goto_1
    return-void

    .line 366
    .restart local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 368
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 19
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 296
    move-object/from16 v4, p1

    check-cast v4, Lcom/android/contacts/common/list/ContactListItemView;

    .line 298
    .local v4, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 305
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 306
    const/4 v13, 0x1

    .line 307
    .local v13, "isFirstEntry":Z
    const/16 v18, 0x1

    .line 308
    .local v18, "showBottomDivider":Z
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 309
    .local v11, "currentContactId":J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_0

    .line 310
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 311
    .local v16, "previousContactId":J
    cmp-long v3, v11, v16

    if-nez v3, :cond_0

    .line 312
    const/4 v13, 0x0

    .line 315
    .end local v16    # "previousContactId":J
    :cond_0
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 316
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 318
    .local v14, "nextContactId":J
    cmp-long v3, v11, v14

    if-nez v3, :cond_1

    .line 323
    const/16 v18, 0x0

    .line 326
    .end local v14    # "nextContactId":J
    :cond_1
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 328
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 329
    if-eqz v13, :cond_4

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 334
    const/4 v7, 0x6

    const/4 v8, -0x1

    const/4 v9, 0x4

    const/4 v10, 0x5

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 344
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 345
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindAccountType(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 347
    return-void

    .line 298
    .end local v11    # "currentContactId":J
    .end local v13    # "isFirstEntry":Z
    .end local v18    # "showBottomDivider":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 337
    .restart local v11    # "currentContactId":J
    .restart local v13    # "isFirstEntry":Z
    .restart local v18    # "showBottomDivider":Z
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    goto :goto_1

    .line 340
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 342
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    .line 147
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNumberListAdapter is not ready for non-default directory ID (directoryId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v0, :cond_4

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 156
    .local v6, "baseUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 157
    .local v2, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "query":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 163
    :goto_1
    const-string v0, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    .end local v7    # "query":Ljava/lang/String;
    :goto_2
    const-string v0, "remove_duplicate_entries"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 179
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mGroupMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getGroupSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 183
    # getter for: Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 188
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 189
    const-string v0, "sort_key"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 194
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mHideSimContacts:Z

    if-eqz v0, :cond_3

    .line 195
    :cond_2
    const-string v0, "account_type != \'com.android.sim\'"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 197
    :cond_3
    return-void

    .line 154
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "baseUri":Landroid/net/Uri;
    :cond_4
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0

    .line 161
    .restart local v2    # "builder":Landroid/net/Uri$Builder;
    .restart local v6    # "baseUri":Landroid/net/Uri;
    .restart local v7    # "query":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 166
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v7    # "query":Ljava/lang/String;
    :cond_6
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v0, :cond_8

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    .line 167
    .restart local v6    # "baseUri":Landroid/net/Uri;
    :goto_5
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 169
    .restart local v2    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    const-string v0, "address_book_index_extras"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_2

    .line 166
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "baseUri":Landroid/net/Uri;
    :cond_8
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .line 185
    .restart local v2    # "builder":Landroid/net/Uri$Builder;
    .restart local v6    # "baseUri":Landroid/net/Uri;
    :cond_9
    # getter for: Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->access$100()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_3

    .line 191
    :cond_a
    const-string v0, "sort_key_alt"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 249
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 259
    .local v2, "item":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 260
    const/4 v4, 0x0

    .line 264
    :goto_0
    return-object v4

    .line 262
    :cond_0
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 263
    .local v0, "contactId":J
    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 274
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 275
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 276
    .local v1, "id":J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 279
    .end local v1    # "id":J
    :goto_0
    return-object v3

    .line 278
    :cond_0
    sget-object v3, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 254
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 286
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 287
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 290
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 291
    return-object v0
.end method

.method public setHideSimContacts(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mHideSimContacts:Z

    .line 143
    return-void
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 420
    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0
    .param p1, "useCallableUri"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    .line 428
    return-void
.end method

.method protected unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->hideDisplayName()V

    .line 380
    return-void
.end method
