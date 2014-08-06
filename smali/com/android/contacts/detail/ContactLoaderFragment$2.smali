.class Lcom/android/contacts/detail/ContactLoaderFragment$2;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;->createLauncherShortcutWithContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$parentActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 384
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    return-void
.end method
