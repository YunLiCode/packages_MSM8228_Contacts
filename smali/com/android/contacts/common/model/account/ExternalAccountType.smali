.class public Lcom/android/contacts/common/model/account/ExternalAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "ExternalAccountType.java"


# instance fields
.field private mAccountTypeIconAttribute:Ljava/lang/String;

.field private mAccountTypeLabelAttribute:Ljava/lang/String;

.field private mCreateContactActivityClassName:Ljava/lang/String;

.field private mEditContactActivityClassName:Ljava/lang/String;

.field private mExtensionPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasContactsMetadata:Z

.field private mHasEditSchema:Z

.field private mInviteActionLabelAttribute:Ljava/lang/String;

.field private mInviteActionLabelResId:I

.field private mInviteContactActivity:Ljava/lang/String;

.field private final mIsExtension:Z

.field private mViewContactNotifyService:Ljava/lang/String;

.field private mViewGroupActivity:Ljava/lang/String;

.field private mViewGroupLabelAttribute:Ljava/lang/String;

.field private mViewGroupLabelResId:I

.field private mViewStreamItemActivity:Ljava/lang/String;

.field private mViewStreamItemPhotoActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;
    .param p3, "isExtension"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    .line 97
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isExtension"    # Z
    .param p4, "injectedMetadata"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 107
    iput-boolean p3, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mIsExtension:Z

    .line 108
    iput-object p2, p0, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 113
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez p4, :cond_3

    .line 115
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 123
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    const/4 v3, 0x1

    .line 125
    .local v3, "needLineNumberInErrorLog":Z
    if-eqz v4, :cond_0

    .line 126
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 130
    :cond_0
    const/4 v3, 0x0

    .line 131
    iget-boolean v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    if-eqz v6, :cond_4

    .line 132
    const-string v6, "vnd.android.cursor.item/name"

    invoke-direct {p0, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 133
    const-string v6, "#displayName"

    invoke-direct {p0, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 134
    const-string v6, "#phoneticName"

    invoke-direct {p0, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 135
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-direct {p0, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_1
    if-eqz v4, :cond_1

    .line 157
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    .line 162
    iget-object v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "inviteContactActionLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    .line 164
    iget-object v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "viewGroupActionLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    .line 166
    iget-object v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "accountTypeLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 168
    iget-object v6, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string v8, "accountTypeIcon"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 172
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/common/model/account/AccountType;->mIsInitialized:Z

    .line 173
    .end local v3    # "needLineNumberInErrorLog":Z
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_2
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 121
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object v4, p4

    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 138
    .restart local v3    # "needLineNumberInErrorLog":Z
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_2
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v2, "error":Ljava/lang/StringBuilder;
    const-string v6, "Problem reading XML"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 147
    const-string v6, " in line "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    :cond_5
    const-string v6, " for external package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v6, "ExternalAccountType"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    if-eqz v4, :cond_2

    .line 157
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 156
    .end local v0    # "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    .end local v2    # "error":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_6

    .line 157
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v6
.end method

.method private checkKindExists(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    return-void
.end method

.method private loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 191
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x84

    invoke-virtual {v5, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 193
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 194
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v7, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 196
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 201
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    return-object v4

    .line 193
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "xmlAttributeName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 432
    :cond_0
    :goto_0
    return v3

    .line 415
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_2

    .line 416
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be a resource name beginnig with \'@\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 417
    goto :goto_0

    .line 419
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 427
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 428
    .local v3, "resId":I
    if-nez v3, :cond_0

    .line 429
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 430
    goto :goto_0

    .line 423
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 425
    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    return v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

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
    .line 279
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    return-object v0
.end method

.method public hasContactsMetadata()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    return v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 292
    .local v6, "attrs":Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .local v15, "type":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 296
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v15, v0, :cond_2

    .line 297
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "No start tag found"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    .end local v15    # "type":I
    :catch_0
    move-exception v8

    .line 392
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string v18, "Problem reading XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v17

    .line 300
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v15    # "type":I
    :cond_2
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, "rootTag":Ljava/lang/String;
    const-string v17, "ContactsAccountType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "ContactsSource"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 303
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Top level element must be ContactsAccountType, not "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .end local v11    # "rootTag":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_1
    move-exception v8

    .line 394
    .local v8, "e":Ljava/io/IOException;
    new-instance v17, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string v18, "Problem reading XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v17

    .line 307
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v11    # "rootTag":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_3
    const/16 v17, 0x1

    :try_start_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    .line 309
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 310
    .local v5, "attributeCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v5, :cond_13

    .line 311
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "attr":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 313
    .local v16, "value":Ljava/lang/String;
    const-string v17, "ExternalAccountType"

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 314
    const-string v17, "ExternalAccountType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_4
    const-string v17, "editContactActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 317
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    .line 310
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 318
    :cond_5
    const-string v17, "createContactActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 319
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    goto :goto_1

    .line 320
    :cond_6
    const-string v17, "inviteContactActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 321
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    goto :goto_1

    .line 322
    :cond_7
    const-string v17, "inviteContactActionLabel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 323
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 324
    :cond_8
    const-string v17, "viewContactNotifyService"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 325
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    goto :goto_1

    .line 326
    :cond_9
    const-string v17, "viewGroupActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 327
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_a
    const-string v17, "viewGroupActionLabel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 329
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 330
    :cond_b
    const-string v17, "viewStreamItemActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 331
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    goto :goto_1

    .line 332
    :cond_c
    const-string v17, "viewStreamItemPhotoActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 333
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    goto/16 :goto_1

    .line 334
    :cond_d
    const-string v17, "dataSet"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 335
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 336
    :cond_e
    const-string v17, "extensionPackageNames"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 338
    :cond_f
    const-string v17, "accountType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 339
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    goto/16 :goto_1

    .line 340
    :cond_10
    const-string v17, "accountTypeLabel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 341
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 342
    :cond_11
    const-string v17, "accountTypeIcon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 343
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 345
    :cond_12
    const-string v17, "ExternalAccountType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported attribute "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 350
    .end local v4    # "attr":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_13
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 353
    .local v12, "startDepth":I
    :cond_14
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v12, :cond_19

    :cond_15
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_19

    .line 355
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 359
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 360
    .local v14, "tag":Ljava/lang/String;
    const-string v17, "EditSchema"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 361
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 363
    :cond_16
    const-string v17, "ContactsDataKind"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 364
    sget-object v17, Landroid/R$styleable;->ContactsDataKind:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 366
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v10, Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-direct {v10}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>()V

    .line 368
    .local v10, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 371
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 373
    .local v13, "summaryColumn":Ljava/lang/String;
    if-eqz v13, :cond_17

    .line 375
    new-instance v17, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 378
    :cond_17
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "detailColumn":Ljava/lang/String;
    if-eqz v7, :cond_18

    .line 383
    new-instance v17, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 386
    :cond_18
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 396
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "detailColumn":Ljava/lang/String;
    .end local v10    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v13    # "summaryColumn":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    :cond_19
    return-void
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mIsExtension:Z

    return v0
.end method
