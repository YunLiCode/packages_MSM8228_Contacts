.class Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mTabPagerAdapterSearchMode:Z

.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 1

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 884
    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 885
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_1

    .line 935
    if-eqz p1, :cond_0

    .line 938
    const-string v0, "PeopleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request fragment at position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventhough we "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "are in search mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    .line 951
    :goto_0
    return-object v0

    .line 943
    :cond_1
    # getter for: Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z
    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity;->access$100()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 944
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 945
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v0

    goto :goto_0

    .line 946
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 947
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    goto :goto_0

    .line 948
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 949
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v0

    goto :goto_0

    .line 950
    :cond_5
    # getter for: Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z
    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity;->access$100()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 951
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mEmptyDialerFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 954
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 976
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 983
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 985
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z
    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 907
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v2, :cond_1

    .line 908
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_6

    .line 926
    :cond_0
    :goto_0
    return v0

    .line 912
    :cond_1
    # getter for: Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z
    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity;->access$100()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 913
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 914
    const/4 v0, 0x3

    goto :goto_0

    .line 916
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 917
    const/4 v0, 0x2

    goto :goto_0

    .line 919
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 920
    const/4 v0, 0x1

    goto :goto_0

    .line 922
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mEmptyDialerFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/app/Fragment;

    move-result-object v2

    if-eq p1, v2, :cond_0

    :cond_6
    move v0, v1

    .line 926
    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 959
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 962
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 963
    .local v0, "f":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 966
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 967
    return-object v0

    .line 966
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 989
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1015
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1010
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 994
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 995
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v1, v0, :cond_0

    .line 996
    if-nez p2, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 999
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1001
    :cond_2
    if-eqz v0, :cond_3

    .line 1002
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1004
    :cond_3
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "searchMode"    # Z

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-ne p1, v0, :cond_0

    .line 897
    :goto_0
    return-void

    .line 895
    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    .line 896
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 931
    return-void
.end method
