.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;,
        Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactData:Lcom/android/contacts/model/Contact;

.field private mContactHasSocialUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardDragToListView:Landroid/view/View$OnDragListener;

.field private mForwardTouchToListView:Landroid/view/View$OnTouchListener;

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsUniqueEmail:Z

.field private mIsUniqueNumber:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOtherEntriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPhotoTouchOverlay:Landroid/view/View;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mQuickFixButton:Landroid/widget/Button;

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShowStaticPhoto:Z

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticPhotoContainer:Landroid/view/ViewGroup;

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mView:Landroid/view/View;

.field private mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 164
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 167
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 173
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardTouchToListView:Landroid/view/View$OnTouchListener;

    .line 253
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardDragToListView:Landroid/view/View$OnDragListener;

    .line 266
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/widget/ListAdapter;
    .param p3, "x3"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    return-void
.end method

.method private addMoreNetworks()V
    .locals 7

    .prologue
    .line 980
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-direct {v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/model/Contact;)V

    .line 984
    .local v1, "popupAdapter":Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V

    .line 998
    .local v2, "popupItemListener":Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$5;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1006
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    return-void
.end method

.method private addNetworks()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 918
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 920
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 924
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    .line 925
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 970
    :cond_0
    :goto_1
    return-void

    .line 919
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f090151

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 931
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    if-eqz v0, :cond_3

    .line 935
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 936
    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 937
    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 938
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    if-lez v3, :cond_3

    .line 942
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 950
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;-><init>(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 954
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    .line 955
    invoke-virtual {v5, v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->setIsInSubSection(Z)V

    .line 956
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setIsInSubSection(Z)V

    .line 960
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 964
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 967
    if-lez v4, :cond_0

    .line 968
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V

    goto/16 :goto_1
.end method

.method private addPhoneticName()V
    .locals 5

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 902
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 906
    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 907
    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 908
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 17

    .prologue
    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 559
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContact;

    .line 568
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v12

    .line 570
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/DataItem;

    .line 571
    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/model/dataitem/DataItem;->setRawContactId(J)V

    .line 573
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 575
    instance-of v1, v2, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    if-eqz v1, :cond_4

    .line 576
    check-cast v2, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 578
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;->getGroupRowId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 579
    if-eqz v1, :cond_3

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    goto :goto_1

    .line 585
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 587
    if-eqz v6, :cond_3

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v4

    invoke-static/range {v1 .. v6}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJLcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v5

    .line 591
    iget v1, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 593
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 594
    :goto_2
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v7

    .line 596
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    if-nez v3, :cond_3

    .line 598
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v3, :cond_12

    if-eqz v1, :cond_12

    .line 599
    check-cast v2, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 601
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 602
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v1, :cond_7

    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 604
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v3, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v14, "smsto"

    iget-object v15, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v3, v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 607
    :goto_4
    const/4 v4, 0x0

    .line 608
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 609
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getVTCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 614
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v4, :cond_c

    .line 615
    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 616
    iput-object v3, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 617
    iget v1, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 618
    iget v1, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltDescriptionRes:I

    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 619
    iput-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 620
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f020024

    :goto_6
    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    .line 623
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f0900f3

    :goto_7
    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    .line 642
    :goto_8
    if-eqz v7, :cond_5

    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 644
    :cond_5
    iput-boolean v7, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 647
    iget-boolean v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v1, :cond_11

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 657
    :goto_9
    const/4 v1, 0x3

    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->textDirection:I

    goto/16 :goto_1

    .line 593
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 602
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 604
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 610
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/contacts/common/util/FeatureQuery;->isIPCallEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 611
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_5

    .line 620
    :cond_a
    const v1, 0x7f02003a

    goto :goto_6

    .line 623
    :cond_b
    const v1, 0x7f0900f4

    goto :goto_7

    .line 626
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_f

    .line 627
    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 628
    iput-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 629
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f020024

    :goto_a
    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    .line 632
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f0900f3

    :goto_b
    iput v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    goto :goto_8

    .line 629
    :cond_d
    const v1, 0x7f02003a

    goto :goto_a

    .line 632
    :cond_e
    const v1, 0x7f0900f4

    goto :goto_b

    .line 635
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v1, :cond_10

    .line 636
    iput-object v3, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_8

    .line 638
    :cond_10
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_8

    .line 652
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 658
    :cond_12
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v3, :cond_14

    if-eqz v1, :cond_14

    .line 660
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto"

    iget-object v14, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v4, v14, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 662
    iput-boolean v7, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 664
    iget-boolean v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v1, :cond_13

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 671
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iget-wide v3, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/contacts/util/DataStatus;

    .line 672
    if-eqz v7, :cond_3

    .line 673
    check-cast v2, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 674
    invoke-static {v2}, Lcom/android/contacts/model/dataitem/ImDataItem;->createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;

    move-result-object v2

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v4

    invoke-static/range {v1 .. v6}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJLcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v1

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    .line 680
    invoke-virtual {v7}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 681
    iget v2, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    iput v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 667
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 684
    :cond_14
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    if-eqz v3, :cond_15

    if-eqz v1, :cond_15

    .line 686
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 688
    :cond_15
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/ImDataItem;

    if-eqz v3, :cond_17

    if-eqz v1, :cond_17

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/contacts/model/dataitem/ImDataItem;

    invoke-static {v1, v5, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iget-wide v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/DataStatus;

    .line 694
    if-eqz v1, :cond_16

    .line 695
    invoke-virtual {v1}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 697
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 698
    :cond_17
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    if-nez v3, :cond_3

    .line 701
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    if-eqz v3, :cond_1a

    if-eqz v1, :cond_1a

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-nez v1, :cond_18

    const/4 v1, 0x1

    .line 706
    :goto_d
    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_19

    const/4 v1, 0x1

    .line 710
    :goto_e
    if-nez v1, :cond_3

    .line 711
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 703
    :cond_18
    const/4 v1, 0x0

    goto :goto_d

    .line 706
    :cond_19
    const/4 v1, 0x0

    goto :goto_e

    .line 714
    :cond_1a
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/NoteDataItem;

    if-eqz v3, :cond_1b

    if-eqz v1, :cond_1b

    .line 716
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 718
    :cond_1b
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    if-eqz v3, :cond_1c

    if-eqz v1, :cond_1c

    .line 720
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 722
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 723
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 725
    :catch_0
    move-exception v1

    .line 726
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse website: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 729
    :cond_1c
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    if-eqz v3, :cond_1e

    if-eqz v1, :cond_1e

    .line 731
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 732
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    if-eqz v1, :cond_1d

    .line 733
    const-string v1, "sip"

    iget-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 738
    :goto_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 736
    :cond_1d
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_10

    .line 745
    :cond_1e
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/EventDataItem;

    if-eqz v3, :cond_20

    if-eqz v1, :cond_20

    .line 746
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 747
    if-eqz v1, :cond_1f

    .line 748
    invoke-static {v1}, Lcom/android/contacts/util/DateUtils;->getNextAnnualDate(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v1

    .line 750
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 751
    const-string v3, "time"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 752
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 753
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 755
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 756
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 758
    :cond_20
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/RelationDataItem;

    if-eqz v3, :cond_21

    if-eqz v1, :cond_21

    .line 759
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 760
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v2, "query"

    iget-object v3, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 765
    :cond_21
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 766
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v3, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    iget-object v4, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 770
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 773
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 775
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 778
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v2, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 787
    :cond_23
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 788
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 789
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 792
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v5, :cond_25

    .line 793
    if-eqz v2, :cond_24

    .line 794
    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_24
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    .line 798
    :cond_25
    const-string v1, "mimetype"

    iput-object v1, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 800
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/Contact;->isSimAccountType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 807
    const-string v2, "vnd.android.cursor.item/ringtone"

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0901fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getCustomRingtone()Ljava/lang/String;

    move-result-object v2

    .line 811
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->isDefaultRingtone(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v4, 0x1040443

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 816
    :goto_12
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->getRingtonePickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 814
    :cond_27
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->getRingtoneName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_12

    :cond_28
    move-object v2, v4

    goto/16 :goto_5
.end method

.method public static buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V
    .locals 5

    .prologue
    const/4 v1, 0x5

    .line 1065
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v0

    .line 1067
    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1076
    if-eqz v0, :cond_2

    move v0, v1

    .line 1078
    :goto_1
    if-ne v0, v1, :cond_5

    .line 1079
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v0

    .line 1080
    iput v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 1081
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1083
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 1084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1086
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1076
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1088
    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1092
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1095
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1100
    :cond_5
    invoke-static {p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getCustomIMIntent(Lcom/android/contacts/model/dataitem/ImDataItem;I)Landroid/content/Intent;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private callByEdit(I)V
    .locals 5

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    const-string v3, "tel"

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2145
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2146
    return-void
.end method

.method private clearDefaultContactMethod(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 2125
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2126
    .local v0, "clearIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2127
    return-void
.end method

.method private configureQuickFix()V
    .locals 6

    .prologue
    .line 517
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 519
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .local v0, "arr$":[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 520
    .local v1, "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->isApplicable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 527
    .end local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    if-nez v4, :cond_2

    .line 528
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    :goto_1
    return-void

    .line 519
    .restart local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private copyToClipboard(I)V
    .locals 5
    .param p1, "viewEntryPosition"    # I

    .prologue
    .line 2131
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2132
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2135
    .local v1, "textToCopy":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2138
    :goto_0
    return-void

    .line 2137
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private createCopy(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 2028
    :cond_0
    return-void
.end method

.method private dismissPopupIfShown()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1157
    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1018
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1019
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1020
    .local v2, "kind":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    .end local v2    # "kind":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1026
    if-eqz v1, :cond_1

    .line 1027
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1034
    return-void
.end method

.method public static getCustomIMIntent(Lcom/android/contacts/model/dataitem/ImDataItem;I)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1110
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1126
    :goto_0
    return-object v0

    .line 1115
    :cond_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 1117
    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v0

    .line 1119
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 1120
    goto :goto_0

    .line 1122
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1123
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "imto"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    const-wide/16 v4, -0x1

    .line 537
    const-wide/16 v0, -0x1

    .line 538
    .local v0, "defaultGroupId":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupMetaData;

    .line 539
    .local v2, "group":Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 541
    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    .line 545
    .end local v0    # "defaultGroupId":J
    .end local v2    # "group":Lcom/android/contacts/GroupMetaData;
    :cond_1
    return-wide v0

    .line 542
    .restart local v0    # "defaultGroupId":J
    .restart local v2    # "group":Lcom/android/contacts/GroupMetaData;
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getRingtoneName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 830
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone uri->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 834
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 840
    if-eqz v1, :cond_0

    .line 841
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 837
    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x1040447

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 840
    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 841
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getRingtonePickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 846
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 852
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->isDefaultRingtone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 858
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 859
    return-object v1

    .line 855
    :cond_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .param p3, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1042
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "groupMetaData":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez p2, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    .line 1047
    .local v0, "group":Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 1048
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isFavorites()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isDefaultRingtone(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 822
    if-nez p1, :cond_0

    .line 823
    const/4 v1, 0x1

    .line 826
    :goto_0
    return v1

    .line 825
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 826
    .local v0, "ringtone":Landroid/net/Uri;
    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    goto :goto_0
.end method

.method private setDefaultContactMethod(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 2120
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2121
    .local v0, "setIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2122
    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addPhoneticName()V

    .line 872
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 873
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 874
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 875
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 876
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 877
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 879
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addNetworks()V

    .line 881
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 882
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 883
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 884
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 885
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 886
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 887
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 888
    return-void
.end method

.method private showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .param p3, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    .line 1135
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1136
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$6;

    invoke-direct {v1, p0, p3}, Lcom/android/contacts/detail/ContactDetailFragment$6;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1151
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1152
    return-void
.end method


# virtual methods
.method protected bindData()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 420
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 428
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v3, :cond_4

    .line 429
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 431
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 433
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 434
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 441
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 444
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 449
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v3, :cond_d

    .line 450
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 451
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    const v6, 0x7f0b002c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 453
    .local v2, "photoView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move v0, v4

    .line 454
    .local v0, "expandPhotoOnClick":Z
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3, v6, v7, v2, v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 456
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 457
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 458
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 459
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/android/contacts/model/Contact;->isSimAccountType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f08000e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 461
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    .end local v0    # "expandPhotoOnClick":Z
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "photoView":Landroid/widget/ImageView;
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    .line 478
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 479
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 480
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 481
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 482
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 483
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 484
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 486
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_e

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 487
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_f

    :goto_5
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 490
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->setupFlattenedList()V

    .line 492
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v3, :cond_7

    .line 493
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {v3, p0, v8}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 494
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 498
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v3, :cond_8

    .line 499
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 500
    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 503
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    .line 505
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 507
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->configureQuickFix()V

    .line 509
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 441
    goto/16 :goto_1

    .restart local v2    # "photoView":Landroid/widget/ImageView;
    :cond_a
    move v0, v5

    .line 453
    goto/16 :goto_2

    .line 463
    .restart local v0    # "expandPhotoOnClick":Z
    .restart local v1    # "listener":Landroid/view/View$OnClickListener;
    :cond_b
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 466
    :cond_c
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    .line 470
    .end local v0    # "expandPhotoOnClick":Z
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "photoView":Landroid/widget/ImageView;
    :cond_d
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    move v3, v5

    .line 486
    goto :goto_4

    :cond_f
    move v4, v5

    .line 487
    goto :goto_5
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleKeyDown(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2151
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 2181
    :goto_0
    return v0

    .line 2154
    :pswitch_0
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2156
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2165
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 2166
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2167
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    if-ne v3, v4, :cond_3

    .line 2169
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 2170
    goto :goto_0

    .line 2172
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 2174
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 2175
    goto :goto_0

    :cond_3
    move v0, v2

    .line 2177
    goto :goto_0

    .line 2160
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2151
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 2021
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 2022
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 2017
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 300
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 301
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 302
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    .line 303
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2093
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2099
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown menu option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2094
    :catch_0
    move-exception v0

    .line 2095
    const-string v1, "ContactDetailFragment"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2096
    const/4 v0, 0x0

    .line 2112
    :goto_0
    return v0

    .line 2101
    :pswitch_0
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToClipboard(I)V

    move v0, v1

    .line 2102
    goto :goto_0

    .line 2104
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultContactMethod(J)V

    move v0, v1

    .line 2105
    goto :goto_0

    .line 2107
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->clearDefaultContactMethod(J)V

    move v0, v1

    .line 2108
    goto :goto_0

    .line 2111
    :pswitch_3
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->callByEdit(I)V

    move v0, v1

    .line 2112
    goto :goto_0

    .line 2099
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 273
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 275
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2047
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2049
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 2050
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2052
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2053
    const v1, 0x7f090192

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2057
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2061
    :cond_1
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2067
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2068
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 2074
    :goto_1
    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_4

    .line 2075
    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2083
    :cond_2
    :goto_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    const/4 v0, 0x3

    const v1, 0x7f090225

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 2069
    :cond_3
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2070
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    goto :goto_1

    .line 2077
    :cond_4
    if-nez v1, :cond_2

    .line 2078
    const/4 v0, 0x2

    const v1, 0x7f090193

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    const v0, 0x7f04000d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardTouchToListView:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardDragToListView:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 313
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 315
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    .line 316
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    .line 318
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 319
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 326
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 327
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2039
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v1, :cond_1

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 2040
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 2041
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, p2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    .line 289
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 290
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 295
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    :cond_0
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    .line 417
    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 398
    :cond_0
    return-void
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "result"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 386
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    .line 387
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 388
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 347
    return-void
.end method

.method public setShowStaticPhoto(Z)V
    .locals 0
    .param p1, "showPhoto"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 375
    return-void
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 363
    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    .line 382
    return-void
.end method
