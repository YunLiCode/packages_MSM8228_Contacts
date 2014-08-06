.class public final Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;
.super Landroid/app/DialogFragment;
.source "NonPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/NonPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonPhoneDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getArgumentPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "phone"

    invoke-direct {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->getArgumentPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->dismiss()V

    .line 92
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0017

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 74
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 75
    invoke-direct {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->getArgumentPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090184

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 78
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090186

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/NonPhoneActivity$NonPhoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 104
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_0
    return-void
.end method
