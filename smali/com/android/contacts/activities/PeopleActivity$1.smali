.class Lcom/android/contacts/activities/PeopleActivity$1;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    const-string v0, "PeopleActivity"

    const-string v1, "refresh data"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    .line 1093
    :cond_0
    return-void
.end method
