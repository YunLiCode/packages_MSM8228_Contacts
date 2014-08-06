.class Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupDetailFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountTypeString"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 1405
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1419
    return-void
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1409
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1410
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1411
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1412
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1413
    return-void
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 1393
    return-void
.end method

.method public onGroupTitleUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1399
    return-void
.end method
