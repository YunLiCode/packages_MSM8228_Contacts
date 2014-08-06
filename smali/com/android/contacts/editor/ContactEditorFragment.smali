.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;,
        Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;,
        Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field private mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

.field private mAggregationSuggestionView:Landroid/view/View;

.field private mAggregationSuggestionsRawContactId:J

.field private mAutoAddToDefaultGroup:Z

.field private final mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

.field private mContactIdForJoin:J

.field private mContactWritableForJoin:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentAccountName:Ljava/lang/String;

.field private mCurrentAccountType:Ljava/lang/String;

.field private mCurrentPhotoFile:Ljava/lang/String;

.field private mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

.field private final mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDisplayName:Ljava/lang/String;

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private mEnabled:Z

.field private mExistingContactDataReady:Z

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mHasNewContact:Z

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsEdit:Z

.field private mIsUserProfile:Z

.field private mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLoaderStartTime:J

.field private mLookupUri:Landroid/net/Uri;

.field private mNewContactDataReady:Z

.field private mNewLocalProfile:Z

.field private mRawContactIdRequestingPhoto:J

.field private mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestFocus:Z

.field private mState:Lcom/android/contacts/model/RawContactDeltaList;

.field private mStatus:I

.field private mUpdatedPhotos:Landroid/os/Bundle;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 222
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 250
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    .line 254
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    .line 316
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 331
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 332
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 1939
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1975
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$5;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 335
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/editor/ContactEditorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/graphics/Bitmap;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "x2"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p3, "x3"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactEditor"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 1617
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getRawContactId()J

    move-result-wide v1

    .line 1618
    .local v1, "rawContactId":J
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1620
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 1622
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 1625
    :cond_0
    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 1627
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez v3, :cond_1

    .line 1628
    new-instance v3, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {v3, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 1629
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    .line 1630
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->start()V

    .line 1633
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    .line 1636
    const-string v3, "com.android.sim"

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1637
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v0

    .line 1638
    .local v0, "nameEditor":Lcom/android/contacts/editor/LabeledEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 1640
    .end local v0    # "nameEditor":Lcom/android/contacts/editor/LabeledEditorView;
    :cond_2
    return-void
.end method

.method private addAccountSwitcher(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 4

    .prologue
    .line 1026
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const v1, 0x7f0b009d

    invoke-virtual {p2, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1031
    const v2, 0x7f0b009c

    invoke-virtual {p2, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1032
    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {v3, p0, v0, v2, p1}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/model/RawContactDelta;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    return-void
.end method

.method private bindEditors()V
    .locals 34

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/RawContactDeltaList;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 791
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 794
    const/16 v25, 0x0

    .line 795
    .local v25, "rawContactIdOfPopupMenu":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 796
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ne v0, v8, :cond_6

    .line 797
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v8, :cond_6

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 799
    .local v30, "view":Landroid/view/View;
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/android/contacts/editor/RawContactEditorView;

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v27

    .line 801
    .local v27, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v31

    if-nez v31, :cond_5

    .line 797
    .end local v27    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .restart local v27    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_5
    move-object/from16 v10, v30

    .line 805
    check-cast v10, Lcom/android/contacts/editor/RawContactEditorView;

    .line 806
    .local v10, "editorView":Lcom/android/contacts/editor/RawContactEditorView;
    const-string v31, "_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 807
    .local v23, "rawContactId":J
    invoke-virtual {v10}, Lcom/android/contacts/editor/RawContactEditorView;->isIsPopupMenuShowing()Z

    move-result v16

    .line 808
    .local v16, "isShowing":Z
    if-eqz v16, :cond_4

    .line 809
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInfoPopupWindow(Z)V

    .line 810
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 816
    .end local v10    # "editorView":Lcom/android/contacts/editor/RawContactEditorView;
    .end local v13    # "i":I
    .end local v16    # "isShowing":Z
    .end local v23    # "rawContactId":J
    .end local v27    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v30    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v12

    .line 817
    .local v12, "focusView":Landroid/view/View;
    if-eqz v12, :cond_7

    .line 818
    invoke-virtual {v12}, Landroid/view/View;->clearFocus()V

    .line 822
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "layout_inflater"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 826
    .local v15, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    .line 827
    .local v4, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v19

    .line 829
    .local v19, "numRawContacts":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v11

    .line 830
    .local v11, "firstEntry":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v31, "account_type"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountType:Ljava/lang/String;

    .line 831
    const-string v31, "account_name"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountName:Ljava/lang/String;

    .line 833
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_14

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/model/RawContactDelta;

    .line 836
    .local v21, "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/RawContactDelta;->isVisible()Z

    move-result v31

    if-nez v31, :cond_9

    .line 833
    :cond_8
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 838
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v26

    .line 839
    .local v26, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 842
    .restart local v23    # "rawContactId":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v31

    if-nez v31, :cond_e

    .line 843
    const v31, 0x7f040077

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .local v9, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    move-object/from16 v31, v9

    .line 845
    check-cast v31, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V

    .line 850
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    move/from16 v31, v0

    if-nez v31, :cond_10

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v5

    .line 853
    .local v5, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/model/RawContactDelta;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    .line 862
    .end local v5    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v32

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setState(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    .line 870
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 871
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_11

    .line 872
    invoke-virtual {v9, v7}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 886
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-direct {v0, v9, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDeltaList;)V

    .line 888
    instance-of v0, v9, Lcom/android/contacts/editor/RawContactEditorView;

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .local v6, "activity":Landroid/app/Activity;
    move-object/from16 v22, v9

    .line 890
    check-cast v22, Lcom/android/contacts/editor/RawContactEditorView;

    .line 891
    .local v22, "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    new-instance v17, Lcom/android/contacts/editor/ContactEditorFragment$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lcom/android/contacts/editor/ContactEditorFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/app/Activity;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 908
    .local v17, "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v18

    .line 909
    .local v18, "nameEditor":Lcom/android/contacts/editor/StructuredNameEditorView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 910
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/editor/StructuredNameEditorView;->requestFocus()Z

    .line 911
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 913
    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mDefaultDisplayName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_c

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mDefaultDisplayName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setDisplayName(Ljava/lang/String;)V

    .line 918
    :cond_c
    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v20

    .line 920
    .local v20, "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 921
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->setAutoAddToDefaultGroup(Z)V

    .line 923
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    move-wide/from16 v31, v0

    cmp-long v31, v23, v31

    if-nez v31, :cond_d

    .line 924
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 927
    :cond_d
    if-eqz v25, :cond_8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    cmp-long v31, v31, v23

    if-nez v31, :cond_8

    .line 929
    check-cast v9, Lcom/android/contacts/editor/RawContactEditorView;

    .end local v9    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInfoPopupWindow(Z)V

    goto/16 :goto_3

    .line 847
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    .end local v18    # "nameEditor":Lcom/android/contacts/editor/StructuredNameEditorView;
    .end local v20    # "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v22    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    :cond_e
    const v31, 0x7f040076

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/editor/RawContactEditorView;

    .restart local v9    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    goto/16 :goto_4

    .line 856
    .restart local v5    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_5

    .line 859
    .end local v5    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_5

    .line 873
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_11
    const-string v31, "com.android.sim"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_13

    .line 874
    const-string v31, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 876
    .local v29, "valuesDeltaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/contacts/common/model/ValuesDelta;

    .line 877
    .local v28, "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v31

    if-eqz v31, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/common/model/ValuesDelta;->isFromTemplate()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 878
    invoke-virtual {v9, v7}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 882
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v28    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v29    # "valuesDeltaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_13
    const-string v31, "com.android.sim"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Bundle;->clear()V

    goto/16 :goto_6

    .line 934
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v21    # "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    .end local v23    # "rawContactId":J
    .end local v26    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_14
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 936
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 944
    .restart local v6    # "activity":Landroid/app/Activity;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method private bindEditorsForExistingContact(Ljava/lang/String;ZLcom/google/common/collect/ImmutableList;)V
    .locals 8
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "isUserProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    const/4 v7, 0x1

    .line 569
    invoke-virtual {p0, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 570
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDefaultDisplayName:Ljava/lang/String;

    .line 572
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDeltaList;->addAll(Ljava/util/Iterator;)V

    .line 573
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    .line 574
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 577
    iput-boolean p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 578
    const/4 v2, 0x0

    .line 580
    .local v2, "localProfileExists":Z
    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v5, :cond_2

    .line 581
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 583
    .local v4, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    .line 585
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 586
    const/4 v2, 0x1

    goto :goto_0

    .line 590
    .end local v4    # "state":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    if-nez v2, :cond_2

    .line 591
    new-instance v3, Lcom/android/contacts/model/RawContact;

    invoke-direct {v3}, Lcom/android/contacts/model/RawContact;-><init>()V

    .line 592
    .local v3, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->setAccountToLocal()V

    .line 594
    new-instance v1, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 596
    .local v1, "insert":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    .line 597
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 600
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "insert":Lcom/android/contacts/model/RawContactDelta;
    .end local v3    # "rawContact":Lcom/android/contacts/model/RawContact;
    :cond_2
    iput-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 601
    iput-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    .line 602
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 603
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v0, 0x0

    .line 729
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    .line 730
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 6
    .param p1, "newAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "newAccountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p4, "oldAccountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v5, 0x1

    .line 735
    iput v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 737
    new-instance v1, Lcom/android/contacts/model/RawContact;

    invoke-direct {v1}, Lcom/android/contacts/model/RawContact;-><init>()V

    .line 738
    .local v1, "rawContact":Lcom/android/contacts/model/RawContact;
    if-eqz p1, :cond_1

    .line 739
    invoke-virtual {v1, p1}, Lcom/android/contacts/model/RawContact;->setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 744
    :goto_0
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 745
    .local v2, "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    new-instance v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 746
    .local v0, "insert":Lcom/android/contacts/model/RawContactDelta;
    if-nez p3, :cond_2

    .line 748
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v3, p2, v0, v4}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 756
    :goto_1
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 757
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 758
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 759
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 760
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 764
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v3, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    .line 768
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 770
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 772
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    .line 773
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 774
    return-void

    .line 741
    .end local v0    # "insert":Lcom/android/contacts/model/RawContactDelta;
    .end local v2    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_1
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->setAccountToLocal()V

    goto :goto_0

    .line 750
    .restart local v0    # "insert":Lcom/android/contacts/model/RawContactDelta;
    .restart local v2    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, v0, p4, p2}, Lcom/android/contacts/model/RawContactModifier;->migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_1
.end method

.method private bindGroupMetaData()V
    .locals 4

    .prologue
    .line 992
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 1001
    :cond_0
    return-void

    .line 996
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 997
    .local v1, "editorCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 998
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 999
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 997
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDeltaList;)V
    .locals 7
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    .line 961
    invoke-virtual {p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 962
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 963
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    const/16 v4, 0xf

    .line 980
    .local v4, "mode":I
    :goto_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/model/RawContactDeltaList;)V

    .line 981
    .local v0, "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    invoke-virtual {v2, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 986
    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 987
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 989
    .end local v0    # "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .end local v4    # "mode":I
    :cond_0
    :goto_1
    return-void

    .line 966
    :cond_1
    const/16 v4, 0xe

    .restart local v4    # "mode":I
    goto :goto_0

    .line 969
    .end local v4    # "mode":I
    :cond_2
    const/4 v4, 0x4

    .restart local v4    # "mode":I
    goto :goto_0

    .line 972
    .end local v4    # "mode":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 973
    const/4 v4, 0x1

    .restart local v4    # "mode":I
    goto :goto_0

    .line 976
    .end local v4    # "mode":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    goto :goto_1
.end method

.method private createContact()V
    .locals 3

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 662
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 670
    :goto_0
    return-void

    .line 669
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 679
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    if-eqz p1, :cond_2

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 683
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 684
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_1

    .line 685
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 690
    :cond_1
    :goto_1
    return-void

    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    move-object v3, v2

    .line 679
    goto :goto_0

    .line 688
    .restart local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_1
.end method

.method private disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 2

    .prologue
    .line 1063
    const v0, 0x7f0b009d

    invoke-virtual {p1, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1064
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1066
    return-void
.end method

.method private doJoinContactAction()Z
    .locals 4

    .prologue
    const v3, 0x7f090191

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1147
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1175
    :goto_0
    return v0

    .line 1152
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1155
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 1157
    goto :goto_0

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 1162
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-static {v2, v0}, Lcom/android/contacts/model/RawContactModifier;->hasAnyData(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z

    move-result v0

    .line 1163
    if-nez v0, :cond_2

    .line 1164
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 1165
    goto :goto_0

    .line 1169
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1170
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v2

    if-lt v2, v0, :cond_3

    .line 1171
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0900f6

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 1172
    goto :goto_0

    .line 1175
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    goto :goto_0
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 1279
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1280
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    .line 1281
    :cond_0
    return-void
.end method

.method private doSplitContactAction()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1137
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    :goto_0
    return v0

    .line 1139
    :cond_0
    new-instance v1, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 1141
    invoke-virtual {v1, p0, v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1142
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "SplitContactConfirmationDialog"

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasMoreThanOnePhoto()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 1909
    const/4 v0, 0x0

    .line 1910
    .local v0, "countWithPicture":I
    iget-object v10, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v10}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v4

    .line 1911
    .local v4, "numEntities":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1912
    iget-object v10, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v10, v3}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 1913
    .local v1, "entity":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1914
    const-string v10, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v10}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    .line 1915
    .local v6, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoto()[B

    move-result-object v10

    if-eqz v10, :cond_1

    .line 1916
    add-int/lit8 v0, v0, 0x1

    .line 1928
    :cond_0
    :goto_1
    if-le v0, v9, :cond_2

    .line 1933
    .end local v1    # "entity":Lcom/android/contacts/model/RawContactDelta;
    .end local v6    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :goto_2
    return v9

    .line 1918
    .restart local v1    # "entity":Lcom/android/contacts/model/RawContactDelta;
    .restart local v6    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_1
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1919
    .local v7, "rawContactId":J
    iget-object v10, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1920
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1921
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1923
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1911
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "rawContactId":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1933
    .end local v1    # "entity":Lcom/android/contacts/model/RawContactDelta;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private hasPendingChanges()Z
    .locals 2

    .prologue
    .line 1191
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 1192
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z

    move-result v1

    return v1
.end method

.method private hasValidState()Z
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactWritable()Z
    .locals 6

    .prologue
    .line 1447
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 1448
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v3

    .line 1449
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1450
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5, v2}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 1451
    .local v1, "entity":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 1452
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1453
    const/4 v5, 0x1

    .line 1456
    .end local v1    # "entity":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :goto_1
    return v5

    .line 1449
    .restart local v1    # "entity":Lcom/android/contacts/model/RawContactDelta;
    .restart local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1456
    .end local v1    # "entity":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEditingUserProfile()Z
    .locals 1

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinAggregate(J)V
    .locals 8

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    const-class v6, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v7, "joinCompleted"

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1440
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1441
    return-void
.end method

.method private rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 6
    .param p1, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "oldAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p3, "newAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v5, 0x0

    .line 703
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 704
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 706
    .local v2, "oldAccountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 708
    .local v1, "newAccountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountType:Ljava/lang/String;

    .line 709
    iget-object v3, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountName:Ljava/lang/String;

    .line 711
    invoke-virtual {v1}, Lcom/android/contacts/common/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 712
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "external activity called in rebind situation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v3, p3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    .line 718
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    .line 719
    new-instance v3, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v3}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 720
    invoke-direct {p0, p3, v1, p1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    .line 721
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    if-eqz v3, :cond_0

    .line 722
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDefaultDisplayName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Ljava/lang/String;ZLcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method private restoreEditingStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1411
    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1412
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 1413
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 1414
    return-void
.end method

.method private saveDefaultAccountIfNecessary()V
    .locals 7

    .prologue
    .line 1006
    const-string v5, "android.intent.action.INSERT"

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 1015
    .local v3, "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 1016
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v4

    .line 1017
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "dataSet":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 1021
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v5, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 1019
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_2
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v0, v2, v4, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private selectAccountAndCreateContact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 627
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 652
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 637
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 643
    if-nez v0, :cond_2

    .line 644
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 645
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 646
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 648
    :cond_3
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v1, "PHONE"

    const-string v2, "com.android.localphone"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1871
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    .line 1873
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gez v1, :cond_1

    .line 1875
    :cond_0
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "Invalid bitmap passed to setPhoto()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_1
    if-eqz v0, :cond_2

    .line 1879
    invoke-virtual {v0, p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1884
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1886
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    return-void

    .line 1881
    :cond_2
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "The contact that requested the photo is no longer present."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1422
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 1427
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 1428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1430
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 954
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private validateAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 442
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saveCompleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    return-void

    .line 446
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Action String "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saveCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected doEditSuggestedContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 1772
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1773
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 1776
    :cond_0
    return-void
.end method

.method protected doJoinSuggestedContact([J)V
    .locals 2
    .param p1, "rawContactIds"    # [J

    .prologue
    const/4 v1, 0x1

    .line 1722
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->setJoinWithRawContacts([J)V

    .line 1727
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public doSaveAction()V
    .locals 1

    .prologue
    .line 1284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 1285
    return-void
.end method

.method protected getContactId()J
    .locals 3

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 1604
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v2, "contact_id"

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1605
    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1609
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 5
    .param p1, "rawContactId"    # J

    .prologue
    .line 1893
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1894
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1895
    .local v0, "childView":Landroid/view/View;
    instance-of v3, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1896
    check-cast v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1897
    .local v1, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1902
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :goto_1
    return-object v1

    .line 1893
    .restart local v0    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1902
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 458
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 459
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 460
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 461
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "addToDefaultDirectory"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    .line 463
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 465
    return-void

    :cond_0
    move v0, v2

    .line 461
    goto :goto_0

    :cond_1
    move v1, v2

    .line 463
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 392
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 394
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->validateAction(Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDeltaList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    const-string v2, "android.intent.action.EDIT"

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 413
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 414
    const-string v2, "android.intent.action.EDIT"

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    .line 433
    :cond_1
    :goto_1
    return-void

    .line 409
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    goto :goto_0

    .line 416
    :cond_3
    const-string v2, "android.intent.action.INSERT"

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 418
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_4

    move-object v0, v3

    .line 420
    .local v0, "account":Landroid/accounts/Account;
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_5

    move-object v1, v3

    .line 423
    .local v1, "dataSet":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_6

    .line 425
    new-instance v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_1

    .line 418
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v0, v2

    goto :goto_2

    .line 420
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 429
    .restart local v1    # "dataSet":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1824
    iget v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1825
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1829
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1865
    :cond_1
    :goto_0
    return-void

    .line 1834
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1837
    :pswitch_0
    if-ne p2, v5, :cond_1

    .line 1838
    if-eqz p3, :cond_1

    .line 1839
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1840
    .local v1, "contactId":J
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_0

    .line 1846
    .end local v1    # "contactId":J
    :pswitch_1
    if-eq p2, v5, :cond_3

    .line 1847
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    goto :goto_0

    .line 1851
    :cond_3
    if-eqz p3, :cond_4

    .line 1852
    const-string v3, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 1853
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    if-eqz v0, :cond_4

    .line 1854
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 1861
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V

    goto :goto_0

    .line 1834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAggregationSuggestionChange()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1644
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1645
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_2

    .line 1672
    :cond_1
    :goto_0
    return-void

    .line 1650
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 1652
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1656
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1658
    if-eqz v0, :cond_1

    .line 1661
    const v3, 0x7f0b0099

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1662
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    .line 1663
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1664
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1665
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1666
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v5, v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;-><init>(Landroid/app/Activity;ZLcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1670
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1671
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1666
    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 355
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 356
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 357
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 476
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 477
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 480
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 482
    if-nez p1, :cond_2

    .line 484
    new-instance v0, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v0}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-nez v0, :cond_1

    .line 512
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 514
    :cond_1
    return-void

    .line 487
    :cond_2
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDeltaList;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 488
    const-string v0, "photorequester"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 490
    const-string v0, "viewidgenerator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 491
    const-string v0, "currentphotofile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    .line 492
    const-string v0, "contactidforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 493
    const-string v0, "contactwritableforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 494
    const-string v0, "showJoinSuggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 495
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 496
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 497
    const-string v0, "newLocalProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 498
    const-string v0, "isUserProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 499
    const-string v0, "updatedPhotos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 500
    const-string v0, "isEdit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    .line 501
    const-string v0, "hasNewContact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 502
    const-string v0, "newContactDataReady"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    .line 503
    const-string v0, "existingContactDataReady"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    .line 504
    const-string v0, "rawContacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 1070
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1071
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    .line 385
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setHasOptionsMenu(Z)V

    .line 387
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 374
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    .line 377
    :cond_0
    return-void
.end method

.method public onEditAction(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1732
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;-><init>()V

    .line 1734
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1735
    const-string v2, "contactUri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1736
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1737
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1738
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "edit"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1739
    return-void
.end method

.method public onExternalEditorRequest(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    .line 565
    return-void
.end method

.method public onJoinAction(JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1676
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    move v1, v2

    .line 1677
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 1678
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1677
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1680
    :cond_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;-><init>()V

    .line 1682
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1683
    const-string v4, "rawContactIds"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1684
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1685
    invoke-virtual {v0, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1687
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "join"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    :goto_1
    return-void

    .line 1688
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1288
    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "saveResult"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;I)V

    .line 1290
    return-void

    :cond_0
    move v3, v1

    .line 1288
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 1123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1133
    :goto_0
    return v0

    .line 1125
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    goto :goto_0

    .line 1127
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 1129
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSplitContactAction()Z

    move-result v0

    goto :goto_0

    .line 1131
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doJoinContactAction()Z

    move-result v0

    goto :goto_0

    .line 1123
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0120
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1078
    const v0, 0x7f0b0120

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1079
    const v3, 0x7f0b0121

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1080
    const v4, 0x7f0b0122

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1081
    const v5, 0x7f0b0124

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1082
    const v6, 0x7f0b0123

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1085
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1088
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    const-string v0, "com.android.sim"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1098
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDeltaList;->getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_2
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1101
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1104
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1106
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0900fa

    invoke-static {v0, v5, v1}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 1115
    :goto_3
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 1116
    :goto_4
    if-ge v2, v0, :cond_6

    .line 1117
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v0, v2

    .line 1088
    goto :goto_0

    .line 1094
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_5
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_5

    :cond_3
    move v1, v2

    .line 1098
    goto :goto_2

    .line 1107
    :cond_4
    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1109
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0900fb

    invoke-static {v0, v5, v1}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    goto :goto_3

    .line 1112
    :cond_5
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1119
    :cond_6
    return-void
.end method

.method public onSaveCompleted(ZIZLandroid/net/Uri;I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1294
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveCompleted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    if-eqz p1, :cond_0

    .line 1296
    if-eqz p3, :cond_3

    .line 1297
    if-eq p2, v8, :cond_0

    .line 1298
    if-eqz p4, :cond_2

    .line 1299
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f09013c

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1344
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1404
    :cond_1
    :goto_1
    return-void

    .line 1301
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f09020a

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1305
    :cond_3
    const/16 v1, 0xa

    if-ne p5, v1, :cond_4

    .line 1306
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f09020b

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1307
    :cond_4
    const/4 v1, 0x4

    if-ne p5, v1, :cond_5

    .line 1308
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f090204

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1309
    :cond_5
    const/4 v1, 0x6

    if-ne p5, v1, :cond_6

    .line 1310
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f090205

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1311
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->restoreEditingStatus()V

    goto :goto_1

    .line 1313
    :cond_6
    const/4 v1, 0x5

    if-ne p5, v1, :cond_7

    .line 1314
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f090206

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1315
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->restoreEditingStatus()V

    goto :goto_1

    .line 1317
    :cond_7
    const/4 v1, 0x7

    if-ne p5, v1, :cond_8

    .line 1318
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentAccountType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentAccountName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentAccountType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1320
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f090207

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1322
    :cond_8
    const/16 v1, 0x8

    if-ne p5, v1, :cond_9

    .line 1323
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f090208

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1324
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->restoreEditingStatus()V

    goto/16 :goto_1

    .line 1326
    :cond_9
    if-ne p5, v8, :cond_a

    .line 1327
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f090209

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1328
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->restoreEditingStatus()V

    goto/16 :goto_1

    .line 1330
    :cond_a
    const/16 v1, 0x9

    if-ne p5, v1, :cond_c

    .line 1331
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f09020c

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1332
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1333
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 1334
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->clearSimInvalidNumber()V

    goto :goto_2

    .line 1337
    :cond_b
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->restoreEditingStatus()V

    goto/16 :goto_1

    .line 1340
    :cond_c
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f09013d

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1348
    :pswitch_0
    if-eqz p3, :cond_d

    if-eqz p4, :cond_d

    .line 1349
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_e

    .line 1352
    :goto_3
    const-string v1, "contacts"

    .line 1354
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1355
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    const-string v2, "contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1358
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1360
    const-string v0, "content://contacts/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1361
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1363
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_4
    move-object v0, v1

    .line 1373
    :cond_d
    iput v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1374
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1349
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1366
    :cond_f
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4

    .line 1379
    :pswitch_1
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1381
    if-ne p2, v8, :cond_10

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1382
    invoke-direct {p0, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    .line 1387
    :cond_10
    new-instance v1, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v1}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 1388
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {p0, v1, p4, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1389
    iput-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 1390
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1391
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v9, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 1396
    :pswitch_2
    iput v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1397
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_11

    .line 1398
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0, p4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSplit(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1400
    :cond_11
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "No listener registered, can not call onSplitFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1793
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1794
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1800
    :cond_0
    const-string v0, "photorequester"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1801
    const-string v0, "viewidgenerator"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1802
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v0, "contactidforjoin"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1804
    const-string v0, "contactwritableforjoin"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1805
    const-string v0, "showJoinSuggestions"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1806
    const-string v0, "enabled"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1807
    const-string v0, "newLocalProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1808
    const-string v0, "isUserProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1809
    const-string v0, "status"

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1810
    const-string v0, "updatedPhotos"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1811
    const-string v0, "hasNewContact"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1812
    const-string v0, "isEdit"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1813
    const-string v0, "newContactDataReady"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1814
    const-string v0, "existingContactDataReady"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1815
    const-string v1, "rawContacts"

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1819
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1820
    return-void

    .line 1815
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onSplitContactConfirmed()V
    .locals 2

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "mState became null during the user\'s confirming split action. Cannot perform the save action."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :goto_0
    return-void

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->markRawContactsForSplitting()V

    .line 2006
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 454
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 455
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 361
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 363
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 366
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 369
    :cond_0
    return-void
.end method

.method public revert()Z
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1270
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    .line 1274
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1272
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    goto :goto_0
.end method

.method public save(I)Z
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1200
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v8, :cond_1

    :cond_0
    move v8, v1

    .line 1238
    :goto_0
    return v8

    .line 1205
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_3

    .line 1206
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1209
    :cond_3
    iput v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1211
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1212
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    if-ne p1, v8, :cond_4

    .line 1215
    iput v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    goto :goto_0

    .line 1218
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    move v3, v8

    :goto_1
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "saveResult"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;I)V

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_1

    .line 1223
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 1226
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->saveDefaultAccountIfNecessary()V

    .line 1229
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const-string v2, "saveMode"

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "saveCompleted"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1233
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setAggregationSuggestionViewEnabled(Z)V
    .locals 4

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1789
    :cond_0
    return-void

    .line 1783
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1785
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1786
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1787
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1786
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setData(Lcom/android/contacts/model/Contact;)V
    .locals 13
    .param p1, "contact"    # Lcom/android/contacts/model/Contact;

    .prologue
    const/4 v12, 0x1

    .line 519
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDeltaList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 520
    sget-object v8, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v9, "Ignoring background change. This will have to be rebased later"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 526
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v8

    if-ne v8, v12, :cond_2

    .line 527
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContact;

    .line 528
    .local v4, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v7

    .line 529
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "dataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 531
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v8

    if-nez v8, :cond_2

    .line 533
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v8, :cond_0

    .line 534
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 536
    .local v5, "rawContactId":J
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    new-instance v9, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v9, v3, v7, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 545
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "rawContact":Lcom/android/contacts/model/RawContact;
    .end local v5    # "rawContactId":J
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 548
    .local v2, "displayName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 549
    iput-boolean v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 552
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    .line 553
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 558
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v2, v8, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Ljava/lang/String;ZLcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v3, p1, :cond_1

    .line 339
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 340
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 342
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 343
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 348
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 350
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 609
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 614
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta;

    .line 615
    .local v2, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    .line 616
    .local v3, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 618
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v2, p1}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 469
    return-void
.end method
