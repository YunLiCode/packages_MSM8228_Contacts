.class public Lcom/android/contacts/common/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/VCardService$MyBinder;,
        Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

.field private mCallingActivity:Ljava/lang/String;

.field private mCurrentJobId:I

.field private mErrorReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExtensionsToConsider:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIndexMaximum:I

.field private mFileIndexMinimum:I

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/common/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:Ljava/lang/String;

.field private mTargetDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 108
    invoke-static {}, Lcom/android/contacts/common/CommonApplication;->getInstance()Lcom/android/contacts/common/CommonApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/CommonApplication;->SINGLE_TASK_SERVICE:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p1, "x1"    # Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 3

    .prologue
    .line 456
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/vcard/ProcessorBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 468
    .local v1, "fileName":Ljava/lang/String;
    const-string v4, "import_tmp_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 470
    const-string v4, "VCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/VCardService;->deleteFile(Ljava/lang/String;)Z

    .line 467
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getAppropriateDestination(Ljava/io/File;)Ljava/lang/String;
    .locals 19
    .param p1, "destDirectory"    # Ljava/io/File;

    .prologue
    .line 501
    const/4 v4, 0x0

    .line 505
    .local v4, "fileIndexDigit":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMaximum:I

    .local v11, "tmp":I
    :goto_0
    if-lez v11, :cond_0

    .line 506
    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v11, v11, 0xa

    goto :goto_0

    .line 511
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%s%0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "d%s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "bodyFormat":Ljava/lang/String;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 516
    .local v9, "possibleBody":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x8

    if-gt v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_2

    .line 517
    :cond_1
    const-string v12, "VCardService"

    const-string v13, "This code does not allow any long file name."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const v12, 0x7f090099

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "%s.%s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 520
    const-string v12, "VCardService"

    const-string v13, "File name becomes too long."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v12, 0x0

    .line 556
    :goto_1
    return-object v12

    .line 525
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMinimum:I

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMaximum:I

    if-gt v5, v12, :cond_7

    .line 526
    const/4 v7, 0x1

    .line 527
    .local v7, "numberIsAvailable":Z
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 532
    .local v10, "possibleExtension":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 534
    .local v8, "path":Ljava/lang/String;
    monitor-enter p0

    .line 536
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 540
    const/4 v7, 0x0

    .line 541
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "possibleExtension":Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    .line 550
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 543
    .restart local v3    # "file":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "possibleExtension":Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 545
    const/4 v7, 0x0

    .line 546
    goto :goto_3

    .line 543
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 525
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "possibleExtension":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 554
    .end local v1    # "body":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "numberIsAvailable":Z
    :cond_7
    const-string v12, "VCardService"

    const-string v13, "Reached vCard number limit. Maybe there are too many vCard in the storage"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const v12, 0x7f09009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 556
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private initExporterParams()V
    .locals 10

    .prologue
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v2, "exportDirectory":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const v8, 0x7f0900d9

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v8, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mTargetDirectory:Ljava/io/File;

    .line 163
    const v8, 0x7f090002

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    .line 164
    const v8, 0x7f090003

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    .line 165
    const v8, 0x7f090004

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    .line 167
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    .line 168
    iget-object v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    iget-object v9, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const v8, 0x7f090005

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "additionalExtensions":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 173
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 174
    .local v3, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "trimed":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 176
    iget-object v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "extension":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "trimed":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 182
    .local v6, "resources":Landroid/content/res/Resources;
    const/high16 v8, 0x7f0a0000

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMinimum:I

    .line 183
    const v8, 0x7f0a0001

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMaximum:I

    .line 184
    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 414
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 11

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 349
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 359
    .local v4, "size":I
    new-array v5, v4, [I

    .line 360
    .local v5, "toBeRemoved":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 361
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 362
    .local v2, "jobId":I
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 363
    .local v3, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ProcessorBase;->isDone()Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    const-string v6, "VCardService"

    const-string v7, "Found unfinished job (id: %d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 369
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    aget v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    .end local v1    # "j":I
    :cond_0
    aput v2, v5, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "jobId":I
    .end local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 382
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "toBeRemoved":[I
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 383
    const-string v6, "VCardService"

    const-string v7, "MediaScanner update is in progress."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 387
    :cond_4
    :try_start_1
    const-string v6, "VCardService"

    const-string v7, "No unfinished job. Stop this service."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 348
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z
    .locals 3
    .param p1, "processor"    # Lcom/android/contacts/common/vcard/ProcessorBase;

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 279
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    const/4 v1, 0x1

    .line 283
    :goto_0
    monitor-exit p0

    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    const-string v1, "VCardService"

    const-string v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    const/4 v1, 0x0

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 10
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    .line 292
    .local v0, "jobId":I
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 293
    .local v3, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 295
    if-eqz v3, :cond_2

    .line 296
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    .line 297
    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ProcessorBase;->getType()I

    move-result v4

    .line 298
    .local v4, "type":I
    if-eqz p2, :cond_0

    .line 299
    invoke-interface {p2, p1, v4}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V

    .line 301
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 302
    check-cast v3, Lcom/android/contacts/common/vcard/ExportProcessor;

    .end local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "path":Ljava/lang/String;
    const-string v5, "VCardService"

    const-string v6, "Cancel reservation for the path %s if appropriate"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 307
    const-string v5, "VCardService"

    const-string v6, "Not reserved."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 311
    .restart local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_2
    :try_start_1
    const-string v5, "VCardService"

    const-string v6, "Tried to remove unknown job (id: %d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 314
    const-string v5, "VCardService"

    const-string v6, "Process \'com.android.contacts\' had been crashed ?!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 316
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    .end local v0    # "jobId":I
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 5
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/contacts/common/vcard/ExportProcessor;

    iget v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    iget-object v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/contacts/common/vcard/ExportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/VCardService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    const-string v1, "VCardService"

    const-string v2, "The path %s is already reserved. Reject export request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz p2, :cond_0

    .line 252
    invoke-interface {p2, p1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 258
    :try_start_1
    iget v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, p1, v1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V

    .line 260
    :cond_2
    iget v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 262
    :cond_3
    if-eqz p2, :cond_0

    .line 263
    :try_start_2
    invoke-interface {p2, p1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 7
    .param p1, "jobId"    # I
    .param p2, "successful"    # Z

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 434
    .local v0, "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 435
    if-nez v0, :cond_0

    .line 436
    const-string v2, "VCardService"

    const-string v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 437
    .restart local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    if-nez v2, :cond_1

    .line 438
    const-string v2, "VCardService"

    const-string v3, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 441
    .restart local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_1
    :try_start_2
    check-cast v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 1
    .param p1, "jobId"    # I
    .param p2, "successful"    # Z

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 424
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleImportRequest(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 5
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/common/vcard/VCardImportExportListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 224
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/vcard/ImportRequest;

    .line 227
    .local v1, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    new-instance v3, Lcom/android/contacts/common/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/android/contacts/common/vcard/ImportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardImportExportListener;Lcom/android/contacts/common/vcard/ImportRequest;I)V

    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/VCardService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, v1, v3, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V

    .line 231
    :cond_0
    iget v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    if-eqz p2, :cond_2

    .line 234
    invoke-interface {p2, v1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v1    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_2
    monitor-exit p0

    return-void

    .line 223
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized handleRequestAvailableExportDestination(Landroid/os/Messenger;)V
    .locals 8
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mTargetDirectory:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/VCardService;->getAppropriateDestination(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 328
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 336
    .local v1, "message":Landroid/os/Message;
    :goto_0
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :goto_1
    monitor-exit p0

    return-void

    .line 331
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x5

    const v5, 0x7f0b000d

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/android/contacts/common/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "VCardService"

    const-string v4, "Failed to send reply for available export destination request."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 151
    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/common/vcard/VCardService;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .line 153
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->initExporterParams()V

    .line 154
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    .line 206
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->clearCache()V

    .line 207
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 208
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "id"    # I

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CALLING_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    .line 194
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    goto :goto_0
.end method

.method public setQuerySelection(Landroid/net/Uri;)V
    .locals 10
    .param p1, "extra"    # Landroid/net/Uri;

    .prologue
    .line 560
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 561
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/contacts/common/vcard/VCardService;->mSelection:Ljava/lang/String;

    .line 581
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 565
    .local v6, "lookupKeys":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "lookupKeyArray":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v2, "inBuilder":Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 569
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 570
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 574
    .end local v4    # "lookupKey":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    const-string v8, "("

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lookup IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/common/vcard/VCardService;->mSelection:Ljava/lang/String;

    .line 577
    const-string v7, "profile"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 578
    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/common/vcard/VCardService;->mSelection:Ljava/lang/String;

    .line 580
    :cond_4
    const-string v7, "VCardService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selection->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/common/vcard/VCardService;->mSelection:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "VCardService"

    const-string v2, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/common/vcard/VCardService;Ljava/lang/String;)V

    .line 404
    .local v0, "client":Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    .end local v0    # "client":Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
