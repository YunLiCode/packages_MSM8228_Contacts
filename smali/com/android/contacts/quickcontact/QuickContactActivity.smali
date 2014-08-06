.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mContactLoader:Lcom/android/contacts/model/ContactLoader;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mLineAfterTrack:Landroid/view/View;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mOpenDetailsImage:Landroid/widget/ImageView;

.field private mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

.field private mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

.field private mPhotoContainer:Landroid/view/View;

.field private final mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStopWatch:Lcom/android/contacts/common/util/StopWatch;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    .line 151
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-direct {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    .line 134
    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    .line 157
    invoke-static {}, Lcom/android/contacts/common/util/StopWatch;->getNullStopWatch()Lcom/android/contacts/common/util/StopWatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    .line 502
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 567
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 643
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/ContactLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/util/StopWatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/util/StopWatch;)Lcom/android/contacts/common/util/StopWatch;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Lcom/android/contacts/common/util/StopWatch;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private bindData(Lcom/android/contacts/model/Contact;)V
    .locals 31
    .param p1, "data"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 337
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v9

    .line 338
    .local v9, "cache":Lcom/android/contacts/quickcontact/ResolveCache;
    move-object/from16 v11, p0

    .line 340
    .local v11, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsImage:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const-string v29, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    const/16 v29, 0x8

    :goto_0
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    move-object/from16 v29, v0

    const-string v30, "sph"

    invoke-virtual/range {v29 .. v30}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v29, v0

    const v30, 0x7f0b002c

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 348
    .local v25, "photoView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setupContactPhoto(Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    move-object/from16 v29, v0

    const-string v30, "ph"

    invoke-virtual/range {v29 .. v30}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/contacts/model/RawContact;

    .line 353
    .local v26, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual/range {v26 .. v26}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/model/dataitem/DataItem;

    .line 354
    .local v14, "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v24

    .line 355
    .local v24, "mimeType":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 356
    .local v4, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v15

    .line 360
    .local v15, "dataKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 362
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v12

    .line 363
    .local v12, "dataId":J
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/DataItem;->isPrimary()Z

    move-result v21

    .line 364
    .local v21, "isPrimary":Z
    invoke-virtual {v14}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v22

    .line 366
    .local v22, "isSuperPrimary":Z
    if-eqz v15, :cond_3

    .line 370
    new-instance v5, Lcom/android/contacts/quickcontact/DataAction;

    invoke-direct {v5, v11, v14, v15}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 371
    .local v5, "action":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v9, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v28

    .line 372
    .local v28, "wasAdded":Z
    if-eqz v28, :cond_3

    .line 374
    if-nez v22, :cond_2

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    if-nez v29, :cond_3

    .line 375
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v5    # "action":Lcom/android/contacts/quickcontact/Action;
    .end local v28    # "wasAdded":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v29

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/util/DataStatus;

    .line 382
    .local v27, "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v27, :cond_1

    instance-of v0, v14, Lcom/android/contacts/model/dataitem/EmailDataItem;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v16, v14

    .line 383
    check-cast v16, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 384
    .local v16, "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/model/dataitem/ImDataItem;->createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;

    move-result-object v20

    .line 385
    .local v20, "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    if-eqz v15, :cond_1

    .line 386
    new-instance v5, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v0, v20

    invoke-direct {v5, v11, v0, v15}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 387
    .local v5, "action":Lcom/android/contacts/quickcontact/DataAction;
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/contacts/quickcontact/DataAction;->setPresence(I)V

    .line 388
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v9, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto/16 :goto_1

    .line 340
    .end local v4    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "action":Lcom/android/contacts/quickcontact/DataAction;
    .end local v12    # "dataId":J
    .end local v14    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    .end local v15    # "dataKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v16    # "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    .end local v21    # "isPrimary":Z
    .end local v22    # "isSuperPrimary":Z
    .end local v24    # "mimeType":Ljava/lang/String;
    .end local v25    # "photoView":Landroid/widget/ImageView;
    .end local v26    # "rawContact":Lcom/android/contacts/model/RawContact;
    .end local v27    # "status":Lcom/android/contacts/util/DataStatus;
    :cond_4
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 394
    .restart local v25    # "photoView":Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    move-object/from16 v29, v0

    const-string v30, "e"

    invoke-virtual/range {v29 .. v30}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/contacts/quickcontact/ActionMultiMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 398
    .local v6, "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-static {v6}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_2

    .line 401
    .end local v6    # "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    move-object/from16 v29, v0

    const-string v30, "c"

    invoke-virtual/range {v29 .. v30}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 403
    const v29, 0x7f0b0036

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 406
    new-instance v10, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/contacts/quickcontact/ActionMultiMap;->keySet()Ljava/util/Set;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 407
    .local v10, "containedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 409
    sget-object v29, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 410
    .restart local v24    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 417
    .end local v24    # "mimeType":Ljava/lang/String;
    :cond_8
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    aget-object v24, v8, v18

    .line 418
    .restart local v24    # "mimeType":Ljava/lang/String;
    sget-object v29, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 417
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 425
    .end local v24    # "mimeType":Ljava/lang/String;
    :cond_a
    sget-object v29, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 426
    .restart local v24    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 427
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 431
    .end local v24    # "mimeType":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    move-object/from16 v29, v0

    const-string v30, "mt"

    invoke-virtual/range {v29 .. v30}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 438
    .restart local v24    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 439
    .local v7, "actionView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 442
    .end local v7    # "actionView":Landroid/view/View;
    .end local v24    # "mimeType":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    move-object/from16 v29, v0

    const-string v30, "mt"

    invoke-virtual/range {v29 .. v30}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_e

    const/16 v17, 0x1

    .line 445
    .local v17, "hasData":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    move-object/from16 v30, v0

    if-eqz v17, :cond_f

    const/16 v29, 0x0

    :goto_8
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v17, :cond_10

    const/16 v29, 0x0

    :goto_9
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v17, :cond_11

    const/16 v29, 0x0

    :goto_a
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v30, v0

    if-eqz v17, :cond_12

    const/16 v29, 0x0

    :goto_b
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 449
    return-void

    .line 444
    .end local v17    # "hasData":Z
    :cond_e
    const/16 v17, 0x0

    goto :goto_7

    .line 445
    .restart local v17    # "hasData":Z
    :cond_f
    const/16 v29, 0x8

    goto :goto_8

    .line 446
    :cond_10
    const/16 v29, 0x8

    goto :goto_9

    .line 447
    :cond_11
    const/16 v29, 0x8

    goto :goto_a

    .line 448
    :cond_12
    const/16 v29, 0x8

    goto :goto_b
