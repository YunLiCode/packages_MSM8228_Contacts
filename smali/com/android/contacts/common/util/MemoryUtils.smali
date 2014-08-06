.class public final Lcom/android/contacts/common/util/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static sTotalMemorySize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/contacts/common/util/MemoryUtils;->sTotalMemorySize:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getTotalMemorySize()J
    .locals 5

    .prologue
    .line 32
    sget-wide v1, Lcom/android/contacts/common/util/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 33
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 34
    .local v0, "reader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 39
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    sput-wide v1, Lcom/android/contacts/common/util/MemoryUtils;->sTotalMemorySize:J

    .line 41
    :cond_0
    sget-wide v1, Lcom/android/contacts/common/util/MemoryUtils;->sTotalMemorySize:J

    return-wide v1
.end method

.method public static isDataSpaceEnough(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 57
    .local v2, "dataLimit":I
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "statFs":Landroid/os/StatFs;
    const-wide/16 v4, 0x1

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long v0, v4, v6

    .line 59
    .local v0, "dataAvailable":J
    mul-int/lit16 v4, v2, 0x400

    mul-int/lit16 v4, v4, 0x400

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 60
    const/4 v4, 0x0

    .line 62
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isStorageSpaceEnough(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 46
    .local v2, "sdCardLimit":I
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long v0, v4, v6

    .line 48
    .local v0, "sdAvailable":J
    mul-int/lit16 v4, v2, 0x400

    mul-int/lit16 v4, v4, 0x400

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 49
    const/4 v4, 0x0

    .line 51
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method
