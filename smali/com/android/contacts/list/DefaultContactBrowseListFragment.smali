.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/android/contacts/common/widget/CustomSearchView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mCounterHeaderView:Landroid/widget/TextView;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mMessageContainer:Landroid/widget/FrameLayout;

.field private mProfileHeader:Landroid/view/View;

.field private mProfileHeaderContainer:Landroid/widget/FrameLayout;

.field private mProfileMessage:Landroid/widget/Button;

.field private mProfileTitle:Landroid/widget/TextView;

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSearchView:Lcom/android/contacts/common/widget/CustomSearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 85
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 88
    return-void
.end method

.method private addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 326
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    .line 327
    const v1, 0x7f040085

    invoke-virtual {p1, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    .line 328
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f0b011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 329
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f0b011d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    .line 330
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 332
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 335
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    .line 336
    const v1, 0x7f040084

    invoke-virtual {p1, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    .line 337
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 338
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 340
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    return-void
.end method

.method private checkHeaderViewVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 175
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 181
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_1
    return-void

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showEmptyUserProfile(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 306
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    return-void

    :cond_0
    move v0, v2

    .line 306
    goto :goto_0

    :cond_1
    move v0, v2

    .line 307
    goto :goto_1

    :cond_2
    move v0, v2

    .line 308
    goto :goto_2

    :cond_3
    move v0, v2

    .line 309
    goto :goto_3

    :cond_4
    move v0, v2

    .line 310
    goto :goto_4

    :cond_5
    move v1, v2

    .line 311
    goto :goto_5
.end method

.method private showSearchProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_0
    return-void

    .line 170
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 193
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-nez v4, :cond_0

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 197
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-static {v4, v0, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    move-result v1

    .line 200
    .local v1, "shouldShowHeader":Z
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 202
    .end local v1    # "shouldShowHeader":Z
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;-><init>(Landroid/app/Activity;)V

    .line 103
    .local v0, "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 105
    return-object v0
.end method

.method public exitSearchMode()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchView:Lcom/android/contacts/common/widget/CustomSearchView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchView:Lcom/android/contacts/common/widget/CustomSearchView;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/CustomSearchView;->clearFocus()V

    .line 155
    :cond_0
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    const v0, 0x7f04001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 292
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    sget-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b006b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/widget/CustomSearchView;

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchView:Lcom/android/contacts/common/widget/CustomSearchView;

    .line 118
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchView:Lcom/android/contacts/common/widget/CustomSearchView;

    invoke-virtual {v3, p0}, Lcom/android/contacts/common/widget/CustomSearchView;->setListener(Lcom/android/contacts/common/widget/CustomSearchView$Listener;)V

    .line 119
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchView:Lcom/android/contacts/common/widget/CustomSearchView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080010

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/contacts/common/widget/CustomSearchView;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b0024

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 123
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b011e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V

    .line 129
    invoke-direct {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 133
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "headerContainer":Landroid/widget/FrameLayout;
    const v3, 0x7f040079

    invoke-virtual {p1, v3, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    .line 135
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 137
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    .line 140
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v4, 0x7f0b0107

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 143
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/contacts/common/list/LetterListView;

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 146
    .local v2, "useLetterBar":Z
    check-cast v1, Lcom/android/contacts/common/list/LetterListView;

    .end local v1    # "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/LetterListView;->setLetterBarEnabled(Z)V

    .line 148
    .end local v2    # "useLetterBar":Z
    :cond_0
    return-void

    .end local v0    # "headerContainer":Landroid/widget/FrameLayout;
    :cond_1
    move v3, v4

    .line 119
    goto/16 :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 98
    return-void
.end method

.method public onSearchTextChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 189
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 190
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 287
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 288
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 160
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 161
    if-nez p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->exitSearchMode()V

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 13
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz p2, :cond_8

    .line 209
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 210
    .local v3, "count":I
    if-eqz v3, :cond_3

    .line 211
    iget-boolean v9, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    sub-int/2addr v3, v9

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0c0002

    invoke-virtual {v9, v12, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "format":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-eqz v9, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/list/ContactListAdapter;

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/list/ContactListAdapter;->setContactsCount(Ljava/lang/String;)V

    .line 282
    .end local v3    # "count":I
    .end local v6    # "format":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v3    # "count":I
    :cond_1
    move v9, v11

    .line 211
    goto :goto_0

    .line 218
    .restart local v6    # "format":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 221
    .end local v6    # "format":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v4

    .line 222
    .local v4, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 223
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v9, v4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v9, v12}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v7

    .line 225
    .local v7, "mAccountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-direct {p0, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 227
    if-eqz v4, :cond_4

    iget v5, v4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 228
    .local v5, "filterType":I
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 254
    :pswitch_0
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v10, 0x7f0900d0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 227
    .end local v5    # "filterType":I
    :cond_4
    const/4 v5, -0x2

    goto :goto_2

    .line 230
    .restart local v5    # "filterType":I
    :pswitch_1
    iget-object v0, v4, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 231
    .local v0, "accountName":Ljava/lang/CharSequence;
    const-string v9, "com.android.localphone"

    iget-object v12, v4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 241
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v12, 0x7f0900d3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-virtual {p0, v12, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 233
    :cond_6
    const-string v9, "com.android.sim"

    iget-object v12, v4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 234
    const/4 v8, 0x1

    .line 235
    .local v8, "subscription":I
    const-string v9, "SIM1"

    iget-object v12, v4, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 236
    const/4 v8, 0x0

    .line 238
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 245
    .end local v0    # "accountName":Ljava/lang/CharSequence;
    .end local v8    # "subscription":I
    :pswitch_2
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v10, 0x7f090140

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 248
    :pswitch_3
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v10, 0x7f0900d2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 251
    :pswitch_4
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v10, 0x7f0900d1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 259
    .end local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v3    # "count":I
    .end local v4    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    .end local v5    # "filterType":I
    .end local v7    # "mAccountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    .line 260
    .local v2, "adapter":Lcom/android/contacts/common/list/ContactListAdapter;
    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 266
    :cond_9
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-direct {p0, v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    .line 280
    :goto_4
    invoke-direct {p0, v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    goto/16 :goto_1

    .line 269
    :cond_a
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->isLoading()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 271
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v12, 0x7f09003c

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    .line 272
    invoke-direct {p0, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_4

    .line 274
    :cond_b
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v10, 0x7f09003e

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 277
    invoke-direct {p0, v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_4

    .line 228
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
