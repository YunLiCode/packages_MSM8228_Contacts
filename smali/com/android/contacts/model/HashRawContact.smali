.class public Lcom/android/contacts/model/HashRawContact;
.super Ljava/lang/Object;
.source "HashRawContact.java"


# instance fields
.field private mContactId:J

.field private mDisplayName:Ljava/lang/String;

.field private mHashCodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "contactId"    # J

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/android/contacts/model/HashRawContact;->mDisplayName:Ljava/lang/String;

    .line 20
    iput-wide p1, p0, Lcom/android/contacts/model/HashRawContact;->mRawContactId:J

    .line 21
    iput-wide p4, p0, Lcom/android/contacts/model/HashRawContact;->mContactId:J

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    .line 23
    return-void
.end method


# virtual methods
.method public addData(J)V
    .locals 2
    .param p1, "hashCode"    # J

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    if-nez v0, :cond_0

    move v0, v1

    .line 59
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 53
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget-wide v2, p0, Lcom/android/contacts/model/HashRawContact;->mRawContactId:J

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/HashRawContact;

    invoke-virtual {v0}, Lcom/android/contacts/model/HashRawContact;->getRawContactId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    check-cast p1, Lcom/android/contacts/model/HashRawContact;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/contacts/model/HashRawContact;->getData()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/android/contacts/model/HashRawContact;->mContactId:J

    return-wide v0
.end method

.method public getData()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/contacts/model/HashRawContact;->mRawContactId:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/model/HashRawContact;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/model/HashRawContact;->mRawContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/model/HashRawContact;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/HashRawContact;->mHashCodes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
