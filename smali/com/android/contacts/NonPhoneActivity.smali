.class public Lcom/android/contacts/NonPhoneActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "NonPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 67
    return-void
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "scheme":Ljava/lang/String;
    const-string v3, "tel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/android/contacts/NonPhoneActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;-><init>()V

    .line 52
    .local v1, "fragment":Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "PHONE_NUMBER"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "Fragment"

    invoke-virtual {v3, v1, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
