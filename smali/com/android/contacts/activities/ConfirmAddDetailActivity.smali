.class public Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.super Landroid/app/Activity;
.source "ConfirmAddDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;
    }
.end annotation


# static fields
.field private static final MIME_TYPE_PRIORITY_LIST:[Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z

.field private static sProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContactId:J

.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private final mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mEditorContainerView:Landroid/view/ViewGroup;

.field private mEntityDeltaList:Lcom/android/contacts/model/RawContactDeltaList;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsReadOnly:Z

.field private mMimetype:Ljava/lang/String;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

.field private mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

.field private mReadOnlyWarningView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 107
    const-string v0, "ConfirmAdd"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->VERBOSE_LOGGING:Z

    .line 191
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    const-string v1, "vnd.android.cursor.item/im"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->MIME_TYPE_PRIORITY_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 200
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    .line 211
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    .line 218
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    .line 761
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onSaveCompleted(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->showDialogContent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startExtraInfoQuery()V

    return-void
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->MIME_TYPE_PRIORITY_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setExtraInfoField(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 103
    sput-object p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1600()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/model/RawContactDeltaList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setEntityDeltaList(Lcom/android/contacts/model/RawContactDeltaList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/contacts/activities/ConfirmAddDetailActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startDisambiguationQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ConfirmAddDetailActivity;JLandroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/net/Uri;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startPhotoQuery(JLandroid/net/Uri;)V

    return-void
.end method

.method private static addEditableRawContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;)Lcom/android/contacts/model/RawContactDelta;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entityDeltaList"    # Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    const/4 v13, 0x0

    .line 623
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 624
    .local v1, "accounts":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 625
    .local v3, "editableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    .line 627
    const/4 v5, 0x0

    .line 658
    :goto_0
    return-object v5

    .line 629
    :cond_0
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 630
    .local v2, "editableAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v11, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 634
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v8, Lcom/android/contacts/model/RawContact;

    invoke-direct {v8}, Lcom/android/contacts/model/RawContact;-><init>()V

    .line 635
    .local v8, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v8, v2}, Lcom/android/contacts/model/RawContact;->setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 637
    new-instance v5, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 641
    .local v5, "entityDelta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 642
    .local v4, "entity":Lcom/android/contacts/model/RawContactDelta;
    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v11}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 644
    .local v10, "readOnlyNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 645
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/ValuesDelta;

    .line 646
    .local v9, "readOnlyName":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v11, "vnd.android.cursor.item/name"

    invoke-static {v5, v0, v11}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    .line 650
    .local v7, "newName":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v7, v9}, Lcom/android/contacts/common/model/ValuesDelta;->copyStructuredNameFieldsFrom(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 656
    .end local v4    # "entity":Lcom/android/contacts/model/RawContactDelta;
    .end local v7    # "newName":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v9    # "readOnlyName":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v10    # "readOnlyNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    invoke-virtual {p1, v5}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private bindEditor()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 665
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/RawContactDeltaList;

    if-nez v4, :cond_0

    .line 666
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 671
    :cond_0
    iget-boolean v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    if-eqz v4, :cond_2

    .line 672
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const v5, 0x7f090158

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 675
    const v4, 0x7f0b003d

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 677
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->showDialogContent()V

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 682
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 684
    .local v2, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v4, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v4, :cond_3

    .line 685
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 686
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    .line 688
    .local v3, "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 689
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 690
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->inflateEditorView(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;)V

    goto :goto_0
.end method

.method private static dismissProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 868
    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 869
    .local v0, "dialog":Landroid/app/ProgressDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 872
    :cond_0
    sput-object v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    .line 873
    return-void

    .line 868
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 4

    .prologue
    .line 751
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 752
    .local v0, "task":Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/model/RawContactDeltaList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/RawContactDeltaList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 753
    return-void
.end method

.method private inflateEditorView(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 8
    .param p1, "dataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "valuesDelta"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDelta;

    .prologue
    const/4 v4, 0x0

    .line 704
    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/editor/EditorUiUtils;->getLayoutResourceId(Ljava/lang/String;)I

    move-result v6

    .line 705
    .local v6, "layoutResId":I
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 708
    .local v7, "view":Landroid/view/View;
    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 709
    check-cast v0, Lcom/android/contacts/editor/Editor;

    .line 711
    .local v0, "editor":Lcom/android/contacts/editor/Editor;
    invoke-interface {v0, v4}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 712
    new-instance v5, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v5}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 715
    .end local v0    # "editor":Lcom/android/contacts/editor/Editor;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 716
    return-void
.end method

.method private onSaveCompleted(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 882
    if-eqz p1, :cond_0

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 884
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 888
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->finish()V

    .line 889
    return-void

    .line 886
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(I)V

    goto :goto_0
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    .line 300
    return-void
.end method

.method private setDisplayName()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    return-void
.end method

.method private setEntityDeltaList(Lcom/android/contacts/model/RawContactDeltaList;)V
    .locals 4
    .param p1, "entityList"    # Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 575
    :cond_0
    sget-boolean v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_1

    .line 576
    const-string v1, "ConfirmAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEntityDeltaList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/RawContactDeltaList;

    .line 582
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v1, p0}, Lcom/android/contacts/model/RawContactDeltaList;->getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    .line 585
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    if-nez v1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-static {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->addEditableRawContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    .line 588
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_2

    .line 589
    const-string v1, "ConfirmAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEntityDeltaList: created editable raw_contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    if-nez v1, :cond_4

    .line 595
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    .line 596
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 612
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->bindEditor()V

    .line 613
    return-void

    .line 598
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    .line 600
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v1, p0}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 603
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 604
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 607
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-static {p0, v1, v2, v0}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setExtraInfoField(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 732
    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 733
    .local v0, "extraTextView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    return-void
.end method

.method private showDialogContent()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 744
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;)V
    .locals 8
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private startDisambiguationQuery(Ljava/lang/String;)V
    .locals 11
    .param p1, "contactDisplayName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 333
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 334
    .local v8, "builder":Landroid/net/Uri$Builder;
    const-string v0, "limit"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 335
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 339
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v9, "display_name IS NULL"

    .line 341
    .local v9, "displayNameSelection":Ljava/lang/String;
    new-array v6, v7, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 346
    .local v6, "selectionArgs":[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "photo_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " IS NULL AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " <> ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 343
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "displayNameSelection":Ljava/lang/String;
    :cond_0
    const-string v9, "display_name = ?"

    .line 344
    .restart local v9    # "displayNameSelection":Ljava/lang/String;
    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v10

    iget-wide v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0
.end method

.method private startExtraInfoQuery()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x3

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "contact_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private startPhotoQuery(JLandroid/net/Uri;)V
    .locals 8
    .param p1, "photoId"    # J
    .param p3, "lookupKey"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    .line 236
    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->finish()V

    .line 241
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 243
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    const-string v2, "vnd.android.cursor.item/phone_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    .line 252
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 254
    const v2, 0x7f040007

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setContentView(I)V

    .line 256
    const v2, 0x7f0b0033

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    .line 257
    const v2, 0x7f0b0039

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    .line 260
    const v2, 0x7f0b0038

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v2, 0x7f0b003d

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v2, 0x7f0b003c

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v2, 0x7f0b0036

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    .line 270
    const v2, 0x7f0b002c

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 271
    const v2, 0x7f0b003a

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    .line 273
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->resetAsyncQueryHandler()V

    .line 274
    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startContactQuery(Landroid/net/Uri;)V

    .line 276
    new-instance v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    return-void

    .line 245
    :cond_2
    const-string v2, "email"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    const-string v2, "vnd.android.cursor.item/email_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    goto/16 :goto_0

    .line 248
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error: No valid mimetype found in intent extras"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 286
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const-string v0, "ConfirmAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 859
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 861
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    .line 862
    return-void
.end method
