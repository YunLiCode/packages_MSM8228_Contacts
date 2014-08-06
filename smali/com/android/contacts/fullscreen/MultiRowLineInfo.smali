.class public Lcom/android/contacts/fullscreen/MultiRowLineInfo;
.super Ljava/lang/Object;
.source "MultiRowLineInfo.java"


# instance fields
.field private mContactIds:[J

.field private mDisplayNames:[Ljava/lang/String;

.field private mLookupKeys:[Ljava/lang/String;

.field private mSectionHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v3, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mSectionHeader:Ljava/lang/String;

    .line 22
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mContactIds:[J

    .line 23
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mDisplayNames:[Ljava/lang/String;

    .line 24
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mLookupKeys:[Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mContactIds:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 26
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mDisplayNames:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mLookupKeys:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public addInfo(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemIndex"    # I
    .param p2, "contactId"    # J
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mContactIds:[J

    aput-wide p2, v0, p1

    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mDisplayNames:[Ljava/lang/String;

    aput-object p4, v0, p1

    .line 34
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mLookupKeys:[Ljava/lang/String;

    aput-object p5, v0, p1

    .line 36
    :cond_0
    return-void
.end method

.method public getContactId(I)J
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 47
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 48
    :cond_0
    const-wide/16 v0, -0x1

    .line 50
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mContactIds:[J

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method public getContactLookupUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "itemIndex"    # I

    .prologue
    .line 61
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mContactIds:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mLookupKeys:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 54
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mDisplayNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getSectionHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mSectionHeader:Ljava/lang/String;

    return-object v0
.end method

.method public setmSectionHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSectionHeader"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mSectionHeader:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiRowLineInfo{mSectionHeader=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mSectionHeader:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mContactIds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mContactIds:[J

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDisplayNames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mDisplayNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLookupKeys="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mLookupKeys:[Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mDisplayNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->mLookupKeys:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method
