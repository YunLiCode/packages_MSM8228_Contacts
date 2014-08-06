.class Lcom/android/contacts/activities/PeopleActivity$3;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 1733
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$3;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1736
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.intent.DELETE_DUPLICATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$3;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1738
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$3;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v2, 0x7f090221

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1740
    return-void
.end method
