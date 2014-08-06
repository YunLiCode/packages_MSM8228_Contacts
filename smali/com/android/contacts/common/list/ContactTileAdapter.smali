.class public Lcom/android/contacts/common/list/ContactTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileAdapter$1;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mColumnCount:I

.field protected mContactCursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field private mDividerPosition:I

.field protected mIdIndex:I

.field private mIsQuickContactEnabled:Z

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field protected mNameIndex:I

.field protected mNumFrequents:I

.field private final mPaddingInPixels:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field protected mStatusIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3, "numCols"    # I
    .param p4, "displayType"    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 77
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 119
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 120
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 122
    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    .end local p3    # "numCols":I
    :cond_0
    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    .line 123
    iput-object p4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .line 124
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    .line 127
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->bindColumnIndices()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTileAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileAdapter;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method private getLayoutResourceId(I)I
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 446
    packed-switch p1, :pswitch_data_0

    .line 456
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040028

    .line 454
    :goto_0
    return v0

    .line 448
    :cond_0
    const v0, 0x7f040027

    goto :goto_0

    .line 451
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne v0, v1, :cond_1

    const v0, 0x7f040023

    goto :goto_0

    :cond_1
    const v0, 0x7f040022

    goto :goto_0

    .line 454
    :pswitch_3
    const v0, 0x7f040026

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bindColumnIndices()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    .line 156
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    .line 159
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    .line 160
    iput v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    .line 162
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberIndex:I

    .line 163
    iput v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    .line 164
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    .line 165
    return-void
.end method

.method protected createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    .line 257
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-gt v11, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 260
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 261
    .local v2, "id":J
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "photoUri":Ljava/lang/String;
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "lookupKey":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;-><init>()V

    .line 265
    .local v0, "contact":Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_2

    .end local v5    # "name":Ljava/lang/String;
    :goto_1
    iput-object v5, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    .line 267
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    .line 268
    if-eqz v8, :cond_3

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    :goto_2
    iput-object v11, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    .line 269
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v11, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->lookupKey:Landroid/net/Uri;

    .line 273
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v12, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne v11, v12, :cond_4

    .line 274
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberTypeIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 275
    .local v7, "phoneNumberType":I
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberLabelIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "phoneNumberCustomLabel":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-static {v11, v7, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 278
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhoneNumberIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 266
    .end local v6    # "phoneNumberCustomLabel":Ljava/lang/String;
    .end local v7    # "phoneNumberType":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f090040

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 268
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 281
    :cond_4
    const/4 v1, 0x0

    .line 282
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 283
    .local v9, "presence":I
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 284
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 285
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 287
    :cond_5
    iput-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    .line 289
    const/4 v10, 0x0

    .line 290
    .local v10, "statusMessage":Ljava/lang/String;
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 291
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 295
    :cond_6
    if-nez v10, :cond_7

    if-eqz v9, :cond_7

    .line 296
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 298
    :cond_7
    iput-object v10, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public enableQuickContact(Z)V
    .locals 0
    .param p1, "enableQuickContact"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 147
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized DisplayType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    goto :goto_0

    .line 323
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 327
    .local v1, "starredRowCount":I
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    if-nez v2, :cond_2

    .line 330
    .local v0, "frequentRowCount":I
    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 327
    .end local v0    # "frequentRowCount":I
    :cond_2
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 333
    .end local v1    # "starredRowCount":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDivider()Landroid/view/View;
    .locals 3

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne v0, v2, :cond_0

    const v0, 0x7f090041

    :goto_0
    invoke-static {v1, v0}, Lcom/android/contacts/common/MoreContactUtils;->createHeaderView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f090042

    goto :goto_0
.end method

.method protected getDividerPosition(Landroid/database/Cursor;)I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, -0x1

    .line 221
    if-nez p1, :cond_0

    .line 251
    :goto_0
    :pswitch_0
    return v0

    .line 224
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 233
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 235
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    goto :goto_0

    .line 244
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 6
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
    .line 357
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;>;"
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    .line 360
    .local v1, "contactIndex":I
    sget-object v3, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 390
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    :goto_0
    return-object v2

    .line 365
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "columnCounter":I
    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v1, v1, 0x1

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    .end local v0    # "columnCounter":I
    :pswitch_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 373
    const/4 v0, 0x0

    .line 374
    .restart local v0    # "columnCounter":I
    :goto_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v1, v1, 0x1

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 385
    .end local v0    # "columnCounter":I
    :cond_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v3, v4

    .line 386
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 400
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 474
    sget-object v3, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :pswitch_0
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 494
    :goto_0
    :pswitch_1
    return v0

    .line 478
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 479
    goto :goto_0

    :cond_1
    move v0, v2

    .line 481
    goto :goto_0

    .line 484
    :pswitch_2
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 485
    const/4 v0, 0x3

    goto :goto_0

    .line 486
    :cond_2
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    move v0, v1

    .line 487
    goto :goto_0

    :cond_3
    move v0, v2

    .line 489
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 494
    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNumFrequents()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    return v0
.end method

.method protected getRowCount(I)I
    .locals 2
    .param p1, "entryCount"    # I

    .prologue
    .line 344
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v2

    .line 418
    .local v2, "itemViewType":I
    if-ne v2, v3, :cond_1

    .line 420
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDivider()Landroid/view/View;

    move-result-object p2

    .line 432
    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    move-object v1, p2

    .line 423
    check-cast v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    .line 424
    .local v1, "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 426
    .local v0, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;>;"
    if-nez v1, :cond_2

    .line 428
    new-instance v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    .end local v1    # "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V

    .line 431
    .restart local v1    # "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;Z)V

    move-object p2, v1

    .line 432
    goto :goto_0

    .line 431
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 411
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 176
    if-nez p1, :cond_0

    .line 177
    iput v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    .line 196
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    iput v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 211
    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 0
    .param p1, "displayType"    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .line 143
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 135
    return-void
.end method
