.class public Lcom/android/contacts/list/PhoneAndEmailListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "PhoneAndEmailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneAndEmailListAdapter$PhoneAndEmailQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGroupId:J

.field private mGroupMode:Z

.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mGroupMode:Z

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mGroupId:J

    .line 83
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 84
    return-void
.end method

.method private appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "sqlString"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x27

    .line 195
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 198
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 199
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 200
    .local v0, "c":C
    if-ne v0, v5, :cond_0

    .line 201
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    return-void
.end method

.method private getDisabledSimFilter()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isSimDeactivated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    const-string v0, "SIM1"

    goto :goto_0

    .line 187
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isSimDeactivated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v0, "SIM2"

    goto :goto_0
.end method

.method private getGroupSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "contact_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "( SELECT contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, " FROM view_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " WHERE mimetype = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "vnd.android.cursor.item/group_membership\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, " AND data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mGroupId:J

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

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bindDataValue(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x3

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-interface {p2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 297
    .local v3, "type":I
    const/4 v4, 0x4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "customLabel":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "mimeType":Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 306
    .end local v0    # "customLabel":Ljava/lang/String;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 307
    const/4 v4, 0x2

    invoke-virtual {p1, p2, v4}, Lcom/android/contacts/common/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 308
    return-void

    .line 302
    .restart local v0    # "customLabel":Ljava/lang/String;
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "type":I
    :cond_1
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 279
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 280
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x6

    .line 283
    const-wide/16 v0, 0x0

    .line 284
    .local v0, "photoId":J
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    .line 289
    .local v2, "photoView":Landroid/widget/ImageView;
    const v3, 0x7f0b0013

    invoke-virtual {p0, p3}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 291
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 262
    .local v0, "section":I
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 264
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 271
    .end local v1    # "title":Ljava/lang/String;
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p2, :cond_1

    .line 272
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 276
    :goto_1
    return-void

    .line 266
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 267
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 253
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    .line 254
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0, v0, p4}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 255
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 256
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 257
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->bindDataValue(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 258
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x25

    .line 105
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    :cond_0
    :goto_0
    const-string v4, "remove_duplicate_entries"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getContactNameDisplayOrder()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 120
    # getter for: Lcom/android/contacts/list/PhoneAndEmailListAdapter$PhoneAndEmailQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PhoneAndEmailListAdapter$PhoneAndEmailQuery;->access$000()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 125
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v3, "selection":Ljava/lang/StringBuilder;
    iget-boolean v4, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mGroupMode:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getGroupSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v4, "REPLACE(REPLACE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v4, ", \' \', \'\'), \'-\', \'\') LIKE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 135
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    const-string v4, ")) OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v4, "data1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 141
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 143
    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_2
    iget-boolean v4, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mGroupMode:Z

    if-eqz v4, :cond_2

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    .line 153
    .local v2, "isAirMode":Z
    if-eqz v2, :cond_7

    .line 154
    const-string v4, " AND (account_type!=\'com.android.sim\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 164
    sget-object v4, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone & email selection->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v8, :cond_8

    .line 167
    const-string v4, "sort_key"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 171
    :goto_4
    return-void

    .line 110
    .end local v2    # "isAirMode":Z
    .end local v3    # "selection":Ljava/lang/StringBuilder;
    :cond_4
    const-string v4, "directory"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string v4, "address_book_index_extras"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_0

    .line 122
    :cond_5
    # getter for: Lcom/android/contacts/list/PhoneAndEmailListAdapter$PhoneAndEmailQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PhoneAndEmailListAdapter$PhoneAndEmailQuery;->access$100()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 145
    .restart local v3    # "selection":Ljava/lang/StringBuilder;
    :cond_6
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 157
    .restart local v2    # "isAirMode":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getDisabledSimFilter()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "disabledSimFilter":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND (account_name!=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 169
    .end local v1    # "disabledSimFilter":Ljava/lang/String;
    :cond_8
    const-string v4, "sort_key_alt"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getItem(I)Ljava/lang/Object;

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
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 223
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 228
    .local v2, "item":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 229
    const/4 v4, 0x0

    .line 233
    :goto_0
    return-object v4

    .line 231
    :cond_0
    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 232
    .local v0, "contactId":J
    const/16 v4, 0xa

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method public getDataMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 238
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDataValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 218
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x2

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
    .line 244
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 248
    return-object v0
.end method

.method public setGroupId(J)V
    .locals 2
    .param p1, "groupId"    # J

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 87
    iput-wide p1, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mGroupId:J

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneAndEmailListAdapter;->mGroupMode:Z

    .line 90
    :cond_0
    return-void
.end method