.end method

.method private close(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 263
    if-eqz p1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->fadeOutBackground()V

    .line 265
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideContent(Ljava/lang/Runnable;)Z

    move-result v0

    .line 289
    .local v0, "animated":Z
    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 297
    .end local v0    # "animated":Z
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    goto :goto_0
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z
    .locals 2
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;
    .param p2, "resolveCache"    # Lcom/android/contacts/quickcontact/ResolveCache;
    .param p3, "front"    # Z

    .prologue
    .line 461
    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;Z)V

    .line 463
    const/4 v0, 0x1

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    return-object v0
.end method

.method private handleOutsideTouch()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->isContentFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "resolveCache"    # Lcom/android/contacts/quickcontact/ResolveCache;
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040075

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 477
    .local v4, "typeView":Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 478
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {v4, p1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 479
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    .line 482
    .local v2, "firstInfo":Lcom/android/contacts/quickcontact/Action;
    invoke-virtual {p2, v2, p4}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 483
    .local v1, "descrip":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 484
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v7}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 485
    invoke-virtual {v4, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual {v4, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    return-object v4
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 324
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v4

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 326
    .local v1, "excludedMime":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    const/4 v4, 0x1

    goto :goto_0

    .line 325
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setHeaderNameText(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "resId"    # I

    .prologue
    .line 306
    invoke-virtual {p0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 307
    return-void
.end method

.method private setHeaderNameText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 498
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .line 499
    .local v0, "listFragment":Lcom/android/contacts/quickcontact/QuickContactListFragment;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 500
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 302
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x20000

    .line 162
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    const-string v7, "c"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    const-string v7, "sc"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 175
    .local v1, "lookupUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string v6, "contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 177
    .local v3, "rawContactId":J
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    .end local v3    # "rawContactId":J
    :cond_0
    const-string v6, "missing lookupUri"

    invoke-static {v1, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 183
    const-string v6, "exclude_mimes"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 185
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    const-string v7, "i"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v6, v7, v10, v8}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/ContactLoader;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    .line 190
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    const-string v7, "ld"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 196
    const v6, 0x7f04006e

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    .line 198
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    const-string v7, "l"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 200
    const v6, 0x7f0b00ea

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .line 201
    const v6, 0x7f0b00f0

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    .line 202
    const v6, 0x7f0b00ef

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/HorizontalScrollView;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    .line 203
    const v6, 0x7f0b00ee

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsImage:Landroid/widget/ImageView;

    .line 204
    const v6, 0x7f0b0038

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    .line 205
    const v6, 0x7f0b00ec

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    .line 206
    const v6, 0x7f0b00f1

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    .line 207
    const v6, 0x7f0b00eb

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    .line 209
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v6, v7}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 227
    .local v2, "openDetailsClickHandler":Landroid/view/View$OnClickListener;
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    .line 229
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 230
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    invoke-direct {v7, p0, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 232
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 233
    .local v5, "sourceBounds":Landroid/graphics/Rect;
    if-eqz v5, :cond_1

    .line 234
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v6, v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    .line 238
    :cond_1
    const v6, 0x7f0b00ed

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 239
    const v6, 0x7f0b0036

    const v7, 0x7f090040

    invoke-direct {p0, v6, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(II)V

    .line 241
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    const-string v7, "v"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v6, v7}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 250
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;

    const-string v7, "cf"

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 251
    return-void
.end method
