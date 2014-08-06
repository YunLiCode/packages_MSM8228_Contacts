.class public Lcom/android/contacts/detail/ContactDetailLayoutController;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;
    }
.end annotation


# instance fields
.field private final SINGLE_PANE_FADE_IN_DURATION:I

.field private final mActivity:Landroid/app/Activity;

.field private mContactData:Lcom/android/contacts/model/Contact;

.field private final mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactHasUpdates:Z

.field private mContactUri:Landroid/net/Uri;

.field private mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mDetailFragmentView:Landroid/view/View;

.field private final mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutMode:I

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

.field private final mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTabCarouselIsAnimating:Z

.field private final mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private final mTransitionAnimationView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

.field private mUpdatesFragmentView:Landroid/view/View;

.field private final mViewContainer:Landroid/view/View;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

.field private mViewPagerState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Lcom/android/contacts/widget/TransitionAnimationView;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedState"    # Landroid/os/Bundle;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p4, "animationView"    # Lcom/android/contacts/widget/TransitionAnimationView;
    .param p5, "viewContainer"    # Landroid/view/View;
    .param p6, "contactDetailFragmentListener"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x113

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->SINGLE_PANE_FADE_IN_DURATION:I

    .line 521
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 642
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$2;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 665
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$3;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .line 118
    if-nez p3, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize a ContactDetailLayoutController without a non-null FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    .line 124
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 126
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 127
    iput-object p6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 129
    iput-object p4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTransitionAnimationView:Lcom/android/contacts/widget/TransitionAnimationView;

    .line 132
    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewContainer:Landroid/view/View;

    .line 134
    const v0, 0x7f0b0045

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 135
    const v0, 0x7f0b0046

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .line 138
    const v0, 0x7f0b0047

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    .line 142
    const v0, 0x7f0b003e

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 143
    const v0, 0x7f0b0048

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    .line 158
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->initialize(Landroid/os/Bundle;)V

    .line 159
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    goto :goto_0

    .line 155
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getOffsetOfFirstItemInList(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    return v0
.end method

.method private getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 512
    :goto_0
    return v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getCurrentPage()I

    move-result v0

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOffsetOfFirstItemInList(I)I
    .locals 1
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFirstListItemOffset()I

    move-result v0

    .line 633
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getFirstListItemOffset()I

    move-result v0

    goto :goto_0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b0048

    const v7, 0x7f0b003e

    const/4 v6, 0x0

    .line 162
    const/4 v1, 0x1

    .line 163
    .local v1, "fragmentsAddedToFragmentManager":Z
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 165
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 171
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-nez v3, :cond_0

    .line 172
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 173
    new-instance v3, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 174
    const/4 v1, 0x0

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    .line 178
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v3, v4}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "currentPageIndex":I
    if-eqz p1, :cond_1

    .line 183
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 184
    const-string v3, "contactHasUpdates"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 185
    const-string v3, "currentPageIndex"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 188
    :cond_1
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    packed-switch v3, :pswitch_data_0

    .line 264
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 265
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v3, :cond_6

    .line 266
    invoke-direct {p0, v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates(Z)V

    .line 271
    :cond_3
    :goto_1
    return-void

    .line 194
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040008

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 196
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040016

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    .line 199
    new-instance v3, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    .line 200
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setAboutFragmentView(Landroid/view/View;)V

    .line 201
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setUpdatesFragmentView(Landroid/view/View;)V

    .line 203
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 204
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 205
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 206
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 208
    if-nez v1, :cond_4

    .line 209
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 210
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 212
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 214
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 215
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 218
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V

    .line 219
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreCurrentTab(I)V

    .line 220
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    invoke-direct {v4, p0, v6}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 222
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 224
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 228
    :pswitch_1
    if-nez v1, :cond_2

    .line 229
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 230
    .restart local v2    # "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 232
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 234
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 235
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0

    .line 244
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :pswitch_2
    if-nez v1, :cond_5

    .line 245
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 246
    .restart local v2    # "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 248
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 250
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 251
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 254
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    check-cast v3, Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    check-cast v4, Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v5, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setFragmentViews(Lcom/android/contacts/widget/FrameLayoutWithOverlay;Lcom/android/contacts/widget/FrameLayoutWithOverlay;)V

    .line 257
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    goto/16 :goto_0

    .line 268
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto/16 :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private resetFragments()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->resetAdapter()V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->resetAdapter()V

    .line 488
    return-void
.end method

.method private resetTabCarousel()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->reset()V

    .line 479
    return-void
.end method

.method private resetViewPager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 483
    return-void
.end method

.method private showContactWithUpdates(Z)V
    .locals 6
    .param p1, "animateStateChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v4, :cond_0

    .line 426
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 359
    .local v1, "previousContactUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 360
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 362
    .local v0, "isDifferentContact":Z
    :goto_1
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 417
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LayoutMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "isDifferentContact":Z
    :cond_1
    move v0, v3

    .line 360
    goto :goto_1

    .line 364
    .restart local v0    # "isDifferentContact":Z
    :pswitch_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTransitionAnimationView:Lcom/android/contacts/widget/TransitionAnimationView;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/widget/TransitionAnimationView;->startMaskTransition(ZI)V

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 375
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 421
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetFragments()V

    .line 424
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    .line 425
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/model/Contact;)V

    .line 381
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreYCoordinate()V

    .line 382
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v4, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 384
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 386
    if-eqz v0, :cond_5

    .line 387
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetViewPager()V

    .line 388
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetTabCarousel()V

    .line 390
    :cond_5
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 391
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getFirstListItemOffset()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->animateAppear(II)V

    goto :goto_2

    .line 398
    :pswitch_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 399
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 400
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->animateAppear()V

    goto :goto_2

    .line 406
    :pswitch_3
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v4, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 407
    if-eqz v0, :cond_6

    .line 408
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->reset()V

    .line 410
    :cond_6
    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 411
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->animateAppear()V

    .line 413
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    goto :goto_2

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showContactWithoutUpdates()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 433
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v4, :cond_0

    .line 475
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 438
    .local v1, "previousContactUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 439
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 441
    .local v0, "isDifferentContact":Z
    :goto_1
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 467
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LayoutMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "isDifferentContact":Z
    :cond_1
    move v0, v3

    .line 439
    goto :goto_1

    .line 444
    .restart local v0    # "isDifferentContact":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 446
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :goto_2
    if-eqz v0, :cond_2

    .line 471
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetFragments()V

    .line 474
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v2, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 453
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 454
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 458
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 459
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    goto :goto_2

    .line 462
    :pswitch_3
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v4, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 463
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v4, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 464
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    goto :goto_2

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private syncScrollStateBetweenLists(I)V
    .locals 2
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 622
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->requestToMoveToOffset(I)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->requestToMoveToOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    .locals 2

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 497
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid current item for ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 495
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 516
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 517
    const-string v0, "contactHasUpdates"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    const-string v0, "currentPageIndex"

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    return-void
.end method

