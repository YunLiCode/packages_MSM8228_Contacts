.class Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 844
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 848
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 853
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 854
    # getter for: Lcom/android/contacts/activities/PeopleActivity;->show4TabsPeople:Z
    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity;->access$100()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 855
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 856
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V
    invoke-static {v2, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$300(Lcom/android/contacts/activities/PeopleActivity;I)V

    .line 857
    if-ne p1, v0, :cond_1

    .line 858
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$400(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 862
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 858
    goto :goto_0
.end method
