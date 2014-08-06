.class public Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "StructuredNameDataItem.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data9"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data7"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data9"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data7"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
