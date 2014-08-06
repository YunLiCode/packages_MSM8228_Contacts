.class public Lcom/android/contacts/model/RawContactModifier;
.super Ljava/lang/Object;
.source "RawContactModifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    const-class v0, Lcom/android/contacts/model/RawContactModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    .line 971
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    const-string v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "vnd.android.cursor.item/relation"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "vnd.android.cursor.item/sip_address"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 979
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 8
    .param p0, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 829
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 851
    :goto_0
    return v5

    .line 833
    :cond_1
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 834
    .local v4, "typeInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 836
    .local v3, "type":I
    :goto_1
    invoke-static {v3, p1, p2}, Lcom/android/contacts/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 837
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 838
    goto :goto_0

    .line 834
    .end local v3    # "type":I
    :cond_2
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v3, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    goto :goto_1

    .line 842
    .restart local v3    # "type":I
    :cond_3
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 843
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 844
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 845
    .local v0, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 846
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v7, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v7}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 847
    goto :goto_0

    .line 843
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_5
    move v5, v7

    .line 851
    goto :goto_0
.end method

.method protected static areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 6
    .param p0, "values1"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "values2"    # Landroid/content/ContentValues;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v4, 0x0

    .line 551
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 561
    :goto_0
    return v4

    .line 553
    :cond_0
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 554
    .local v0, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "value1":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "value2":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 561
    .end local v0    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v2    # "value1":Ljava/lang/String;
    .end local v3    # "value2":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 94
    .local v2, "visibleCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->hasValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v1

    .line 95
    .local v1, "validTypes":Z
    iget v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v2, v5, :cond_1

    :cond_0
    move v0, v3

    .line 97
    .local v0, "validOverall":Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    .end local v0    # "validOverall":Z
    :cond_1
    move v0, v4

    .line 95
    goto :goto_0

    .restart local v0    # "validOverall":Z
    :cond_2
    move v3, v4

    .line 97
    goto :goto_1
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez p2, :cond_0

    .line 1053
    const/4 v3, 0x0

    .line 1064
    :goto_0
    return-object v3

    .line 1056
    :cond_0
    iget v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 1057
    .local v2, "typeOverallMax":I
    if-ltz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 1058
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1059
    .local v1, "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1060
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1062
    :cond_1
    move-object p2, v1

    .end local v0    # "i":I
    .end local v1    # "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    move-object v3, p2

    .line 1064
    goto :goto_0
.end method

