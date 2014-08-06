.class public abstract Lcom/android/contacts/common/model/account/AccountType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;,
        Lcom/android/contacts/common/model/account/AccountType$StringInflater;,
        Lcom/android/contacts/common/model/account/AccountType$EditField;,
        Lcom/android/contacts/common/model/account/AccountType$EventEditType;,
        Lcom/android/contacts/common/model/account/AccountType$EditType;,
        Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sWeightComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountType:Ljava/lang/String;

.field public dataSet:Ljava/lang/String;

.field public iconRes:I

.field protected mIsInitialized:Z

.field private mKinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeKinds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field public resourcePackageName:Ljava/lang/String;

.field public syncAdapterPackageName:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountType;->TAG:Ljava/lang/String;

    .line 308
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/AccountType$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/AccountType;->sWeightComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    .line 95
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    .line 609
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/contacts/common/model/account/AccountType;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 279
    if-eq p2, v1, :cond_1

    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 281
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 285
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local p3    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 282
    .restart local p3    # "defaultValue":Ljava/lang/String;
    :cond_1
    if-eq p2, v1, :cond_0

    .line 283
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string v1, "null is not a valid mime type"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 341
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mime type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is already registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-object p1
.end method

.method public abstract areContactsWritable()Z
.end method

.method public getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 290
    iget v2, p0, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 296
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 293
    :cond_1
    iget v2, p0, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    if-eq v2, v3, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInviteContactActionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActionResId()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, -0x1

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public getSortedDataKinds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/common/model/account/AccountType;->sWeightComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 322
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewContactNotifyServicePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroupLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/AccountType;->getViewGroupLabelResId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, "customTitle":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const v1, 0x7f090045

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "customTitle":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, -0x1

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isGroupMembershipEditable()Z
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/AccountType;->mIsInitialized:Z

    return v0
.end method
