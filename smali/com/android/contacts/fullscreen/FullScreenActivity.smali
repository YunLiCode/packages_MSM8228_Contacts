.class public Lcom/android/contacts/fullscreen/FullScreenActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FullScreenActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFullScreenFragment:Lcom/android/contacts/fullscreen/FullScreenFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/contacts/fullscreen/FullScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/fullscreen/FullScreenActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private createViewsAndFragments()V
    .locals 5

    .prologue
    .line 45
    const v2, 0x7f040043

    invoke-virtual {p0, v2}, Lcom/android/contacts/fullscreen/FullScreenActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 48
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v2, "full_screen_tag"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/fullscreen/FullScreenFragment;

    iput-object v2, p0, Lcom/android/contacts/fullscreen/FullScreenActivity;->mFullScreenFragment:Lcom/android/contacts/fullscreen/FullScreenFragment;

    .line 50
    iget-object v2, p0, Lcom/android/contacts/fullscreen/FullScreenActivity;->mFullScreenFragment:Lcom/android/contacts/fullscreen/FullScreenFragment;

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 52
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/android/contacts/fullscreen/FullScreenFragment;

    invoke-direct {v2}, Lcom/android/contacts/fullscreen/FullScreenFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/fullscreen/FullScreenActivity;->mFullScreenFragment:Lcom/android/contacts/fullscreen/FullScreenFragment;

    .line 53
    const v2, 0x7f0b00a9

    iget-object v3, p0, Lcom/android/contacts/fullscreen/FullScreenActivity;->mFullScreenFragment:Lcom/android/contacts/fullscreen/FullScreenFragment;

    const-string v4, "full_screen_tag"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 55
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 56
    sget-object v2, Lcom/android/contacts/fullscreen/FullScreenActivity;->TAG:Ljava/lang/String;

    const-string v3, "FullScreenActivity add fragments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->invalidateOptionsMenu()V

    .line 59
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->moveTaskToBack(Z)Z

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object v1, Lcom/android/contacts/fullscreen/FullScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "FullScreenActivity onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->createViewsAndFragments()V

    .line 37
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 39
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 40
    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 72
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/contacts/fullscreen/FullScreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->invalidateOptionsMenu()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const v4, 0x7f0901c9

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/contacts/fullscreen/FullScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-static {v3}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/multichoice/MultiChoiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const-string v2, "com.android.contacts.action.MULTI_DELETE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/contacts/fullscreen/FullScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-static {v3}, Lcom/android/contacts/multichoice/MultiChoiceService;->isProcessing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/fullscreen/FullScreenActivity;->mFullScreenFragment:Lcom/android/contacts/fullscreen/FullScreenFragment;

    invoke-virtual {v2}, Lcom/android/contacts/fullscreen/FullScreenFragment;->areContactsAvailable()Z

    move-result v2

    const-class v3, Lcom/android/contacts/fullscreen/FullScreenActivity;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V

    goto :goto_0

    .line 115
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/multichoice/MultiChoiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v2, "com.android.contacts.action.MULTI_SHARE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/contacts/fullscreen/FullScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0126
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 78
    const v1, 0x7f0b0125

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    .local v0, "loadingIndicatorItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/contacts/fullscreen/FullScreenActivity;->mFullScreenFragment:Lcom/android/contacts/fullscreen/FullScreenFragment;

    invoke-virtual {v1}, Lcom/android/contacts/fullscreen/FullScreenFragment;->isLoading()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
