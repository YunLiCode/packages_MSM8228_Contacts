.class public Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;
.super Ljava/lang/Object;
.source "MultiChoiceHandlerListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceService;)V
    .locals 2
    .param p1, "context"    # Lcom/android/contacts/multichoice/MultiChoiceService;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    .line 32
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 33
    return-void
.end method

.method public static constructCancelingNotification(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/Notification;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "jobId"    # I
    .param p3, "statIconId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 341
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 343
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 344
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x8000000

    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 346
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public static constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "statIconId"    # I

    .prologue
    const/4 v3, 0x0

    .line 300
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .end local p3    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p0, v3, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method public static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IIII)Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 276
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    const-string v0, "job_id"

    invoke-virtual {v3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v0, "account_info"

    const-string v4, "TODO finish"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v0, "type"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v0, -0x1

    if-ne p5, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, p5, p6, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 284
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 285
    const/high16 v0, 0x8000000

    invoke-static {p0, p4, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 288
    if-lez p5, :cond_0

    .line 289
    const v0, 0x7f0900b8

    new-array v1, v1, [Ljava/lang/Object;

    mul-int/lit8 v3, p6, 0x64

    div-int/2addr v3, p5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 292
    :cond_0
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 283
    goto :goto_0
.end method

.method public static constructReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const v3, 0x1080078

    const/4 v2, 0x1

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    const-string v1, "report_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    const-string v1, "report_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "report_content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, p3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, p3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method onCancelled(IIIII)V
    .locals 10
    .param p1, "requestType"    # I
    .param p2, "jobId"    # I
    .param p3, "total"    # I
    .param p4, "succeeded"    # I
    .param p5, "failed"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 218
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCanceled] requestType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " jobId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " succeeded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-ne p1, v9, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b6

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "title":Ljava/lang/String;
    :goto_0
    const/4 v3, -0x1

    if-eq p3, v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b3

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "content":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-static {v3, v2, v0, p2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->constructReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    .line 242
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v4, "MultiChoiceServiceProgress"

    invoke-virtual {v3, v4, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 243
    return-void

    .line 225
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    if-ne p1, v7, :cond_1

    .line 226
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b8

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901cc

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 229
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901d5

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901de

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 238
    :cond_4
    const-string v0, ""

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1
.end method

.method onCancelling(II)V
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "jobId"    # I

    .prologue
    .line 246
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCanceling] requestType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " jobId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, ""

    .line 248
    .local v0, "description":Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    .local v2, "statIconId":I
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901c0

    invoke-virtual {v3, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    const v2, 0x108003c

    .line 264
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-static {v3, v0, p2, v2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->constructCancelingNotification(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v1

    .line 266
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v4, "MultiChoiceServiceProgress"

    invoke-virtual {v3, v4, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 267
    return-void

    .line 253
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901d1

    invoke-virtual {v3, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    const v2, 0x1080033

    goto :goto_0

    .line 256
    :cond_1
    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901da

    invoke-virtual {v3, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    const v2, 0x108003c

    goto :goto_0

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901e3

    invoke-virtual {v3, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    const v2, 0x1080051

    goto :goto_0
.end method

.method onFailed(IIIII)V
    .locals 8
    .param p1, "requestType"    # I
    .param p2, "jobId"    # I
    .param p3, "total"    # I
    .param p4, "succeeded"    # I
    .param p5, "failed"    # I

    .prologue
    .line 143
    sget-object v3, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onFailed] requestType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " jobId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " succeeded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "content":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-static {v3, v2, v0, p2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->constructReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    .line 170
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v4, "MultiChoiceServiceProgress"

    invoke-virtual {v3, v4, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 171
    return-void

    .line 151
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901cd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 159
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    .line 160
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901d6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto/16 :goto_0

    .line 164
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901df

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v4, 0x7f0901b3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method onFailed(IIIIIII)V
    .locals 10
    .param p1, "requestType"    # I
    .param p2, "jobId"    # I
    .param p3, "total"    # I
    .param p4, "succeeded"    # I
    .param p5, "failed"    # I
    .param p6, "errorCause"    # I
    .param p7, "subscription"    # I

    .prologue
    .line 175
    sget-object v5, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onFailed] requestType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " jobId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " errorCause = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 181
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "content":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-static {v5, v4, v2, p2}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->constructReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v3

    .line 213
    .local v3, "notification":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v6, "MultiChoiceServiceProgress"

    invoke-virtual {v5, v6, p2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 214
    return-void

    .line 184
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 185
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    move/from16 v0, p7

    invoke-static {v5, v0}, Lcom/android/contacts/common/model/account/SimAccountType;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "cardName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b9

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .restart local v4    # "title":Ljava/lang/String;
    const/4 v5, 0x2

    move/from16 v0, p6

    if-ne v0, v5, :cond_1

    .line 189
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v2    # "content":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x3

    move/from16 v0, p6

    if-ne v0, v5, :cond_2

    .line 192
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b4

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v2    # "content":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto/16 :goto_0

    .line 198
    .end local v1    # "cardName":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x4

    if-ne p1, v5, :cond_4

    .line 199
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901cd

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto/16 :goto_0

    .line 202
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x5

    if-ne p1, v5, :cond_5

    .line 203
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901d6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto/16 :goto_0

    .line 207
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901df

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v6, 0x7f0901b3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method onFinished(III)V
    .locals 9

    .prologue
    const v0, 0x7f020041

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 100
    sget-object v1, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinished jobId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.MULTI_CHOICE_PROCESS_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceService;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    if-ne p1, v8, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v2, 0x7f0901af

    invoke-virtual {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v3, 0x7f0901b0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    :goto_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const-class v5, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    if-eq p1, v6, :cond_0

    if-eq p1, v8, :cond_0

    .line 134
    const/4 v3, 0x0

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-static {v4, v2, v1, v3, v0}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "MultiChoiceServiceProgress"

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 139
    return-void

    .line 113
    :cond_1
    if-ne p1, v6, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901b2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const v0, 0x7f020042

    goto :goto_0

    .line 117
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 118
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901cb

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 120
    const v0, 0x7f02004e

    goto :goto_0

    .line 121
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v2, 0x7f0901d3

    invoke-virtual {v1, v2}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v3, 0x7f0901d4

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901dd

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const v0, 0x1080051

    goto/16 :goto_0
.end method

.method onProcessed(IIIILjava/lang/String;)V
    .locals 10
    .param p1, "requestType"    # I
    .param p2, "jobId"    # I
    .param p3, "currentCount"    # I
    .param p4, "totalCount"    # I
    .param p5, "contactName"    # Ljava/lang/String;

    .prologue
    .line 38
    rem-int/lit8 v0, p3, 0xa

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    if-eq p3, p4, :cond_0

    .line 97
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "totalCountString":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901bb

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "tickerText":Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "description":Ljava/lang/String;
    :goto_1
    const v7, 0x7f020041

    .line 94
    .local v7, "statIconId":I
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move v1, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IIII)Landroid/app/Notification;

    move-result-object v8

    .line 96
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "MultiChoiceServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 53
    .end local v2    # "description":Ljava/lang/String;
    .end local v7    # "statIconId":I
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901bc

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_1

    .line 56
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "tickerText":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901be

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .restart local v3    # "tickerText":Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p4, v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901bd

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2    # "description":Ljava/lang/String;
    :goto_3
    const v7, 0x7f020042

    .restart local v7    # "statIconId":I
    goto :goto_2

    .line 62
    .end local v2    # "description":Ljava/lang/String;
    .end local v7    # "statIconId":I
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901bf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_3

    .line 65
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "tickerText":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901cf

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .restart local v3    # "tickerText":Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p4, v0, :cond_5

    .line 69
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901ce

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2    # "description":Ljava/lang/String;
    :goto_4
    const v7, 0x7f02004e

    .restart local v7    # "statIconId":I
    goto/16 :goto_2

    .line 71
    .end local v2    # "description":Ljava/lang/String;
    .end local v7    # "statIconId":I
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901d0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_4

    .line 74
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "tickerText":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 75
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901d8

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .restart local v3    # "tickerText":Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p4, v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2    # "description":Ljava/lang/String;
    :goto_5
    const v7, 0x7f020041

    .restart local v7    # "statIconId":I
    goto/16 :goto_2

    .line 80
    .end local v2    # "description":Ljava/lang/String;
    .end local v7    # "statIconId":I
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901d9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_5

    .line 84
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "tickerText":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901e1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .restart local v3    # "tickerText":Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p4, v0, :cond_9

    .line 87
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "description":Ljava/lang/String;
    :goto_6
    const v7, 0x1080051

    .restart local v7    # "statIconId":I
    goto/16 :goto_2

    .line 89
    .end local v2    # "description":Ljava/lang/String;
    .end local v7    # "statIconId":I
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceHandlerListener;->mContext:Lcom/android/contacts/multichoice/MultiChoiceService;

    const v1, 0x7f0901e2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/multichoice/MultiChoiceService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_6
.end method
