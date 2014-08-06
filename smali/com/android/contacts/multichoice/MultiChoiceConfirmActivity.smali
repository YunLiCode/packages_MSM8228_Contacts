.class public Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;
.super Landroid/app/Activity;
.source "MultiChoiceConfirmActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;,
        Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountInfo:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCancelListener:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

.field private mJobId:I

.field private mReportContent:Ljava/lang/String;

.field private mReportDialog:Z

.field private mReportTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;-><init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;-><init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mCancelListener:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string v0, "report_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportDialog:Z

    .line 93
    iget-boolean v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportDialog:Z

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "report_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    .line 95
    const-string v0, "report_content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "job_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mJobId:I

    .line 98
    const-string v0, "account_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mAccountInfo:Ljava/lang/String;

    .line 99
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mType:I

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x104000a

    const/high16 v6, 0x1040000

    .line 134
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 171
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown dialog id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 139
    :pswitch_0
    iget v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 140
    const v3, 0x7f0901c0

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f0901c2

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "message":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    new-instance v3, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;-><init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;)V

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mCancelListener:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mCancelListener:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 142
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 143
    const v3, 0x7f0901c3

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2    # "title":Ljava/lang/String;
    const v3, 0x7f0901c5

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 146
    const v3, 0x7f0901d1

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2    # "title":Ljava/lang/String;
    const v3, 0x7f0901d2

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 148
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 149
    const v3, 0x7f0901da

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2    # "title":Ljava/lang/String;
    const v3, 0x7f0901db

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    const v3, 0x7f0901e3

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2    # "title":Ljava/lang/String;
    const v3, 0x7f0901e4

    invoke-virtual {p0, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1

    .line 163
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mCancelListener:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mCancelListener:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mCancelListener:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0b0022
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 216
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialog() mReportContent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mReportTile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 218
    const v1, 0x7f0b0023

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 219
    check-cast v0, Landroid/app/AlertDialog;

    .line 220
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 223
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "report_dialog"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportDialog:Z

    .line 110
    sget-object v2, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume mReportDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportDialog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportDialog:Z

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "report_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    .line 113
    const-string v2, "report_content"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    .line 119
    :goto_0
    sget-object v2, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReportTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | mReportContent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.contacts.action.MULTI_CHOICE_PROCESS_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    iget-boolean v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportDialog:Z

    if-eqz v2, :cond_1

    .line 126
    const v2, 0x7f0b0023

    invoke-virtual {p0, v2}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->showDialog(I)V

    .line 130
    :goto_1
    return-void

    .line 115
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const-string v2, "job_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mJobId:I

    .line 116
    const-string v2, "account_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mAccountInfo:Ljava/lang/String;

    .line 117
    const-string v2, "type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mType:I

    goto :goto_0

    .line 128
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    const v2, 0x7f0b0022

    invoke-virtual {p0, v2}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->showDialog(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    sget-object v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "report_dialog"

    iget-boolean v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    const-string v0, "report_title"

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "report_content"

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mReportContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "job_id"

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mJobId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v0, "account_info"

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mAccountInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "type"

    iget v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 179
    check-cast p2, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;->getService()Lcom/android/contacts/multichoice/MultiChoiceService;

    move-result-object v1

    .line 182
    .local v1, "service":Lcom/android/contacts/multichoice/MultiChoiceService;
    :try_start_0
    new-instance v0, Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;

    iget v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->mJobId:I

    invoke-direct {v0, v2}, Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;-><init>(I)V

    .line 183
    .local v0, "request":Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;
    invoke-virtual {v1, v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->handleCancelRequest(Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {p0, p0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->finish()V

    .line 189
    return-void

    .line 185
    .end local v0    # "request":Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, p0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 194
    return-void
.end method
