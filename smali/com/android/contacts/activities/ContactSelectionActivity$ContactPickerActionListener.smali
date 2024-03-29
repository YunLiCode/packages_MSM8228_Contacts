.class final Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/ContactSelectionActivity$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method

.method private launchAddToContactDialog(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 468
    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v5

    .line 473
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 474
    .local v2, "intentExtraKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 477
    const-string v6, "name"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 478
    const-string v6, "name"

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 481
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    .line 482
    .local v3, "numIntentExtraKeys":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 483
    const-string v6, "phone"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "phone_type"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 485
    .local v1, "hasPhone":Z
    :goto_1
    const-string v6, "email"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "email_type"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    .line 487
    .local v0, "hasEmail":Z
    :goto_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    .end local v0    # "hasEmail":Z
    .end local v1    # "hasPhone":Z
    :cond_4
    move v1, v5

    .line 483
    goto :goto_1

    .restart local v1    # "hasPhone":Z
    :cond_5
    move v0, v5

    .line 485
    goto :goto_2

    .line 488
    .end local v1    # "hasPhone":Z
    :cond_6
    if-ne v3, v4, :cond_0

    .line 489
    const-string v6, "phone"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "email"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    move v5, v4

    goto :goto_0
.end method


# virtual methods
.method public onCreateNewContactAction()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # invokes: Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$500(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    .line 421
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 5
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 426
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->launchAddToContactDialog(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const-class v3, Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    if-eqz v0, :cond_0

    .line 436
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 452
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 457
    return-void
.end method
