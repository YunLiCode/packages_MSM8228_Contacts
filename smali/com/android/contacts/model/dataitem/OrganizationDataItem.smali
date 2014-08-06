.class public Lcom/android/contacts/model/dataitem/OrganizationDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "OrganizationDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getCompany()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
