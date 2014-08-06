.class public Lcom/android/contacts/common/model/ValuesDelta;
.super Ljava/lang/Object;
.source "ValuesDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected static sNextInsertId:I


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/model/ValuesDelta;->sNextInsertId:I

    .line 465
    new-instance v0, Lcom/android/contacts/common/model/ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private ensureUpdate()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 267
    :cond_0
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 5
    .param p0, "after"    # Landroid/content/ContentValues;

    .prologue
    .line 83
    new-instance v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 84
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 85
    iput-object p0, v0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 88
    iget-object v1, v0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    sget v3, Lcom/android/contacts/common/model/ValuesDelta;->sNextInsertId:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lcom/android/contacts/common/model/ValuesDelta;->sNextInsertId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 4
    .param p0, "before"    # Landroid/content/ContentValues;

    .prologue
    .line 61
    new-instance v1, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct {v1}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 62
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    iput-object p0, v1, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 63
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, v1, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 68
    const-string v2, "data1"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "data1"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "data1":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    iget-object v2, v1, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v0    # "data1":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1
    .param p0, "local"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "remote"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 347
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 360
    .end local p0    # "local":Lcom/android/contacts/common/model/ValuesDelta;
    :goto_0
    return-object p0

    .line 350
    .restart local p0    # "local":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/common/model/ValuesDelta;

    .end local p0    # "local":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 352
    .restart local p0    # "local":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 354
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0

    .line 357
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .param p1, "targetUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 430
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 442
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 440
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 296
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public copyStructuredNameFieldsFrom(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1
    .param p1, "name"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 538
    const-string v0, "data1"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 540
    const-string v0, "data2"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 541
    const-string v0, "data3"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 542
    const-string v0, "data4"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 543
    const-string v0, "data5"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 544
    const-string v0, "data6"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 546
    const-string v0, "data7"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 547
    const-string v0, "data8"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 548
    const-string v0, "data9"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 550
    const-string v0, "data10"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 551
    const-string v0, "data11"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public emailHasType()Z
    .locals 1

    .prologue
    .line 579
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 365
    instance-of v2, p1, Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 367
    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 368
    .local v0, "other":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 370
    .end local v0    # "other":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return v1
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 147
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object p2

    .line 144
    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBefore()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getCompleteValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 332
    :cond_1
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 337
    :cond_2
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    const-string v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailType()I
    .locals 1

    .prologue
    .line 583
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroupRowId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 482
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "mimetype"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const-string v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNormalizedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    const-string v0, "data4"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 567
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string v0, "data9"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    const-string v0, "data7"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    const-string v0, "data8"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 490
    const-string v0, "data15"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromTemplate()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mFromTemplate:Z

    return v0
.end method

.method public isInsert()Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoop()Z
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 179
    const-string v2, "is_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 180
    .local v0, "isPrimary":Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 192
    const-string v2, "is_super_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 193
    .local v0, "isSuperPrimary":Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 239
    :goto_0
    return v4

    .line 228
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, "newValue":Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "oldValue":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 232
    if-eqz v2, :cond_2

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_4
    move v4, v5

    .line 239
    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 305
    .local v2, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 307
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public markDeleted()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 258
    return-void
.end method

.method public phoneHasType()Z
    .locals 1

    .prologue
    .line 563
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 281
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 286
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 271
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 276
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 277
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 291
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 460
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 461
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 530
    if-nez p1, :cond_0

    .line 531
    const-string v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFromTemplate(Z)V
    .locals 0
    .param p1, "isFromTemplate"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mFromTemplate:Z

    .line 185
    return-void
.end method

.method public setGroupRowId(J)V
    .locals 1
    .param p1, "groupId"    # J

    .prologue
    .line 478
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;J)V

    .line 479
    return-void
.end method

.method public setIdColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "idColumn"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string v0, "data9"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 510
    const-string v0, "data7"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 506
    const-string v0, "data8"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public setPhoto([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 486
    const-string v0, "data15"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 487
    return-void
.end method

.method public setSuperPrimary(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    const-string v0, "is_super_primary"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    const-string v0, "is_super_primary"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "ourValue":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "theirValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 410
    if-eqz v3, :cond_0

    .line 417
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ourValue":Ljava/lang/String;
    .end local v3    # "theirValue":Ljava/lang/String;
    :goto_0
    return v4

    .line 413
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "ourValue":Ljava/lang/String;
    .restart local v3    # "theirValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 417
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ourValue":Ljava/lang/String;
    .end local v3    # "theirValue":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 385
    const-string v2, "{ "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v2, "IdColumn="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v2, ", FromTemplate="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-boolean v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mFromTemplate:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 390
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 454
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 455
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    return-void
.end method
