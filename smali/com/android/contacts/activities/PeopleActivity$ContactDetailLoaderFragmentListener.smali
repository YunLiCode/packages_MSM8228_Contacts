.class Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDetailLoaderFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 0

    .prologue
    .line 1256
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 1291
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/model/Contact;)V
    .locals 2
    .param p1, "result"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 1260
    if-nez p1, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyState()V

    .line 1278
    :goto_0
    return-void

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;-><init>(Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;Lcom/android/contacts/model/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 1282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1283
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1285
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1286
    return-void
.end method
