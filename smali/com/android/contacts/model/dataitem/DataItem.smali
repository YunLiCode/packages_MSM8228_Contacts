.class public Lcom/android/contacts/model/dataitem/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    .line 49
    return-void
.end method

.method public static createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 56
    const-string v1, "mimetype"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;-><init>(Landroid/content/ContentValues;)V

    .line 90
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v1, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    new-instance v1, Lcom/android/contacts/model/dataitem/EmailDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/EmailDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 65
    :cond_3
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    new-instance v1, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 67
    :cond_4
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    new-instance v1, Lcom/android/contacts/model/dataitem/ImDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/ImDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 69
    :cond_5
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    new-instance v1, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 71
    :cond_6
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 72
    new-instance v1, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/NicknameDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 73
    :cond_7
    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 74
    new-instance v1, Lcom/android/contacts/model/dataitem/NoteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/NoteDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 75
    :cond_8
    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 76
    new-instance v1, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/WebsiteDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 77
    :cond_9
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 78
    new-instance v1, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 79
    :cond_a
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 80
    new-instance v1, Lcom/android/contacts/model/dataitem/EventDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/EventDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 81
    :cond_b
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 82
    new-instance v1, Lcom/android/contacts/model/dataitem/RelationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/RelationDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 83
    :cond_c
    const-string v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 84
    new-instance v1, Lcom/android/contacts/model/dataitem/IdentityDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/IdentityDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 85
    :cond_d
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 86
    new-instance v1, Lcom/android/contacts/model/dataitem/PhotoDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/PhotoDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 90
    :cond_e
    new-instance v1, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v2, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-object v1

    .line 154
    :cond_1
    iget-object v2, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    iget-object v3, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/common/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    .local v0, "actionBody":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I
    .locals 2
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 142
    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 143
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 2
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 137
    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 138
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "is_primary"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    .local v0, "primary":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "is_super_primary"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    .local v0, "superPrimary":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setRawContactId(J)V
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    return-void
.end method
