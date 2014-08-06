.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mGotStackOverFlowError:Z

.field private mRootDirectoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    .line 648
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 649
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 650
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 651
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotStackOverFlowError:Z

    .line 652
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectoryList:Ljava/util/List;

    .line 653
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 654
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 656
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 659
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 14
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;,
            Ljava/lang/StackOverflowError;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 707
    iget-boolean v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v11, :cond_0

    .line 708
    new-instance v11, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v11, p0, v13}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    throw v11

    .line 711
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 712
    .local v8, "path":Ljava/lang/String;
    const-string v11, "\\\\"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mDepthOfFileScanning:I
    invoke-static {}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$1300()I

    move-result v12

    if-le v11, v12, :cond_2

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 717
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 718
    .local v5, "files":[Ljava/io/File;
    if-nez v5, :cond_3

    .line 719
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, "currentDirectoryPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".android_secure"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 722
    .local v9, "secureDirectoryPath":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 723
    const-string v11, "VCardImport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "listFiles() returned null (directory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    .end local v2    # "currentDirectoryPath":Ljava/lang/String;
    .end local v9    # "secureDirectoryPath":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 728
    .local v3, "file":Ljava/io/File;
    iget-boolean v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v11, :cond_4

    .line 729
    new-instance v11, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v11, p0, v13}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    throw v11

    .line 731
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "canonicalPath":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 727
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 736
    :cond_6
    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 739
    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_2

    .line 740
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".vcf"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 742
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, "fileName":Ljava/lang/String;
    new-instance v10, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-direct {v10, v4, v1, v11, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 745
    .local v10, "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 752
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 755
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 758
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 663
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 665
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 667
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 668
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectoryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .end local v1    # "e":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :goto_1
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 681
    iget-boolean v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v4, :cond_0

    .line 682
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v4, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 685
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$1000(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 686
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # setter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$1002(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 688
    iget-boolean v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v4, :cond_1

    .line 689
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v7, 0x7f0b0007

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 703
    :goto_2
    return-void

    .line 673
    :catch_1
    move-exception v1

    .line 674
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 678
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 675
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 676
    .local v1, "e":Ljava/lang/StackOverflowError;
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotStackOverFlowError:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 678
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .end local v1    # "e":Ljava/lang/StackOverflowError;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v4

    .line 690
    :cond_1
    iget-boolean v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotStackOverFlowError:Z

    if-eqz v4, :cond_2

    .line 691
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v7, 0x7f0b0012

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 692
    :cond_2
    iget-boolean v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v4, :cond_3

    .line 693
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_2

    .line 695
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 696
    .local v3, "size":I
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .line 697
    .local v0, "context":Landroid/content/Context;
    if-nez v3, :cond_4

    .line 698
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v7, 0x7f0b0002

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 700
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->startVCardSelectAndImport()V
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$1100(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    goto :goto_2

    .line 678
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "size":I
    .restart local v2    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1
.end method
