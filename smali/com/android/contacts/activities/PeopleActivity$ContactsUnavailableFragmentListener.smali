.class Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactsUnavailableActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsUnavailableFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAccountAction()V
    .locals 5

    .prologue
    .line 1330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1332
    const-string v1, "authorities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.contacts"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 1335
    return-void
.end method

.method public onCreateNewContactAction()V
    .locals 4

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 1326
    return-void
.end method

.method public onFreeInternalStorageAction()V
    .locals 3

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 1346
    return-void
.end method

.method public onImportContactsFromFileAction()V
    .locals 3

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v1

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V

    .line 1341
    return-void
.end method
