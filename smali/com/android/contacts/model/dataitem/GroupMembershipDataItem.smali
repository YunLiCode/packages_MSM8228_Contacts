.class public Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "GroupMembershipDataItem.java"


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
.method public getGroupRowId()J
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
