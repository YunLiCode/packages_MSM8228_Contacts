.class public Lcom/android/contacts/activities/ContactDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    }
.end annotation


# instance fields
.field private mContactData:Lcom/android/contacts/model/Contact;

.field private final mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    .line 233
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$3;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 340
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$4;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 297
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    const-string v3, "com.android.contacts.RINGTONE_CHANGED"

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 305
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 7

    .prologue
    .line 311
    iget-object v6, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {p0, v6}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 312
    .local v4, "displayName":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {p0, v6}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "company":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 315
    .local v1, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v5, "talkback":Ljava/lang/StringBuilder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 320
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 322
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 323
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 330
    const-string v6, "accessibility"

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/ContactDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 332
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 334
    .local v3, "decorView":Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 335
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 338
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v3    # "decorView":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 283
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 289
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 290
    .local v0, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 135
    instance-of v0, p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 137
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;Z)V

    .line 140
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const v0, 0x1000c000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    :goto_0
    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    const/high16 v0, 0x26800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 102
    :cond_2
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->setContentView(I)V

    .line 104
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Lcom/android/contacts/widget/TransitionAnimationView;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 115
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 146
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 202
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v0

    .line 206
    .local v0, "mCurrentFragment":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;->handleKeyDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 124
    const-string v0, "ContactDetailActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v0, "com.android.contacts.RINGTONE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "ContactDetailActivity"

    const-string v1, "loadUri"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 165
    const v1, 0x7f0b0139

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    .local v0, "starredMenuItem":Landroid/view/MenuItem;
    new-instance v1, Lcom/android/contacts/activities/ContactDetailActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity$2;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/view/MenuItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 191
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V

    .line 196
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v0, "ContactDetailActivity"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eqz p1, :cond_0

    const-string v0, "lookup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "lookup"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    .line 229
    const-string v0, "ContactDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "lookup"

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1
    return-void
.end method