.method public static ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    .line 117
    .local v2, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-virtual {p0, p2, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 119
    .local v1, "hasChild":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 120
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    .line 132
    :goto_1
    return-object v3

    .end local v1    # "hasChild":Z
    :cond_0
    move v1, v4

    .line 117
    goto :goto_0

    .line 125
    .restart local v1    # "hasChild":Z
    :cond_1
    invoke-static {p0, v2}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 126
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v4, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    :cond_2
    move-object v3, v0

    .line 129
    goto :goto_1

    .line 132
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 909
    const-string v2, "im_protocol"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "encodedString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 913
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 915
    .local v1, "protocol":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 916
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "protocol":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 920
    :catch_0
    move-exception v2

    goto :goto_0

    .line 918
    .restart local v1    # "protocol":Ljava/lang/Object;
    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    .end local v1    # "protocol":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "includeSecondary"    # Z
    .param p3, "exactValue"    # I

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v6, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-object v3

    .line 312
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 313
    .local v4, "typeCount":Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v3, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 315
    .local v5, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 318
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 321
    .local v2, "lastType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 322
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 324
    .local v3, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v6, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 326
    .local v0, "count":I
    iget v6, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-eq p3, v6, :cond_0

    .line 331
    if-lez v0, :cond_2

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 338
    .end local v0    # "count":I
    .end local v3    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 339
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object v3, v6

    goto :goto_0

    :cond_4
    move-object v3, v2

    .line 341
    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 247
    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 248
    .local v0, "rawValue":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .param p1, "typeColumn"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v0, 0x0

    .line 892
    .local v0, "count":I
    if-eqz p0, :cond_1

    .line 893
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 894
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 895
    .local v3, "typeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "typeInteger":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 280
    .local v1, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 284
    .end local v1    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 211
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 214
    .local v6, "typeCount":Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 215
    .local v3, "mimeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v3, :cond_0

    .line 230
    :goto_0
    return-object v6

    .line 217
    :cond_0
    const/4 v4, 0x0

    .line 218
    .local v4, "totalCount":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 220
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 223
    invoke-static {v1, p1}, Lcom/android/contacts/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v5

    .line 224
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 225
    iget v7, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 226
    .local v0, "count":I
    iget v7, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 229
    .end local v0    # "count":I
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .param p3, "includeSecondary"    # Z
    .param p4, "typeCount"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v7, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 199
    :cond_0
    return-object v7

    .line 179
    :cond_1
    if-nez p4, :cond_2

    .line 181
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 185
    :cond_2
    const/high16 v8, -0x80000000

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 186
    .local v2, "overallCount":I
    iget-object v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 187
    .local v3, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    const/4 v4, 0x1

    .line 189
    .local v4, "validOverall":Z
    :goto_1
    iget v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    const/4 v6, 0x1

    .line 191
    .local v6, "validSpecific":Z
    :goto_2
    if-eqz p3, :cond_9

    const/4 v5, 0x1

    .line 192
    .local v5, "validSecondary":Z
    :goto_3
    invoke-virtual {v3, p2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    .local v0, "forcedInclude":Z
    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 195
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0    # "forcedInclude":Z
    .end local v4    # "validOverall":Z
    .end local v5    # "validSecondary":Z
    .end local v6    # "validSpecific":Z
    :cond_5
    iget v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v2, v8, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 189
    .restart local v4    # "validOverall":Z
    :cond_7
    iget v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iget v9, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    if-ge v8, v9, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 191
    .restart local v6    # "validSpecific":Z
    :cond_9
    iget-boolean v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->secondary:Z

    if-nez v8, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public static hasAnyData(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z
    .locals 7
    .param p0, "set"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 428
    .local v3, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 429
    .local v5, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "accountType":Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 432
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/RawContactModifier;->hasValidData(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 433
    const/4 v6, 0x1

    .line 436
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static hasChanges(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)Z
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 506
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 507
    .local v5, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v6, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 508
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 509
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 514
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v5}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v7

    .line 515
    .local v4, "isRealInsert":Z
    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 520
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isRealInsert":Z
    .end local v5    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    return v7

    .restart local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .restart local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    move v4, v8

    .line 514
    goto :goto_0

    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 520
    goto :goto_1
.end method

.method public static hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z
    .locals 8
    .param p0, "set"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    const/4 v6, 0x1

    .line 404
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->isMarkedForSplitting()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->isMarkedForJoining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v6

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 409
    .local v3, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 410
    .local v5, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "accountType":Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 413
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 417
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 1
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasValidData(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)Z
    .locals 8
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 440
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 441
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string v6, "vnd.android.cursor.item/photo"

    iget-object v7, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 445
    iget-object v5, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 446
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 447
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 452
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v1, v4}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 453
    const/4 v6, 0x1

    .line 457
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v5    # "mimeType":Ljava/lang/String;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 3
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/high16 v2, -0x80000000

    .line 352
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 353
    .local v0, "bestType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-nez v0, :cond_0

    .line 355
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 357
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 4
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType$EditType;

    .prologue
    .line 366
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 384
    :goto_0
    return-object v1

    .line 367
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v0, "after":Landroid/content/ContentValues;
    const-string v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 377
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 379
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 383
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public static isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 528
    const-string v5, "vnd.android.cursor.item/photo"

    iget-object v6, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "data15"

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 529
    goto :goto_0

    .line 533
    :cond_2
    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 535
    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 537
    .local v0, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 539
    goto :goto_0
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "type"    # I
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 860
    const/4 v2, 0x0

    .line 861
    .local v2, "max":I
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 862
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 863
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 864
    .local v0, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v6, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_2

    .line 865
    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 870
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_3

    move v4, v5

    .line 880
    :cond_1
    :goto_1
    return v4

    .line 862
    .restart local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_3
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 880
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/contacts/model/RawContactModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-lt v6, v2, :cond_1

    move v4, v5

    goto :goto_1
.end method

.method public static migrateEvent(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V
    .locals 21
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p3, "defaultYear"    # Ljava/lang/Integer;

    .prologue
    .line 1285
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1287
    .local v15, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1336
    :cond_0
    return-void

    .line 1291
    :cond_1
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1292
    .local v9, "allowedTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/contacts/common/model/account/AccountType$EventEditType;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1293
    .local v12, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v3, v12, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    .end local v12    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v9, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1295
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1296
    .local v13, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v19

    .line 1297
    .local v19, "values":Landroid/content/ContentValues;
    if-eqz v19, :cond_3

    .line 1300
    const-string v3, "data1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1301
    .local v11, "dateString":Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1302
    .local v18, "type":Ljava/lang/Integer;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1304
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    .line 1306
    .local v17, "suitableType":Lcom/android/contacts/common/model/account/AccountType$EventEditType;
    new-instance v16, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1307
    .local v16, "position":Ljava/text/ParsePosition;
    const/16 v20, 0x0

    .line 1308
    .local v20, "yearOptional":Z
    sget-object v3, Lcom/android/contacts/common/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1309
    .local v10, "date":Ljava/util/Date;
    if-nez v10, :cond_4

    .line 1310
    const/16 v20, 0x1

    .line 1311
    sget-object v3, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1313
    :cond_4
    if-eqz v10, :cond_6

    .line 1314
    if-eqz v20, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1316
    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1318
    .local v2, "calendar":Ljava/util/Calendar;
    if-nez p3, :cond_5

    .line 1319
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1321
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1322
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1323
    .local v4, "month":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1325
    .local v5, "day":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/android/contacts/editor/EventFieldEditorView;->getDefaultHourForBirthday()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1327
    const-string v3, "data1"

    sget-object v6, Lcom/android/contacts/common/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "day":I
    :cond_6
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_1
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 20
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1358
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1359
    .local v9, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1457
    :cond_0
    return-void

    .line 1381
    :cond_1
    const/4 v5, 0x0

    .line 1382
    .local v5, "defaultType":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1383
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "data2"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1385
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1387
    .local v2, "allowedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    .line 1388
    .local v15, "typeSpecificMaxMap":Landroid/util/SparseIntArray;
    if-eqz v5, :cond_3

    .line 1389
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1390
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    :cond_3
    const-string v17, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1398
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1399
    .local v6, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1400
    iget v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    iget v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1402
    .end local v6    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_4
    if-nez v5, :cond_5

    .line 1403
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1407
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    if-nez v5, :cond_6

    .line 1408
    sget-object v17, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Default type isn\'t available for mimetype "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_6
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 1414
    .local v14, "typeOverallMax":I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 1415
    .local v4, "currentEntryCount":Landroid/util/SparseIntArray;
    const/4 v12, 0x0

    .line 1417
    .local v12, "totalCount":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1418
    .local v7, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_8

    if-ge v12, v14, :cond_0

    .line 1422
    :cond_8
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v16

    .line 1423
    .local v16, "values":Landroid/content/ContentValues;
    if-eqz v16, :cond_7

    .line 1427
    const-string v17, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1429
    .local v10, "oldType":Ljava/lang/Integer;
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1431
    if-eqz v5, :cond_b

    .line 1432
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1433
    .local v13, "typeForNewAccount":Ljava/lang/Integer;
    const-string v17, "data2"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-nez v17, :cond_9

    .line 1435
    const-string v17, "data3"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1444
    :cond_9
    :goto_2
    if-eqz v13, :cond_a

    .line 1445
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 1446
    .local v11, "specificMax":I
    if-ltz v11, :cond_a

    .line 1447
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1448
    .local v3, "currentCount":I
    if-ge v3, v11, :cond_7

    .line 1451
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1454
    .end local v3    # "currentCount":I
    .end local v11    # "specificMax":I
    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 1455
    add-int/lit8 v12, v12, 0x1

    .line 1456
    goto/16 :goto_1

    .line 1438
    .end local v13    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_b
    const/4 v13, 0x0

    .line 1439
    .restart local v13    # "typeForNewAccount":Ljava/lang/Integer;
    const-string v17, "data2"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 1442
    .end local v13    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_c
    move-object v13, v10

    .restart local v13    # "typeForNewAccount":Ljava/lang/Integer;
    goto :goto_2
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 5
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1341
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1343
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1353
    :cond_0
    return-void

    .line 1347
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1348
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    .line 1349
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 1350
    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public static migratePostal(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 25
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1174
    const-string v23, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1176
    .local v15, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1280
    :cond_0
    return-void

    .line 1180
    :cond_1
    const/16 v18, 0x0

    .line 1181
    .local v18, "supportFormattedAddress":Z
    const/16 v19, 0x0

    .line 1182
    .local v19, "supportStreet":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 1183
    .local v10, "firstColumn":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 1184
    .local v6, "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string v23, "data1"

    iget-object v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1185
    const/16 v18, 0x1

    .line 1187
    :cond_3
    const-string v23, "data4"

    iget-object v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1188
    const/16 v19, 0x1

    goto :goto_0

    .line 1192
    .end local v6    # "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :cond_4
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 1193
    .local v20, "supportedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    .line 1194
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1195
    .local v7, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1199
    .end local v7    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1200
    .local v9, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v22

    .line 1201
    .local v22, "values":Landroid/content/ContentValues;
    if-eqz v22, :cond_6

    .line 1204
    const-string v23, "data2"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1205
    .local v16, "oldType":Ljava/lang/Integer;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1207
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 1208
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    const-string v24, "data2"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1212
    .local v5, "defaultType":I
    :goto_3
    const-string v23, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v23

    if-nez v23, :cond_7

    .line 1214
    const-string v23, "data3"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1218
    .end local v5    # "defaultType":I
    :cond_7
    const-string v23, "data1"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1219
    .local v11, "formattedAddress":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 1220
    if-nez v18, :cond_8

    .line 1222
    const-string v23, "data1"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1227
    if-eqz v19, :cond_a

    .line 1228
    const-string v23, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :cond_8
    :goto_4
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_2

    .line 1210
    .end local v11    # "formattedAddress":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    .restart local v5    # "defaultType":I
    goto :goto_3

    .line 1230
    .end local v5    # "defaultType":I
    .restart local v11    # "formattedAddress":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1234
    :cond_b
    if-eqz v18, :cond_8

    .line 1239
    sget-object v23, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 1241
    .local v21, "useJapaneseOrder":Z
    if-eqz v21, :cond_d

    .line 1242
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "data10"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x1

    const-string v24, "data9"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x2

    const-string v24, "data8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    const-string v24, "data7"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const-string v24, "data6"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x5

    const-string v24, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x6

    const-string v24, "data5"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    .line 1260
    .local v17, "structuredData":[Ljava/lang/String;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v14, :cond_e

    aget-object v8, v3, v13

    .line 1262
    .local v8, "elem":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 1263
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1251
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "elem":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "structuredData":[Ljava/lang/String;
    :cond_d
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "data5"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x1

    const-string v24, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x2

    const-string v24, "data6"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    const-string v24, "data7"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const-string v24, "data8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x5

    const-string v24, "data9"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x6

    const-string v24, "data10"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    .restart local v17    # "structuredData":[Ljava/lang/String;
    goto/16 :goto_5

    .line 1266
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    :cond_e
    const-string v23, "data1"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v23, "data5"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1269
    const-string v23, "data4"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1270
    const-string v23, "data6"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1271
    const-string v23, "data7"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1272
    const-string v23, "data8"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1273
    const-string v23, "data9"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1274
    const-string v23, "data10"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "oldAccountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p4, "newAccountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 999
    if-ne p4, p3, :cond_3

    .line 1002
    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 1003
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v5, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 1005
    .local v5, "mimeType":Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1006
    invoke-static {p0, p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_0

    .line 1008
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1009
    .local v1, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1010
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1011
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v6

    .line 1012
    .local v6, "values":Landroid/content/ContentValues;
    if-eqz v6, :cond_2

    .line 1013
    invoke-static {v6}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1

    .line 1022
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 1023
    .restart local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v7, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v7, :cond_4

    .line 1024
    iget-object v5, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 1025
    .restart local v5    # "mimeType":Ljava/lang/String;
    const-string v7, "#displayName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "#phoneticName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1029
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1030
    invoke-static {p0, p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1031
    :cond_5
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1032
    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migratePostal(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1033
    :cond_6
    const-string v7, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1034
    const/4 v7, 0x0

    invoke-static {p1, p2, v4, v7}, Lcom/android/contacts/model/RawContactModifier;->migrateEvent(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1035
    :cond_7
    sget-object v7, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1036
    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1037
    :cond_8
    sget-object v7, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1038
    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1040
    :cond_9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected editable mime-type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1044
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1071
    const-string v15, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v14

    .line 1073
    .local v14, "values":Landroid/content/ContentValues;
    if-nez v14, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1077
    :cond_0
    const/4 v8, 0x0

    .line 1078
    .local v8, "supportDisplayName":Z
    const/4 v10, 0x0

    .line 1079
    .local v10, "supportPhoneticFullName":Z
    const/4 v9, 0x0

    .line 1080
    .local v9, "supportPhoneticFamilyName":Z
    const/4 v12, 0x0

    .line 1081
    .local v12, "supportPhoneticMiddleName":Z
    const/4 v11, 0x0

    .line 1082
    .local v11, "supportPhoneticGivenName":Z
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 1083
    .local v3, "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string v15, "data1"

    iget-object v0, v3, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1084
    const/4 v8, 0x1

    .line 1086
    :cond_2
    const-string v15, "#phoneticName"

    iget-object v0, v3, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1087
    const/4 v10, 0x1

    .line 1089
    :cond_3
    const-string v15, "data9"

    iget-object v0, v3, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1090
    const/4 v9, 0x1

    .line 1092
    :cond_4
    const-string v15, "data8"

    iget-object v0, v3, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1093
    const/4 v12, 0x1

    .line 1095
    :cond_5
    const-string v15, "data7"

    iget-object v0, v3, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1096
    const/4 v11, 0x1

    goto :goto_1

    .line 1101
    .end local v3    # "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :cond_6
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 1103
    if-nez v8, :cond_7

    .line 1105
    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1108
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1122
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1123
    .local v7, "phoneticFullName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 1124
    if-nez v10, :cond_8

    .line 1126
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lcom/android/contacts/editor/PhoneticNameEditorView;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    move-result-object v13

    .line 1128
    .local v13, "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1129
    if-eqz v9, :cond_a

    .line 1130
    const-string v15, "data9"

    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :goto_2
    if-eqz v12, :cond_b

    .line 1136
    const-string v15, "data8"

    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :goto_3
    if-eqz v11, :cond_c

    .line 1142
    const-string v15, "data7"

    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    .end local v13    # "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    :cond_8
    :goto_4
    invoke-static {v14}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    .line 1111
    .end local v7    # "phoneticFullName":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_9
    if-eqz v8, :cond_7

    .line 1113
    const-string v15, "data1"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    sget-object v1, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_7

    aget-object v4, v1, v5

    .line 1116
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1115
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1133
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local v7    # "phoneticFullName":Ljava/lang/String;
    .restart local v13    # "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    :cond_a
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 1139
    :cond_b
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1145
    :cond_c
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 1149
    .end local v13    # "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    :cond_d
    if-eqz v10, :cond_e

    .line 1151
    const-string v15, "#phoneticName"

    const-string v16, "data9"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/android/contacts/editor/PhoneticNameEditorView;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_e
    if-nez v9, :cond_f

    .line 1158
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1160
    :cond_f
    if-nez v12, :cond_10

    .line 1161
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1163
    :cond_10
    if-nez v11, :cond_8

    .line 1164
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "typeExtra"    # Ljava/lang/String;
    .param p4, "valueExtra"    # Ljava/lang/String;
    .param p5, "valueColumn"    # Ljava/lang/String;

    .prologue
    .line 937
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 940
    .local v7, "value":Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 963
    :cond_0
    :goto_0
    return-object v1

    .line 943
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 944
    .local v0, "canInsert":Z
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .line 945
    .local v6, "validValue":Z
    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 944
    .end local v6    # "validValue":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 948
    .restart local v6    # "validValue":Z
    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 949
    .local v4, "hasType":Z
    if-eqz v4, :cond_5

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 951
    .local v5, "typeValue":I
    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    .line 954
    .local v3, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {p0, p1, v3}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 955
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 959
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "customType":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 949
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "customType":Ljava/lang/String;
    .end local v3    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v5    # "typeValue":I
    :cond_5
    const/high16 v8, -0x80000000

    goto :goto_2
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 570
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/android/contacts/model/RawContactModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 576
    invoke-static/range {p1 .. p3}, Lcom/android/contacts/model/RawContactModifier;->parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 580
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 581
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string v6, "phone_type"

    const-string v7, "phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 582
    const-string v6, "secondary_phone_type"

    const-string v7, "secondary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 584
    const-string v6, "tertiary_phone_type"

    const-string v7, "tertiary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 590
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 591
    const-string v6, "email_type"

    const-string v7, "email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 592
    const-string v6, "secondary_email_type"

    const-string v7, "secondary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 594
    const-string v6, "tertiary_email_type"

    const-string v7, "tertiary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 600
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 601
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/model/RawContactModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 602
    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 606
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const/4 v12, 0x1

    .line 608
    .local v12, "hasOrg":Z
    :goto_1
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    .line 609
    .local v14, "kindOrg":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v12, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 610
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    .line 612
    .local v9, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 613
    .local v10, "company":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 614
    const-string v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_3
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 618
    .local v16, "title":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 619
    const-string v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v10    # "company":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_4
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 625
    .local v11, "hasNotes":Z
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    .line 626
    .local v13, "kindNotes":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v11, :cond_5

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 627
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    .line 629
    .restart local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 630
    .local v15, "notes":Ljava/lang/String;
    invoke-static {v15}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 631
    const-string v3, "data1"

    invoke-virtual {v9, v3, v15}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .end local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v15    # "notes":Ljava/lang/String;
    :cond_5
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 637
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_0

    .line 638
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->parseValues(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 606
    .end local v11    # "hasNotes":Z
    .end local v12    # "hasOrg":Z
    .end local v13    # "kindNotes":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v14    # "kindOrg":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v17    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 645
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 646
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    .line 648
    .local v8, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 649
    .local v13, "name":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    .line 651
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v15, 0x0

    .line 652
    .local v15, "supportsDisplayName":Z
    iget-object v2, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 653
    iget-object v2, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 654
    .local v10, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string v2, "data1"

    iget-object v4, v10, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    const/4 v15, 0x1

    .line 661
    .end local v10    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v15, :cond_4

    .line 662
    const-string v2, "data1"

    invoke-virtual {v8, v2, v13}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .end local v12    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v15    # "supportsDisplayName":Z
    :cond_2
    :goto_0
    const-string v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 692
    .local v14, "phoneticName":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 693
    const-string v2, "data7"

    invoke-virtual {v8, v2, v14}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_3
    return-void

    .line 664
    .end local v14    # "phoneticName":Ljava/lang/String;
    .restart local v12    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .restart local v15    # "supportsDisplayName":Z
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v2, v4, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 668
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data3"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "data6"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 678
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 679
    const-string v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 11
    .param p0, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 700
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 701
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data1"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    .line 703
    .local v7, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 705
    .local v6, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 706
    const/4 v10, 0x0

    .line 707
    .local v10, "supportsFormatted":Z
    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 709
    .local v8, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string v0, "data1"

    iget-object v2, v8, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 v10, 0x1

    .line 716
    .end local v8    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez v10, :cond_2

    .line 717
    const-string v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 721
    .end local v10    # "supportsFormatted":Z
    :cond_2
    return-void

    .line 703
    .end local v6    # "address":Ljava/lang/String;
    :cond_3
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static parseValues(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p2, "dataValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 727
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 729
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    :cond_1
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 738
    invoke-virtual {p1, v8}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v7

    .line 739
    .local v7, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-nez v7, :cond_2

    .line 740
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_2
    invoke-static {v9}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 746
    .local v4, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v4, v7}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 750
    invoke-virtual {p0, v8}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 752
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    iget v10, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 754
    :cond_3
    const/4 v0, 0x1

    .line 755
    .local v0, "addEntry":Z
    const/4 v1, 0x0

    .line 756
    .local v1, "count":I
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 757
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 758
    .local v2, "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 759
    invoke-static {v2, v9, v7}, Lcom/android/contacts/model/RawContactModifier;->areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 760
    const/4 v0, 0x0

    .line 768
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v10, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_6

    .line 769
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v0, 0x0

    .line 774
    :cond_6
    if-eqz v0, :cond_7

    .line 775
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 778
    :cond_7
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    .line 763
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 783
    .end local v0    # "addEntry":Z
    .end local v1    # "count":I
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v0, 0x1

    .line 784
    .restart local v0    # "addEntry":Z
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 785
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 786
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v2, v7}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 787
    const/4 v0, 0x0

    .line 791
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_b
    if-eqz v0, :cond_c

    .line 792
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 793
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 798
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_c
    if-eqz v0, :cond_d

    .line 799
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 802
    :cond_d
    if-eqz v0, :cond_e

    .line 803
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    .line 804
    :cond_e
    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 807
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 808
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v2, v7}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 809
    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_10
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    .end local v0    # "addEntry":Z
    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v4    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_11
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 14
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 467
    const/4 v2, 0x0

    .line 470
    .local v2, "hasValues":Z
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 471
    .local v8, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v9, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 472
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 473
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 477
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/4 v10, 0x1

    .line 478
    .local v10, "touched":Z
    :goto_1
    if-nez v10, :cond_4

    .line 479
    const/4 v2, 0x1

    .line 480
    goto :goto_0

    .line 477
    .end local v10    # "touched":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 484
    .restart local v10    # "touched":Z
    :cond_4
    const-string v11, "com.google"

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    const-string v13, "account_type"

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 486
    .local v5, "isGoogleAccount":Z
    const-string v11, "vnd.android.cursor.item/photo"

    iget-object v12, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 487
    .local v7, "isPhoto":Z
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    .line 489
    .local v6, "isGooglePhoto":Z
    :goto_2
    invoke-static {v1, v8}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v6, :cond_6

    .line 493
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 487
    .end local v6    # "isGooglePhoto":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 494
    .restart local v6    # "isGooglePhoto":Z
    :cond_6
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isFromTemplate()Z

    move-result v11

    if-nez v11, :cond_1

    .line 495
    const/4 v2, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isGoogleAccount":Z
    .end local v6    # "isGooglePhoto":Z
    .end local v7    # "isPhoto":Z
    .end local v8    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "touched":Z
    :cond_7
    if-nez v2, :cond_8

    .line 501
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->markDeleted()V

    .line 503
    :cond_8
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 7
    .param p0, "set"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 395
    .local v3, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 396
    .local v5, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "accountType":Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 399
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_0

    .line 401
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method
