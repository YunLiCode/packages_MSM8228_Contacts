.class public Lcom/android/contacts/common/model/account/PhoneAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "PhoneAccountType.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/contacts/common/model/account/PhoneAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/PhoneAccountType;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 41
    const-string v1, "com.android.localphone"

    iput-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    sget-object v1, Lcom/android/contacts/common/model/account/PhoneAccountType;->TAG:Ljava/lang/String;

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
