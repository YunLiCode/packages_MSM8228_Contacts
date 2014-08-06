.class public Lcom/android/contacts/model/RawContactDelta;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lcom/android/contacts/model/RawContactDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContactDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 82
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 82
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 89
    return-void
.end method

.method private containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 353
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 354
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 356
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 359
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Lcom/android/contacts/model/RawContact;)Lcom/android/contacts/model/RawContactDelta;
    .locals 5
    .param p0, "before"    # Lcom/android/contacts/model/RawContact;

    .prologue
    .line 96
    new-instance v1, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {v1}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    .line 97
    .local v1, "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 98
    iget-object v3, v1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 100
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 102
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v1
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "lazyCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 254
    .local v0, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 255
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/RawContactDelta;
    .locals 10
    .param p0, "local"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "remote"    # Lcom/android/contacts/model/RawContactDelta;

    .prologue
    .line 113
    iget-object v7, p1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 114
    .local v7, "remoteValues":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez p0, :cond_2

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 p0, 0x0

    .line 146
    .end local p0    # "local":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    return-object p0

    .line 117
    .restart local p0    # "local":Lcom/android/contacts/model/RawContactDelta;
    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/android/contacts/model/RawContactDelta;

    .end local p0    # "local":Lcom/android/contacts/model/RawContactDelta;
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    .line 128
    .restart local p0    # "local":Lcom/android/contacts/model/RawContactDelta;
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 131
    iget-object v8, p1, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 132
    .local v5, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    .line 133
    .local v6, "remoteEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 136
    .local v0, "childId":Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    .line 137
    .local v3, "localEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v3, v6}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 139
    .local v4, "merged":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 141
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 400
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v3

    .line 411
    .local v3, "isContactInsert":Z
    if-nez v3, :cond_0

    .line 413
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 414
    .local v0, "beforeId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 415
    .local v1, "beforeVersion":Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 423
    .end local v0    # "beforeId":Ljava/lang/Long;
    .end local v1    # "beforeVersion":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 417
    .restart local v0    # "beforeId":Ljava/lang/Long;
    .restart local v1    # "beforeVersion":Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 419
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 420
    const-string v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 421
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 576
    .local v4, "firstIndex":I
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v8

    .line 577
    .local v8, "isContactInsert":Z
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v7

    .line 578
    .local v7, "isContactDelete":Z
    if-nez v8, :cond_5

    if-nez v7, :cond_5

    const/4 v9, 0x1

    .line 580
    .local v9, "isContactUpdate":Z
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 584
    .local v1, "beforeId":Ljava/lang/Long;
    if-eqz v8, :cond_0

    .line 588
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v12, "aggregation_mode"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 593
    :cond_0
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 594
    const-string v11, "EntityDelta"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Need del rawcontact "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string v12, "caller_is_syncadapter"

    const-string v13, "true"

    invoke-virtual {v11, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    iput-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 598
    :cond_1
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v12, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 599
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 602
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 603
    .local v10, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    .line 605
    .local v3, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v7, :cond_3

    .line 608
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v12, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 609
    sget-object v11, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "data"

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 615
    :goto_2
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 616
    if-eqz v8, :cond_7

    .line 618
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 627
    :cond_4
    :goto_3
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 578
    .end local v1    # "beforeId":Ljava/lang/Long;
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "isContactUpdate":Z
    .end local v10    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 612
    .restart local v1    # "beforeId":Ljava/lang/Long;
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "isContactUpdate":Z
    .restart local v10    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_6
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    goto :goto_2

    .line 621
    :cond_7
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 623
    :cond_8
    if-eqz v8, :cond_4

    if-eqz v2, :cond_4

    .line 625
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "When parent insert, child must be also"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 631
    .end local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v4, :cond_b

    const/4 v0, 0x1

    .line 632
    .local v0, "addedOperations":Z
    :goto_4
    if-eqz v0, :cond_c

    if-eqz v9, :cond_c

    .line 634
    const/4 v11, 0x2

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 635
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 638
    const/4 v11, 0x0

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 639
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_a
    :goto_5
    return-void

    .line 631
    .end local v0    # "addedOperations":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 640
    .restart local v0    # "addedOperations":Z
    :cond_c
    if-eqz v8, :cond_a

    .line 642
    iget-object v11, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 643
    const-string v11, "aggregation_mode"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 644
    const-string v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 645
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 646
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "beforeId"    # Ljava/lang/Long;
    .param p2, "mode"    # I

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 656
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 658
    return-object v0
.end method

.method public buildSimDiff()Landroid/content/ContentValues;
    .locals 22

    .prologue
    .line 426
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .local v16, "values":Landroid/content/ContentValues;
    const-string v18, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 428
    .local v9, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const-string v18, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 429
    .local v15, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const-string v18, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 431
    .local v5, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v8, 0x0

    .line 432
    .local v8, "nameValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const/4 v4, 0x0

    .line 434
    .local v4, "emailValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 435
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "nameValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    check-cast v8, Lcom/android/contacts/common/model/ValuesDelta;

    .line 436
    .restart local v8    # "nameValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "data2"

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 437
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "data3"

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 438
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "data4"

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 439
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "data5"

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 440
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "data6"

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 441
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v19, "mimetype"

    const-string v20, "vnd.android.cursor.item/name"

    invoke-virtual/range {v18 .. v20}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 444
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "emailValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    .line 447
    .restart local v4    # "emailValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_1
    const/4 v7, 0x0

    .line 448
    .local v7, "name":Ljava/lang/String;
    const/4 v14, 0x0

    .line 449
    .local v14, "number":Ljava/lang/String;
    const/4 v3, 0x0

    .line 450
    .local v3, "email":Ljava/lang/String;
    const/4 v2, 0x0

    .line 451
    .local v2, "anr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 452
    .local v12, "newName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 453
    .local v13, "newNumber":Ljava/lang/String;
    const/4 v11, 0x0

    .line 454
    .local v11, "newEmail":Ljava/lang/String;
    const/4 v10, 0x0

    .line 456
    .local v10, "newAnr":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 458
    const-string v18, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 469
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v18

    if-eqz v18, :cond_7

    if-eqz v15, :cond_7

    .line 470
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/common/model/ValuesDelta;

    .line 471
    .local v17, "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->size()I

    move-result v18

    if-eqz v18, :cond_3

    .line 472
    const-wide/16 v18, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string v21, "data2"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_6

    .line 473
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 474
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-static {v14}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 460
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v17    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_4
    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 461
    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 463
    :cond_5
    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 464
    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 476
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v17    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-static {v2}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 481
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v17    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_7
    if-eqz v15, :cond_c

    .line 482
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/common/model/ValuesDelta;

    .line 483
    .restart local v17    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->size()I

    move-result v18

    if-eqz v18, :cond_9

    .line 484
    const-wide/16 v18, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    const-string v21, "data2"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_a

    .line 485
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 486
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-static {v14}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_9
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->size()I

    move-result v18

    if-eqz v18, :cond_8

    .line 493
    const-wide/16 v18, 0x2

    const-string v20, "data2"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    .line 494
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 495
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-static {v13}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 488
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-static {v2}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 497
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 498
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-static {v10}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 504
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v17    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_c
    if-eqz v4, :cond_d

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 506
    const-string v18, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 517
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 518
    if-nez v7, :cond_e

    if-nez v14, :cond_e

    if-nez v2, :cond_e

    if-eqz v3, :cond_f

    .line 519
    :cond_e
    const-string v18, "tag"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v18, "number"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v18, "emails"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v18, "anrs"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_f
    :goto_5
    return-object v16

    .line 508
    :cond_10
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_11

    .line 509
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    :cond_11
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 512
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 525
    :cond_12
    const-string v18, "tag"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v18, "number"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v18, "emails"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v18, "anrs"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v18, "newTag"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v18, "newNumber"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v18, "newEmails"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v18, "newAnrs"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public clearSimInvalidNumber()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    .line 542
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 543
    .local v5, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 566
    :cond_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    .line 547
    .local v6, "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 548
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data2"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v10, v7

    if-nez v7, :cond_4

    .line 549
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-static {v4}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .end local v4    # "number":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 557
    const-string v7, "data2"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v10, v7

    if-nez v7, :cond_5

    .line 558
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "newNumber":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-static {v3}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    .end local v3    # "newNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "anr":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-static {v0}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 561
    .end local v0    # "anr":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "newAnr":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-static {v2}, Lcom/android/contacts/common/util/SimContactsOperation;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 333
    instance-of v6, p1, Lcom/android/contacts/model/RawContactDelta;

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 334
    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 337
    .local v4, "other":Lcom/android/contacts/model/RawContactDelta;
    iget-object v6, v4, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 349
    .end local v4    # "other":Lcom/android/contacts/model/RawContactDelta;
    :cond_0
    :goto_0
    return v5

    .line 339
    .restart local v4    # "other":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 340
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 342
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {v4, v0}, Lcom/android/contacts/model/RawContactDelta;->containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 347
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "manager"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
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
    .line 289
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 290
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 291
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 292
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return-object v4
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "childId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 304
    if-nez p1, :cond_0

    move-object v0, v4

    .line 317
    :goto_0
    return-object v0

    .line 310
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 311
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 312
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    move-object v0, v4

    .line 317
    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4
    .param p1, "onlyVisible"    # Z

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 328
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "onlyVisible"    # Z

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 267
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 275
    :cond_0
    return v1

    .line 269
    :cond_1
    const/4 v1, 0x0

    .line 270
    .local v1, "count":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 272
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 162
    invoke-direct {p0, p1, v5}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v3

    .line 165
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 166
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 167
    goto :goto_0

    .line 172
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 219
    .local v1, "entityValues":Landroid/content/ContentValues;
    const-string v3, "account_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "type":Ljava/lang/String;
    const-string v3, "data_set"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "dataSet":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    return-object v3
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "forceSelection"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 191
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 192
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v4

    .line 194
    :cond_1
    const/4 v3, 0x0

    .line 195
    .local v3, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 196
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    .line 197
    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    move-object v3, v0

    goto :goto_1

    .line 203
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_4
    if-eqz p2, :cond_0

    .line 208
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 209
    goto :goto_0

    .line 211
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 366
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 367
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 368
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 369
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 372
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 682
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 683
    .local v3, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 684
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 686
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 687
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .prologue
    .line 695
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 696
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v5, "Uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    const-string v5, ", Values="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v5, ", Entries={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 384
    .local v4, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 385
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 381
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    const-string v5, "null"

    goto :goto_0

    .line 389
    :cond_2
    const-string v5, "\n})\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 669
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/RawContactDelta;->getEntryCount(Z)I

    move-result v4

    .line 670
    .local v4, "size":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 672
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 673
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 674
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 675
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 678
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method
