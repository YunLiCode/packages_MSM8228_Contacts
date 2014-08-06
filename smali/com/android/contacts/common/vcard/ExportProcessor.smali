.class public Lcom/android/contacts/common/vcard/ExportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "ExportProcessor.java"


# instance fields
.field private final mCallingActivity:Ljava/lang/String;

.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "exportRequest"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p3, "jobId"    # I
    .param p4, "callingActivity"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 63
    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 64
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 66
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    .line 67
    iput p3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 68
    iput-object p4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private doCancelNotification()V
    .locals 7

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v3, 0x7f0900a2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v6, v6, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 269
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 271
    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x2

    invoke-static {v2, v3, p1, p2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v1

    .line 283
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 285
    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "totalCount"    # I
    .param p3, "currentCount"    # I

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f0900a4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "tickerText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 259
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 261
    return-void
.end method

.method private runInternal()V
    .locals 29

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v17, v0

    .line 101
    .local v17, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    const/4 v10, 0x0

    .line 102
    .local v10, "composer":Lcom/android/vcard/VCardComposer;
    const/16 v24, 0x0

    .line 103
    .local v24, "writer":Ljava/io/Writer;
    const/16 v18, 0x0

    .line 105
    .local v18, "successful":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled before handling the request"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v10, :cond_0

    .line 223
    throw v10

    .line 225
    :cond_0
    if-eqz v24, :cond_1

    .line 227
    :try_start_1
    throw v24
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 232
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v10

    .line 234
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .local v3, "composer":Lcom/android/vcard/VCardComposer;
    :goto_1
    return-void

    .line 109
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    :cond_2
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v22, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .local v22, "uri":Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v16

    .line 124
    .local v16, "outputStream":Ljava/io/OutputStream;
    :try_start_4
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 126
    .local v14, "exportType":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/high16 v5, 0x7f090000

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v23

    .line 133
    .local v23, "vcardType":I
    :goto_2
    new-instance v3, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v4, v0, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    :try_start_5
    new-instance v25, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    .end local v24    # "writer":Ljava/io/Writer;
    .local v25, "writer":Ljava/io/Writer;
    :try_start_6
    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "for_export_only"

    const-string v7, "1"

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 145
    .local v9, "contentUriForRawContactsEntity":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/VCardService;->getQuerySelection()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "selection":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "lookup"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 147
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v26, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .end local v6    # "selection":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v26

    const-string v27, "for_export_only"

    const-string v28, "1"

    invoke-virtual/range {v26 .. v28}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    invoke-virtual/range {v3 .. v9}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 150
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "errorReason":Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialization composer of profile failed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 154
    .local v21, "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f090096

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 157
    .local v19, "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 222
    if-eqz v3, :cond_3

    .line 223
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 225
    :cond_3
    if-eqz v25, :cond_4

    .line 227
    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 232
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .line 158
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 113
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v14    # "exportType":Ljava/lang/String;
    .end local v16    # "outputStream":Ljava/io/OutputStream;
    .end local v19    # "title":Ljava/lang/String;
    .end local v21    # "translatedErrorReason":Ljava/lang/String;
    .end local v23    # "vcardType":I
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    :catch_0
    move-exception v12

    .line 114
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v4, "VCardExport"

    const-string v5, "FileNotFoundException thrown"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f090095

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 120
    .restart local v13    # "errorReason":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 222
    if-eqz v10, :cond_5

    .line 223
    throw v10

    .line 225
    :cond_5
    if-eqz v24, :cond_6

    .line 227
    :try_start_9
    throw v24
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 232
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v10

    .line 121
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    goto/16 :goto_1

    .line 130
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v13    # "errorReason":Ljava/lang/String;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v14    # "exportType":Ljava/lang/String;
    .restart local v16    # "outputStream":Ljava/io/OutputStream;
    :cond_7
    :try_start_a
    invoke-static {v14}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v23

    .restart local v23    # "vcardType":I
    goto/16 :goto_2

    .line 160
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v24    # "writer":Ljava/io/Writer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v25    # "writer":Ljava/io/Writer;
    :cond_8
    :try_start_b
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 163
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    .line 164
    .restart local v13    # "errorReason":Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialization of vCard composer failed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 167
    .restart local v21    # "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f090096

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 170
    .restart local v19    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 222
    if-eqz v3, :cond_9

    .line 223
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 225
    :cond_9
    if-eqz v25, :cond_a

    .line 227
    :try_start_c
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 232
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .line 171
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 174
    .end local v6    # "selection":Ljava/lang/String;
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v21    # "translatedErrorReason":Ljava/lang/String;
    .end local v24    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    :cond_b
    :try_start_d
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v20

    .line 175
    .local v20, "total":I
    if-nez v20, :cond_e

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f090097

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 178
    .restart local v19    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 222
    if-eqz v3, :cond_c

    .line 223
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 225
    :cond_c
    if-eqz v25, :cond_d

    .line 227
    :try_start_e
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 232
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .line 179
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 182
    .end local v19    # "title":Ljava/lang/String;
    .end local v24    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    :cond_e
    const/4 v11, 0x1

    .line 183
    .local v11, "current":I
    :goto_7
    :try_start_f
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_15

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 185
    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled during composing vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 222
    if-eqz v3, :cond_f

    .line 223
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 225
    :cond_f
    if-eqz v25, :cond_10

    .line 227
    :try_start_10
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 232
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .line 186
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 189
    .end local v24    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    :cond_11
    :try_start_11
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 204
    :try_start_12
    rem-int/lit8 v4, v11, 0x64

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v11}, Lcom/android/contacts/common/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 207
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 190
    :catch_1
    move-exception v12

    .line 191
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    .line 192
    .restart local v13    # "errorReason":Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 195
    .restart local v21    # "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f090098

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 198
    .restart local v19    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 222
    if-eqz v3, :cond_13

    .line 223
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 225
    :cond_13
    if-eqz v25, :cond_14

    .line 227
    :try_start_13
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 232
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .line 199
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 209
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v21    # "translatedErrorReason":Ljava/lang/String;
    .end local v24    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    :cond_15
    :try_start_14
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully finished exporting vCard "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 216
    const/16 v18, 0x1

    .line 217
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0900a1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 220
    .restart local v19    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 222
    if-eqz v3, :cond_16

    .line 223
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 225
    :cond_16
    if-eqz v25, :cond_17

    .line 227
    :try_start_15
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 232
    :cond_17
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .line 234
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    goto/16 :goto_1

    .line 222
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v11    # "current":I
    .end local v14    # "exportType":Ljava/lang/String;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "outputStream":Ljava/io/OutputStream;
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "total":I
    .end local v22    # "uri":Landroid/net/Uri;
    .end local v23    # "vcardType":I
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v4

    move-object v3, v10

    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    :goto_b
    if-eqz v3, :cond_18

    .line 223
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 225
    :cond_18
    if-eqz v24, :cond_19

    .line 227
    :try_start_16
    invoke-virtual/range {v24 .. v24}, Ljava/io/Writer;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    .line 232
    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v5, v7, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 222
    throw v4

    .line 228
    :catch_2
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 228
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    :catch_3
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    .local v12, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "errorReason":Ljava/lang/String;
    .restart local v22    # "uri":Landroid/net/Uri;
    :catch_4
    move-exception v12

    .line 229
    .local v12, "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 228
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v24    # "writer":Ljava/io/Writer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v14    # "exportType":Ljava/lang/String;
    .restart local v16    # "outputStream":Ljava/io/OutputStream;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v21    # "translatedErrorReason":Ljava/lang/String;
    .restart local v23    # "vcardType":I
    .restart local v25    # "writer":Ljava/io/Writer;
    :catch_5
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 228
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v21    # "translatedErrorReason":Ljava/lang/String;
    .restart local v20    # "total":I
    :catch_6
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 228
    .end local v12    # "e":Ljava/io/IOException;
    .end local v19    # "title":Ljava/lang/String;
    .restart local v11    # "current":I
    :catch_7
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 228
    .restart local v13    # "errorReason":Ljava/lang/String;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v21    # "translatedErrorReason":Ljava/lang/String;
    :catch_8
    move-exception v12

    .line 229
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 228
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v21    # "translatedErrorReason":Ljava/lang/String;
    .restart local v15    # "filename":Ljava/lang/String;
    :catch_9
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 228
    .end local v11    # "current":I
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v20    # "total":I
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v13    # "errorReason":Ljava/lang/String;
    .restart local v21    # "translatedErrorReason":Ljava/lang/String;
    :catch_a
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 222
    .end local v6    # "selection":Ljava/lang/String;
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "errorReason":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v21    # "translatedErrorReason":Ljava/lang/String;
    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v4

    goto/16 :goto_b

    .end local v24    # "writer":Ljava/io/Writer;
    .restart local v25    # "writer":Ljava/io/Writer;
    :catchall_2
    move-exception v4

    move-object/from16 v24, v25

    .end local v25    # "writer":Ljava/io/Writer;
    .restart local v24    # "writer":Ljava/io/Writer;
    goto/16 :goto_b
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 245
    .end local p1    # "errorMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 240
    .restart local p1    # "errorMessage":Ljava/lang/String;
    :cond_1
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 242
    :cond_2
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v0, 0x1

    .line 290
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    monitor-exit p0

    return v0

    .line 293
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/common/vcard/ExportRequest;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->runInternal()V

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-enter p0

    .line 93
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    .line 94
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 96
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-enter p0

    .line 93
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    .line 94
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    throw v1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
