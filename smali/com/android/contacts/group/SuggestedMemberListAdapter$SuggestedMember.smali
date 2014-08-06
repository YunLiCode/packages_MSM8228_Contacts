.class public Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
.super Ljava/lang/Object;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/SuggestedMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestedMember"
.end annotation


# instance fields
.field private mContactId:J

.field private mDisplayName:Ljava/lang/String;

.field private mExtraInfo:Ljava/lang/String;

.field private mLookupKey:Ljava/lang/String;

.field private mPhoto:[B

.field private mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;JLjava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p2, "rawContactId"    # J
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-wide p2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    .line 365
    iput-object p4, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mDisplayName:Ljava/lang/String;

    .line 366
    iput-wide p5, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    .line 367
    iput-object p7, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mLookupKey:Ljava/lang/String;

    .line 368
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    return-wide v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    iget-object v2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mLookupKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoByteArray()[B
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mPhoto:[B

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    return-wide v0
.end method

.method public hasExtraInfo()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setPhotoByteArray([B)V
    .locals 0
    .param p1, "photo"    # [B

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mPhoto:[B

    .line 407
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
