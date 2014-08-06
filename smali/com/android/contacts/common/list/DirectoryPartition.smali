.class public final Lcom/android/contacts/common/list/DirectoryPartition;
.super Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# instance fields
.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 38
    return-void
.end method


# virtual methods
.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoSupported()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setDirectoryId(J)V
    .locals 0
    .param p1, "directoryId"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    .line 49
    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "directoryType"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPhotoSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    .line 106
    return-void
.end method

.method public setPriorityDirectory(Z)V
    .locals 0
    .param p1, "priorityDirectory"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    .line 95
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    .line 80
    return-void
.end method
