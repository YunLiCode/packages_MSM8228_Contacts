.class public Lcom/android/contacts/common/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ExportVCardActivity$1;,
        Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private volatile mProcessOngoing:Z

.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field private mTargetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 113
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Lcom/android/contacts/common/vcard/ExportVCardActivity$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    .line 121
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ExportVCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/common/vcard/ExportVCardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ExportVCardActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ExportVCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/common/vcard/ExportVCardActivity;)Lcom/android/contacts/common/vcard/VCardService;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ExportVCardActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/vcard/ExportVCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ExportVCardActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 302
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 303
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 296
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0b000d

    const v4, 0x7f0b0001

    const v3, 0x7f090094

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    const-string v0, "VCardExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External storage is in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Cancelling export"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const v2, 0x7f0900d9

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CALLING_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v2, "CALLING_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4

    .line 175
    const-string v0, "VCardExport"

    const-string v1, "Failed to start vCard service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 181
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v1, p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string v0, "VCardExport"

    const-string v1, "Failed to connect to vCard service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 184
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0900a9

    const v1, 0x7f0900a8

    const/4 v2, 0x1

    const v5, 0x104000a

    const/4 v4, 0x0

    .line 222
    sparse-switch p1, :sswitch_data_0

    .line 261
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 224
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ab

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/common/vcard/ExportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 234
    :sswitch_1
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 235
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f09009a

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 243
    :sswitch_2
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_1
    aput-object v0, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 254
    :sswitch_3
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009a -> :sswitch_1
        0x7f0b0001 -> :sswitch_3
        0x7f0b000b -> :sswitch_0
        0x7f0b000d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    const v1, 0x7f0b000d

    if-ne p1, v1, :cond_0

    .line 267
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 281
    :goto_0
    return-void

    .line 268
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :cond_0
    const v1, 0x7f0b000b

    if-ne p1, v1, :cond_3

    .line 269
    const v1, 0x7f0900ab

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/VCardService;->getQuerySelection()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    const v1, 0x7f0900df

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_1
    :goto_1
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :cond_2
    const v1, 0x7f0900e0

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 279
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 192
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    .line 193
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 197
    .local v1, "extra":Landroid/net/Uri;
    const-string v2, "VCardExport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/vcard/VCardService;->setQuerySelection(Landroid/net/Uri;)V

    .line 202
    .end local v1    # "extra":Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/vcard/VCardService;->setQuerySelection(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 210
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    .line 212
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "VCardExport"

    const-string v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 216
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 287
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 290
    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 309
    return-void
.end method
