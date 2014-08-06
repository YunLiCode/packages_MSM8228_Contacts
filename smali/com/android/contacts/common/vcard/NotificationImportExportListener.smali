.class public Lcom/android/contacts/common/vcard/NotificationImportExportListener;
.super Ljava/lang/Object;
.source "NotificationImportExportListener.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 53
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 245
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructFinishNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    if-ne p1, v3, :cond_0

    const v0, 0x1080082

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p4, :cond_1

    .end local p4    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {p0, v2, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_0
    const v0, 0x1080089

    goto :goto_0

    :cond_1
    new-instance p4, Landroid/content/Intent;

    .end local p4    # "intent":Landroid/content/Intent;
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    goto :goto_1
.end method

.method static constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0900b9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "invalidscheme"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "invalidauthority"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "job_id"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "display_name"

    invoke-virtual {v0, v4, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 219
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 221
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v0, -0x1

    if-ne p6, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, p6, p7, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    if-ne p1, v1, :cond_2

    const v0, 0x1080081

    :goto_1
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 230
    if-lez p6, :cond_0

    .line 231
    const v0, 0x7f0900b8

    new-array v1, v1, [Ljava/lang/Object;

    mul-int/lit8 v3, p7, 0x64

    div-int/2addr v3, p6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 234
    :cond_0
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 222
    goto :goto_0

    :cond_2
    const v0, 0x1080088

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 62
    return v2
.end method

.method public onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 7
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 179
    if-ne p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900b0

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/contacts/common/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "description":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 183
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p1, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 184
    return-void

    .line 179
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900a2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/contacts/common/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    const/4 v7, 0x0

    .line 160
    iget-object v0, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f0900b4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v7

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v1, 0x2

    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 168
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 169
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 7
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900b0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 154
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    invoke-virtual {v2, v3, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 156
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 12
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "createdUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    .line 116
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v7, 0x7f0900af

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "description":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 120
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.contacts.intent.JOIN_SAME_NAME"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v6, v11, v1, v7, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v3

    .line 136
    .local v3, "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v7, "VCardServiceProgress"

    invoke-virtual {v6, v7, p2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 138
    return-void

    .line 124
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_0
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 125
    .local v4, "rawContactId":J
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "contactUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 131
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "rawContactId":J
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
    .locals 10
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "entry"    # Lcom/android/vcard/VCardEntry;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 95
    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "totalCountString":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f0900c4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "tickerText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f0900ac

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    move v4, p2

    move v6, p5

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 111
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "sequence"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 70
    iget-object v0, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 71
    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 72
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900b1

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "message":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 89
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 90
    return-void

    .line 74
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900b6

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    .restart local v5    # "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0900b2

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method
