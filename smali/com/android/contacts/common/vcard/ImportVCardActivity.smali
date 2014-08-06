.class public Lcom/android/contacts/common/vcard/ImportVCardActivity;
.super Landroid/app/Activity;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    }
.end annotation


# static fields
.field private static mDepthOfFileScanning:I


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

.field private mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    .line 635
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mDepthOfFileScanning:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->parseNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p1, "x1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V

    return-void
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 7

    .prologue
    .line 1059
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 1060
    .local v5, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v2

    .line 1062
    .local v2, "filePathArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1063
    .local v4, "isStorageExists":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_2

    .line 1065
    new-instance v0, Ljava/io/File;

    aget-object v6, v2, v3

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1064
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1069
    :cond_1
    const/4 v4, 0x1

    .line 1070
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1074
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    if-nez v4, :cond_3

    .line 1075
    const v6, 0x7f0b0001

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    .line 1080
    :goto_2
    return-void

    .line 1077
    :cond_3
    new-instance v6, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {v6, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    iput-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    .line 1078
    const/high16 v6, 0x7f0b0000

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    goto :goto_2
.end method

.method private getSelectImportTypeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 815
    new-instance v2, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    .line 816
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0900bd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 822
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 823
    .local v1, "items":[Ljava/lang/String;
    const v3, 0x7f0900be

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 825
    const/4 v3, 0x1

    const v4, 0x7f0900bf

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 827
    const/4 v3, 0x2

    const v4, 0x7f0900c0

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 829
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 830
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 13
    .param p1, "multipleSelect"    # Z

    .prologue
    .line 834
    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 835
    .local v6, "size":I
    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Z)V

    .line 836
    .local v5, "listener":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0900bd

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 843
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-array v4, v6, [Ljava/lang/CharSequence;

    .line 844
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 845
    .local v1, "dateFormat":Ljava/text/DateFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 846
    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .line 847
    .local v8, "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 848
    .local v7, "stringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 849
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 850
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 854
    .local v3, "indexToBeSpanned":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getLastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 856
    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v10, 0x3f333333

    invoke-direct {v9, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v7, v9, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 859
    aput-object v7, v4, v2

    .line 845
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    .end local v3    # "indexToBeSpanned":I
    .end local v7    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    if-eqz p1, :cond_1

    .line 862
    const/4 v9, 0x0

    check-cast v9, [Z

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 866
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 864
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private importVCard(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 789
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 790
    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 802
    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 812
    return-void
.end method

.method private importVCard([Ljava/lang/String;)V
    .locals 4
    .param p1, "uriStrings"    # [Ljava/lang/String;

    .prologue
    .line 793
    array-length v1, p1

    .line 794
    .local v1, "length":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 795
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 796
    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 799
    return-void
.end method

.method private importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    .locals 4
    .param p1, "vcardFile"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .prologue
    .line 785
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 786
    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 775
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/String;

    .line 776
    .local v3, "uriStrings":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 777
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .line 778
    .local v4, "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    .end local v4    # "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method private parseNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1111
    if-nez p1, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-object v4

    .line 1114
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "mUri":Ljava/lang/String;
    const-string v3, "^file:\\/\\/\\/[\\w+\\/]+\\w+.vcf$"

    .line 1118
    .local v3, "uriRegex":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1119
    .local v2, "uriPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1122
    .local v1, "uriMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1127
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private startImport()V
    .locals 5

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 928
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 929
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 930
    const-string v2, "VCardImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting vCard import using Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard(Landroid/net/Uri;)V

    .line 936
    :goto_0
    return-void

    .line 933
    :cond_0
    const-string v2, "VCardImport"

    const-string v3, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 763
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    .line 771
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f0b0003

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 769
    :cond_2
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f0b0004

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 910
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 911
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 915
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport()V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    if-eqz p2, :cond_2

    .line 918
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code was not OK nor CANCELED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 871
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mDepthOfFileScanning:I

    .line 878
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_0

    .line 880
    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 881
    const-string v2, "account_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 882
    const-string v4, "data_set"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 888
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v1, v3, v2, v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 904
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport()V

    .line 905
    :goto_2
    return-void

    .line 884
    :cond_0
    const-string v0, "VCardImport"

    const-string v2, "intent does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    .line 890
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 891
    invoke-virtual {v0, v5, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v0

    .line 893
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 894
    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_1

    .line 895
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 896
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_1

    .line 898
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0900e3

    const v8, 0x1010355

    const/4 v5, 0x1

    const v7, 0x104000a

    const/4 v6, 0x0

    .line 940
    sparse-switch p1, :sswitch_data_0

    .line 1030
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 942
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v3, :cond_0

    .line 943
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "mAccountSelectionListener must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 946
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-static {p0, p1, v3, v4}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 950
    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    .line 951
    const v3, 0x7f0900e1

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f0900c1

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v2, v1, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    .line 955
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 956
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->start()V

    .line 958
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 961
    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0900e2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900aa

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 967
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 970
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    const v3, 0x7f0900ba

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 971
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 976
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 979
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSelectImportTypeDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 982
    :sswitch_5
    invoke-direct {p0, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 985
    :sswitch_6
    invoke-direct {p0, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 988
    :sswitch_7
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_2

    .line 989
    const v3, 0x7f0900c2

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 990
    .restart local v2    # "title":Ljava/lang/String;
    const v3, 0x7f0900b7

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 991
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    .line 992
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 995
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 996
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startVCardService()V

    .line 998
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 1002
    :sswitch_8
    const v4, 0x7f0900c3

    new-array v5, v5, [Ljava/lang/Object;

    const v3, 0x7f0b0007

    if-ne p1, v3, :cond_3

    const v3, 0x7f09009b

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1012
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1002
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    const v3, 0x7f0900e4

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1015
    :sswitch_9
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    .line 1016
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1017
    const-string v3, "VCardImport"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const v3, 0x7f090094

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1020
    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0900ad

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1026
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 940
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090090 -> :sswitch_0
        0x7f0b0000 -> :sswitch_1
        0x7f0b0001 -> :sswitch_2
        0x7f0b0002 -> :sswitch_3
        0x7f0b0003 -> :sswitch_4
        0x7f0b0004 -> :sswitch_6
        0x7f0b0005 -> :sswitch_5
        0x7f0b0006 -> :sswitch_7
        0x7f0b0007 -> :sswitch_8
        0x7f0b0008 -> :sswitch_9
        0x7f0b0012 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1046
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1047
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1048
    const-string v0, "VCardImport"

    const-string v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    .line 1051
    :cond_0
    return-void
.end method

.method showFailureNotification(I)V
    .locals 1
    .param p1, "reasonId"    # I

    .prologue
    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method showFailureNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1087
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1089
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {p0, p1}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 1093
    .local v0, "notification":Landroid/app/Notification;
    const-string v2, "VCardServiceFailure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1095
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$2;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    return-void
.end method

.method startVCardService()V
    .locals 3

    .prologue
    .line 1034
    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 1036
    const-string v0, "VCardImport"

    const-string v1, "Bind to VCardService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1039
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1042
    return-void
.end method
