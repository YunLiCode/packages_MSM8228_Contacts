.class public Lcom/android/contacts/common/model/account/SimAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "SimAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/account/SimAccountType$1;,
        Lcom/android/contacts/common/model/account/SimAccountType$SimNameInputFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/contacts/common/model/account/SimAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/SimAccountType;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 66
    const-string v1, "com.android.sim"

    iput-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 67
    const-string v1, "com.android.contacts"

    iput-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 68
    const-string v1, "com.qualcomm.simcontacts"

    iput-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 69
    const v1, 0x7f0900da

    iput v1, p0, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 70
    const v1, 0x7f02003b

    iput v1, p0, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    sget-object v1, Lcom/android/contacts/common/model/account/SimAccountType;->TAG:Ljava/lang/String;

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDisplayName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 138
    const-string v0, "SIM"

    .line 139
    .local v0, "cardType":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    if-nez p1, :cond_0

    .line 142
    const-string v0, "USIM"

    .line 150
    :cond_0
    const v1, 0x7f0900db

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhoneTypeHome()Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/contacts/common/model/account/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 114
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 115
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 117
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f090054

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 97
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 98
    iput-boolean v3, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->isList:Z

    .line 99
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 101
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/common/model/account/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 104
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f090053

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 86
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 87
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f090049

    const/16 v5, 0x2061

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/contacts/common/model/account/SimAccountType$SimNameInputFilter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/contacts/common/model/account/SimAccountType$SimNameInputFilter;-><init>(Lcom/android/contacts/common/model/account/SimAccountType$1;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addInputFilter(Landroid/text/InputFilter;)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method
