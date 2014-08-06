.class public Lcom/android/contacts/common/model/account/FallbackAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "FallbackAccountType.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/FallbackAccountType;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    .line 32
    const v1, 0x7f090046

    iput v1, p0, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 33
    const/high16 v1, 0x7f030000

    iput v1, p0, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 36
    iput-object p2, p0, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    sget-object v1, Lcom/android/contacts/common/model/account/FallbackAccountType;->TAG:Ljava/lang/String;

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static createWithPackageNameForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
