.class public final Lcom/android/contacts/model/RawContact;
.super Ljava/lang/Object;
.source "RawContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/RawContact$NamedDataItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mDataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContact$NamedDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/android/contacts/model/RawContact$1;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContact$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    .line 144
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    .line 153
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    .line 154
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/model/RawContact$NamedDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/model/RawContact$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/contacts/model/RawContact$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFrom(Landroid/content/Entity;)Lcom/android/contacts/model/RawContact;
    .locals 7
    .param p0, "entity"    # Landroid/content/Entity;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 125
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    .line 127
    .local v3, "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v1, Lcom/android/contacts/model/RawContact;

    invoke-direct {v1, v4}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 128
    .local v1, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 129
    .local v2, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v5, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    iget-object v6, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v5, v6}, Lcom/android/contacts/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContact$NamedDataItem;

    goto :goto_0

    .line 131
    .end local v2    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v1
.end method

.method private setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 288
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    .line 289
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 291
    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 292
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 293
    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 297
    :cond_0
    if-eqz p2, :cond_2

    .line 299
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-nez p3, :cond_1

    .line 302
    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_1
    const-string v1, "data_set"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid combination of account name, type, and data set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDataItemValues(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 325
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContact$NamedDataItem;

    .line 326
    return-void
.end method

.method public addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContact$NamedDataItem;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 329
    new-instance v0, Lcom/android/contacts/model/RawContact$NamedDataItem;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/model/RawContact$NamedDataItem;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 330
    .local v0, "namedItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 375
    if-nez p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/android/contacts/model/RawContact;

    .line 379
    .local v0, "other":Lcom/android/contacts/model/RawContact;
    iget-object v2, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    iget-object v3, v0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContact;->getAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 187
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0
.end method

.method public getAccountTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v3, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 336
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v3, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContact$NamedDataItem;

    .line 337
    .local v0, "dataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, v0, Lcom/android/contacts/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v0    # "dataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    :cond_1
    return-object v2
.end method

.method public getDataItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v3, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 346
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/dataitem/DataItem;>;"
    iget-object v3, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContact$NamedDataItem;

    .line 347
    .local v0, "dataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, v0, Lcom/android/contacts/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/contacts/model/dataitem/DataItem;->createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v0    # "dataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    :cond_1
    return-object v2
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNamedDataItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/RawContact$NamedDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 370
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 314
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public setAccountToLocal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-direct {p0, v0, v0, v0}, Lcom/android/contacts/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "RawContact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v3, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContact$NamedDataItem;

    .line 362
    .local v1, "namedDataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    const-string v3, "\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    const-string v3, "\n  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 365
    .end local v1    # "namedDataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 166
    return-void
.end method
