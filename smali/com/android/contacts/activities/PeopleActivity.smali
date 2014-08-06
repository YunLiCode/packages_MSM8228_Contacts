.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
    }
.end annotation


# static fields
.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static show4TabsPeople:Z


# instance fields
.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mBrowserView:Landroid/view/View;

.field private mCardLoadingDialog:Landroid/app/ProgressDialog;

.field private mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field private mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentFilterIsValid:Z

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEmptyDialerFragment:Landroid/app/Fragment;

.field private mEnableDebugMenuOptions:Z

.field private mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFavoritesView:Landroid/view/View;

.field private mFragmentInitialized:Z

.field private mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

.field private mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

.field private mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mOptionsMenuContactsAvailable:Z

.field private mPeopleActivityView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mPreference:Landroid/content/SharedPreferences;

.field private mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z

    .line 211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 132
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 143
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    .line 147
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    .line 150
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 168
    new-instance v0, Landroid/app/Fragment;

    invoke-direct {v0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEmptyDialerFragment:Landroid/app/Fragment;

    .line 179
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    .line 1085
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$1;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 217
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    .line 218
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 219
    invoke-static {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/common/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PeopleActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEmptyDialerFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method private areContactWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areContactWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private areGroupWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 238
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private configureContactListFragment()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1047
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v8}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 1049
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    .line 1050
    .local v4, "useTwoPane":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1051
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 1052
    .local v1, "layoutDirection":I
    if-ne v1, v5, :cond_0

    move v0, v5

    .line 1054
    .local v0, "isLayoutRtl":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 1055
    if-eqz v0, :cond_1

    .line 1059
    .local v3, "position":I
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 1060
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionVisible(Z)V

    .line 1061
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 1062
    return-void

    .end local v0    # "isLayoutRtl":Z
    .end local v3    # "position":I
    :cond_0
    move v0, v6

    .line 1052
    goto :goto_0

    .restart local v0    # "isLayoutRtl":Z
    :cond_1
    move v3, v5

    .line 1055
    goto :goto_1

    .line 1057
    :cond_2
    if-eqz v0, :cond_3

    move v3, v5

    .restart local v3    # "position":I
    :cond_3
    goto :goto_1

    :cond_4
    move v5, v6

    .line 1061
    goto :goto_2
.end method

.method private configureContactListFragmentForRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1024
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    .line 1025
    .local v0, "contactUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1029
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 1035
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 1036
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 1043
    :goto_0
    return-void

    .line 1041
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFragments(Z)V
    .locals 7
    .param p1, "fromRequest"    # Z

    .prologue
    .line 565
    if-eqz p1, :cond_3

    .line 566
    const/4 v2, 0x0

    .line 567
    .local v2, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 568
    .local v0, "actionCode":I
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    .line 570
    .local v3, "searchMode":Z
    sparse-switch v0, :sswitch_data_0

    .line 601
    const/4 v4, -0x1

    .line 604
    .local v4, "tabToOpen":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 605
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 608
    :cond_0
    if-eqz v2, :cond_1

    .line 609
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    .line 610
    const/4 v3, 0x0

    .line 613
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 614
    const/4 v3, 0x0

    .line 617
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 618
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragmentForRequest()V

    .line 621
    .end local v0    # "actionCode":I
    .end local v2    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    .end local v3    # "searchMode":Z
    .end local v4    # "tabToOpen":I
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragment()V

    .line 622
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureGroupListFragment()V

    .line 624
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 625
    return-void

    .line 572
    .restart local v0    # "actionCode":I
    .restart local v2    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    .restart local v3    # "searchMode":Z
    :sswitch_0
    const/4 v5, -0x2

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    .line 574
    const/4 v4, 0x2

    .line 575
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 577
    .end local v4    # "tabToOpen":I
    :sswitch_1
    const/4 v5, -0x5

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    .line 579
    const/4 v4, 0x2

    .line 580
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 585
    .end local v4    # "tabToOpen":I
    :sswitch_2
    const/4 v4, 0x3

    .line 586
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 590
    .end local v4    # "tabToOpen":I
    :sswitch_3
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 591
    .local v1, "currentlyLoadedContactUri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 593
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/contacts/widget/TransitionAnimationView;->setMaskVisibility(Z)V

    .line 595
    :cond_4
    const/4 v4, 0x2

    .line 596
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 598
    .end local v1    # "currentlyLoadedContactUri":Landroid/net/Uri;
    .end local v4    # "tabToOpen":I
    :sswitch_4
    const/4 v4, 0x1

    .line 599
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_4
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x8c -> :sswitch_3
    .end sparse-switch
.end method

.method private configureGroupListFragment()V
    .locals 3

    .prologue
    .line 1065
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    .line 1066
    .local v0, "useTwoPane":Z
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 1070
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectionVisible(Z)V

    .line 1071
    return-void

    .line 1066
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private createNewGroup()V
    .locals 2

    .prologue
    .line 1749
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1750
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1751
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1752
    return-void
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const v2, 0x7f0b00d9

    .line 349
    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    .line 351
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 354
    .local v10, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v12

    .line 357
    .local v12, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v11

    .line 358
    .local v11, "isUsingTwoPanes":Z
    if-eqz v11, :cond_4

    .line 359
    const v0, 0x7f0b00e5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 360
    const v0, 0x7f0b00df

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 361
    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 396
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 398
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V

    .line 404
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 405
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 406
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 408
    if-eqz v11, :cond_3

    .line 412
    const v0, 0x7f0b00dc

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPeopleActivityView:Lcom/android/contacts/widget/TransitionAnimationView;

    .line 413
    const v0, 0x7f0b00e4

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    .line 414
    const v0, 0x7f0b00e1

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    .line 415
    const v0, 0x7f0b00e3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    .line 416
    const v0, 0x7f0b00de

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    .line 419
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanesInFavorites(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileFrequentFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    .line 421
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileFrequentFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 422
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileFrequentFragment;->setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    .line 423
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-virtual {v0, v13}, Lcom/android/contacts/list/ContactTileFrequentFragment;->enableQuickContact(Z)V

    .line 426
    :cond_1
    const v0, 0x7f0b00e2

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 427
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 429
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    .line 430
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    .line 431
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, v13}, Lcom/android/contacts/group/GroupDetailFragment;->setQuickContact(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 439
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Lcom/android/contacts/widget/TransitionAnimationView;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 444
    :cond_3
    invoke-virtual {v12}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 445
    invoke-virtual {v10}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 448
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanesInFavorites(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 449
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v13}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    .line 459
    :goto_1
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, v11}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 460
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 462
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 463
    return-void

    .line 363
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 364
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    .line 365
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 366
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 368
    const-string v8, "tab-pager-favorite"

    .line 369
    .local v8, "FAVORITE_TAG":Ljava/lang/String;
    const-string v7, "tab-pager-all"

    .line 370
    .local v7, "ALL_TAG":Ljava/lang/String;
    const-string v9, "tab-pager-groups"

    .line 378
    .local v9, "GROUPS_TAG":Ljava/lang/String;
    const-string v0, "tab-pager-favorite"

    invoke-virtual {v10, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 380
    const-string v0, "tab-pager-all"

    invoke-virtual {v10, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 382
    const-string v0, "tab-pager-groups"

    invoke-virtual {v10, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 385
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 387
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 388
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 390
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {v12, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 391
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {v12, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 392
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    const-string v1, "tab-pager-groups"

    invoke-virtual {v12, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 454
    .end local v7    # "ALL_TAG":Ljava/lang/String;
    .end local v8    # "FAVORITE_TAG":Ljava/lang/String;
    .end local v9    # "GROUPS_TAG":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    goto/16 :goto_1
.end method

.method private deleteSelection()Z
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x0

    return v0
.end method

.method private dismissCardLoadingDialog()V
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    .line 1939
    :cond_0
    return-void
.end method

.method private hasFrequents()Z
    .locals 1

    .prologue
    .line 1588
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanesInFavorites(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileFrequentFragment;->hasFrequents()Z

    move-result v0

    .line 1591
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->hasFrequents()Z

    move-result v0

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1466
    :cond_0
    return-void
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemId"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 1596
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1597
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1598
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1600
    :cond_0
    return-void
.end method

.method private processIntent(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 321
    const-string v1, "PeopleActivity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " processIntent: forNewIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setResult(I)V

    .line 345
    :goto_0
    return v0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 339
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 345
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setQueryTextToFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1019
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 1020
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 1021
    return-void

    .line 1020
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;Z)V

    .line 640
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 641
    return-void
.end method

.method private setupGroupDetailFragment(Landroid/net/Uri;)V
    .locals 3
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/TransitionAnimationView;->startMaskTransition(ZI)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 650
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 651
    return-void
.end method

.method private showCardLoadingDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1923
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->dismissCardLoadingDialog()V

    .line 1925
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    .line 1926
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090202

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1927
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1928
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1929
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1930
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1931
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCardLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1932
    return-void
.end method

.method private showEmptyStateForTab(I)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 809
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v1, :cond_0

    .line 810
    packed-switch p1, :pswitch_data_0

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 812
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0900d2

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 816
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f090137

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f090138

    goto :goto_1

    .line 820
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f090136

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 810
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateDebugOptionsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    if-eq v0, p1, :cond_0

    .line 701
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    .line 702
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 704
    :cond_0
    return-void
.end method

.method private updateFragmentsVisibility()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 711
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    .line 714
    .local v2, "tab":I
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 715
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 716
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 727
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 728
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    .line 729
    if-ne v2, v5, :cond_1

    .line 730
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v7

    if-nez v7, :cond_6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 806
    :cond_1
    :goto_2
    return-void

    .line 719
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v3

    .line 720
    .local v3, "wasSearchMode":Z
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v4, v6}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 721
    sget-boolean v4, Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 722
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v7, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_3

    .line 723
    :cond_4
    sget-boolean v4, Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v7, v2, -0x1

    if-eq v4, v7, :cond_0

    .line 724
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v8, v2, -0x1

    if-nez v3, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {v7, v8, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_4

    .end local v3    # "wasSearchMode":Z
    :cond_6
    move v5, v6

    .line 730
    goto :goto_1

    .line 738
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 739
    const/4 v2, 0x2

    .line 742
    :cond_8
    packed-switch v2, :pswitch_data_0

    .line 763
    :goto_5
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mPeopleActivityView:Lcom/android/contacts/widget/TransitionAnimationView;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v6, v5}, Lcom/android/contacts/widget/TransitionAnimationView;->startMaskTransition(ZI)V

    .line 764
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 765
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 769
    .local v1, "ft":Landroid/app/FragmentTransaction;
    packed-switch v2, :pswitch_data_1

    .line 798
    :goto_6
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 799
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 800
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 805
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    goto :goto_2

    .line 744
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :pswitch_0
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 747
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    goto :goto_5

    .line 750
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v6}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 753
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 754
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v7

    if-nez v7, :cond_a

    :goto_7
    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    goto :goto_5

    :cond_a
    move v5, v6

    goto :goto_7

    .line 757
    :pswitch_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v6}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 760
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    goto :goto_5

    .line 771
    .restart local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    :pswitch_3
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 772
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 773
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 774
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 775
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 776
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 777
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_6

    .line 780
    :pswitch_4
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 781
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 782
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 783
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 784
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 785
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 786
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_6

    .line 789
    :pswitch_5
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 790
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 791
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 792
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 793
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 794
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 795
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_6

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 769
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateViewConfiguration(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1097
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 1098
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;->status:I

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;->status:I

    if-ne v1, v2, :cond_0

    .line 1164
    :goto_0
    return-void

    .line 1100
    :cond_0
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    .line 1102
    const v0, 0x7f0b00da

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1103
    const v1, 0x7f0b00dd

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1105
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;->status:I

    if-nez v2, :cond_4

    .line 1107
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1112
    :cond_1
    if-eqz v1, :cond_2

    .line 1113
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1163
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0

    .line 1125
    :cond_4
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1126
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "no_modify_accounts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1128
    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactWritableAccountsAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->shouldShowAccountPrompt(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1130
    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    goto :goto_0

    .line 1136
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_6

    .line 1137
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1139
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v2, :cond_7

    .line 1140
    new-instance v2, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 1141
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    .line 1143
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0b00db

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1147
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;)V

    .line 1151
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_8

    .line 1153
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1156
    :cond_8
    if-eqz v1, :cond_9

    .line 1157
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    goto :goto_1
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1469
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v0

    .line 1473
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1477
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1482
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupDetailFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1486
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_0

    .line 677
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 662
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 663
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 679
    :goto_0
    return-void

    .line 666
    :pswitch_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 668
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 671
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "queryString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 673
    const-string v1, "debug debug!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->updateDebugOptionsVisibility(Z)V

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 1762
    packed-switch p1, :pswitch_data_0

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1764
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 1771
    :pswitch_1
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 1773
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 1774
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 1776
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 1780
    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto :goto_0

    .line 1787
    :pswitch_2
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    .line 1789
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1797
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 1762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onAnyStautsChange()V
    .locals 4

    .prologue
    .line 1080
    const-string v0, "PeopleActivity"

    const-string v1, "onAnyStatusChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1083
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 256
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    .line 257
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 260
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1851
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1853
    const-string v0, "PeopleActivity"

    const-string v1, "BACK exit search mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->exitSearchMode()V

    .line 1862
    :goto_0
    return-void

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0

    .line 1857
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1858
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 1860
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 635
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 267
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "ContactsPerf"

    const-string v2, "PeopleActivity.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z

    .line 278
    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    .line 279
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/common/list/ContactListFilterController;->addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v1, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 284
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    .line 285
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 287
    const-string v0, "ContactsPerf"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "ContactsPerf"

    const-string v1, "PeopleActivity.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    const/4 v0, 0x0

    .line 1459
    :goto_0
    return v0

    .line 1440
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1442
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1443
    const v1, 0x7f100006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1459
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 554
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/ContactListFilterController;->removeListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V

    .line 561
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 562
    return-void
.end method

.method public onDialerTabSelected()V
    .locals 3

    .prologue
    .line 683
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    const-string v1, "com.android.dialer"

    const-string v2, "com.android.dialer.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 692
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    const v0, 0x7f0900f5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1814
    packed-switch p1, :pswitch_data_0

    .line 1830
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 1831
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1835
    new-instance v2, Ljava/lang/String;

    new-array v3, v0, [I

    aput v1, v3, v4

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([III)V

    .line 1836
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1837
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1838
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1845
    :cond_0
    :goto_0
    return v0

    .line 1823
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->deleteSelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1845
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1814
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setIntent(Landroid/content/Intent;)V

    .line 295
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 301
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 302
    iput-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    .line 305
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 306
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/high16 v6, 0x80000

    const v3, 0x7f0901c8

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1604
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 1745
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1607
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    goto :goto_0

    .line 1614
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1618
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1620
    if-nez v2, :cond_1

    .line 1621
    const-string v2, ":android:show_fragment"

    const-class v3, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    const-string v2, ":android:show_fragment_title"

    const v3, 0x7f09017e

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1626
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1630
    :sswitch_3
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0

    .line 1636
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSearchRequested()Z

    goto :goto_0

    .line 1640
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1643
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1644
    const-string v2, "finishActivityOnSaveCompleted"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1647
    invoke-virtual {p0, v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1651
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1656
    :sswitch_6
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->createNewGroup()V

    goto :goto_0

    .line 1661
    :sswitch_7
    invoke-static {v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/contacts/external/DeleteDuplicatedService;->isProcessing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1663
    :cond_3
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1665
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    const-class v3, Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V

    goto/16 :goto_0

    .line 1671
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    goto/16 :goto_0

    .line 1675
    :sswitch_9
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1676
    const-string v3, "authorities"

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "com.android.contacts"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1679
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1680
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1684
    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.providers.contacts.DUMP_DATABASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1686
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1691
    :sswitch_b
    invoke-static {v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/contacts/external/DeleteDuplicatedService;->isProcessing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1693
    :cond_5
    const v2, 0x7f0901c9

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1695
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/multichoice/MultiChoiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1696
    const-string v2, "com.android.contacts.action.MULTI_DELETE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1702
    :sswitch_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.MULTI_SHARE_CONTACTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1712
    :sswitch_d
    invoke-static {v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/contacts/external/DeleteDuplicatedService;->isProcessing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1714
    :cond_7
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1717
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.intent.JOIN_SAME_NAME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1718
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    const-string v2, "start_from_menu"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1720
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1725
    :sswitch_e
    invoke-static {v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/android/contacts/external/DeleteDuplicatedService;->isProcessing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1727
    :cond_9
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1730
    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09021c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/PeopleActivity$3;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1604
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0b0126 -> :sswitch_5
        0x7f0b0128 -> :sswitch_7
        0x7f0b0129 -> :sswitch_c
        0x7f0b012e -> :sswitch_4
        0x7f0b012f -> :sswitch_6
        0x7f0b0130 -> :sswitch_b
        0x7f0b0131 -> :sswitch_0
        0x7f0b0132 -> :sswitch_3
        0x7f0b0133 -> :sswitch_8
        0x7f0b0134 -> :sswitch_d
        0x7f0b0135 -> :sswitch_e
        0x7f0b0136 -> :sswitch_9
        0x7f0b0137 -> :sswitch_2
        0x7f0b0138 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 512
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->stop()V

    .line 513
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 514
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 17

    .prologue
    .line 1491
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 1492
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    if-nez v2, :cond_0

    .line 1493
    const/4 v2, 0x0

    .line 1580
    :goto_0
    return v2

    .line 1497
    :cond_0
    const v2, 0x7f0b0126

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1498
    const v3, 0x7f0b0132

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1499
    const v4, 0x7f0b012f

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1500
    const v5, 0x7f0b0133

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1501
    const v6, 0x7f0b0124

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1502
    const v7, 0x7f0b0130

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1503
    const v8, 0x7f0b0131

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1504
    const v9, 0x7f0b0129

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1505
    const v10, 0x7f0b0134

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 1506
    const v11, 0x7f0b0135

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v12

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08000a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 1510
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080011

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080010

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 1512
    if-eqz v12, :cond_1

    .line 1513
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1514
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1515
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1516
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1517
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1518
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1519
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1520
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1521
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1522
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1569
    :goto_1
    if-nez v12, :cond_7

    const/4 v2, 0x1

    move v3, v2

    .line 1570
    :goto_2
    const v4, 0x7f0b012e

    if-eqz v3, :cond_8

    if-eqz v15, :cond_8

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1572
    const v2, 0x7f0b0128

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1573
    const v2, 0x7f0b0136

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1574
    const v4, 0x7f0b0137

    if-eqz v3, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->isEmpty(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1578
    const v2, 0x7f0b0138

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1580
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1524
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 1565
    :goto_5
    const v2, 0x7f0900f9

    move-object/from16 v0, p0

    invoke-static {v0, v6, v2}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 1567
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1526
    :pswitch_0
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1527
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1528
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1529
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->hasFrequents()Z

    move-result v2

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1530
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1531
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1532
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1533
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1534
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 1537
    :pswitch_1
    invoke-interface {v2, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1538
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1539
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1540
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1541
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1542
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1543
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1544
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    if-eqz v2, :cond_4

    :cond_2
    const/4 v2, 0x1

    :goto_6
    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1545
    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_7
    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 1544
    :cond_4
    const/4 v2, 0x0

    goto :goto_6

    .line 1545
    :cond_5
    const/4 v2, 0x0

    goto :goto_7

    .line 1549
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1550
    const/4 v13, 0x1

    invoke-interface {v4, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1551
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1556
    :goto_8
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1557
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1558
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1559
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1560
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1561
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1562
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1553
    :cond_6
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1554
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 1569
    :cond_7
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_2

    .line 1570
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1574
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProviderStatusChange()V
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 1076
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1898
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1902
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 1905
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 520
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->start()V

    .line 521
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 526
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 532
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1881
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1882
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1883
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1891
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1892
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1894
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1756
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1757
    return v1
.end method

.method public onSelectedTabChanged()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 697
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1943
    invoke-static {}, Lcom/android/contacts/external/CardLoadReceiver;->isNeedShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    invoke-static {p0}, Lcom/android/contacts/external/CardLoadReceiver;->isAllCardLoaded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1945
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->dismissCardLoadingDialog()V

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showCardLoadingDialog()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 467
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v2, :cond_3

    .line 468
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    .line 484
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 499
    :cond_0
    :goto_1
    const-string v0, "card_load_state"

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreference:Landroid/content/SharedPreferences;

    .line 500
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 502
    invoke-static {}, Lcom/android/contacts/external/CardLoadReceiver;->isNeedShowTips()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/external/CardLoadReceiver;->isAllCardLoaded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showCardLoadingDialog()V

    .line 505
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/external/CardLoadDetector;->detectLoadState(Landroid/content/Context;)V

    .line 506
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 507
    return-void

    :cond_2
    move v0, v1

    .line 484
    goto :goto_0

    .line 485
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    if-nez v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    .line 496
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 497
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 536
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "PeopleActivity"

    const-string v1, "exit search mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->exitSearchMode()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 545
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->dismissCardLoadingDialog()V

    .line 546
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    const-string v0, "%s@%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
