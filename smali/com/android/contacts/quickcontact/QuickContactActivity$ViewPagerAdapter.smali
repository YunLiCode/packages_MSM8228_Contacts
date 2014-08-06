.class Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 579
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 580
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 584
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, "fragment":Lcom/android/contacts/quickcontact/QuickContactListFragment;
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 587
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {v1, v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setActions(Ljava/util/List;)V

    .line 588
    return-object v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 598
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .line 599
    .local v0, "fragment":Lcom/android/contacts/quickcontact/QuickContactListFragment;
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 600
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_1
    const/4 v1, -0x2

    goto :goto_1
.end method
