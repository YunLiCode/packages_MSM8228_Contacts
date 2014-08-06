.class public Lcom/android/contacts/multichoice/MultiChoiceRequest;
.super Ljava/lang/Object;
.source "MultiChoiceRequest.java"


# instance fields
.field public mAccount:Landroid/accounts/Account;

.field public mContactId:J

.field public mDisplayName:Ljava/lang/String;

.field public mGroupsId:[J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mGroupsId:[J

    .line 24
    iput-wide p1, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    .line 25
    iput-object p3, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    .line 26
    return-void

    .line 21
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/accounts/Account;)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "account"    # Landroid/accounts/Account;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mGroupsId:[J

    .line 29
    iput-wide p1, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    .line 30
    iput-object p3, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mAccount:Landroid/accounts/Account;

    .line 32
    return-void

    .line 21
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public setGroupsId(JJ)V
    .locals 2
    .param p1, "src"    # J
    .param p3, "dest"    # J

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mGroupsId:[J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 36
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mGroupsId:[J

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiChoiceRequest{mContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceRequest;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