.method public setContactData(Lcom/android/contacts/model/Contact;)V
    .locals 9
    .param p1, "data"    # Lcom/android/contacts/model/Contact;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 277
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v6, :cond_1

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "contactHadUpdates":Z
    const/4 v2, 0x0

    .line 280
    .local v2, "contactWasLoaded":Z
    const/4 v3, 0x1

    .line 287
    .local v3, "isDifferentContact":Z
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    .line 288
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    :goto_1
    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 290
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 292
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTransitionAnimationView:Lcom/android/contacts/widget/TransitionAnimationView;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 293
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTransitionAnimationView:Lcom/android/contacts/widget/TransitionAnimationView;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v6, :cond_4

    move v6, v4

    :goto_2
    const/4 v8, -0x1

    invoke-virtual {v7, v6, v8}, Lcom/android/contacts/widget/TransitionAnimationView;->startMaskTransition(ZI)V

    .line 305
    :cond_0
    :goto_3
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v6, :cond_7

    .line 306
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates(Z)V

    .line 311
    :goto_5
    return-void

    .line 282
    .end local v1    # "contactHadUpdates":Z
    .end local v2    # "contactWasLoaded":Z
    .end local v3    # "isDifferentContact":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 283
    .restart local v1    # "contactHadUpdates":Z
    const/4 v2, 0x1

    .line 284
    .restart local v2    # "contactWasLoaded":Z
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    .restart local v3    # "isDifferentContact":Z
    :goto_6
    goto :goto_0

    .end local v3    # "isDifferentContact":Z
    :cond_2
    move v3, v5

    goto :goto_6

    .restart local v3    # "isDifferentContact":Z
    :cond_3
    move v6, v5

    .line 288
    goto :goto_1

    :cond_4
    move v6, v5

    .line 293
    goto :goto_2

    .line 297
    :cond_5
    if-nez v2, :cond_0

    .line 298
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewContainer:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 299
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 300
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    const/high16 v6, 0x3f800000

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 301
    const-wide/16 v6, 0x113

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_6
    move v4, v5

    .line 306
    goto :goto_4

    .line 309
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto :goto_5
.end method

.method public showEmptyState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 314
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    packed-switch v0, :pswitch_data_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 317
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 347
    :goto_0
    return-void

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 329
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 338
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/model/Contact;)V

    .line 339
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
