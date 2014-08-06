.class Lcom/android/contacts/activities/GroupEditorActivity$3;
.super Ljava/lang/Object;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsNotFound()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 154
    return-void
.end method

.method public onGroupNotFound()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 144
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 149
    return-void
.end method

.method public onSaveFinished(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/activities/GroupEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 172
    return-void

    .line 164
    :cond_1
    if-eqz p2, :cond_0

    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    const-class v2, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/GroupEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
