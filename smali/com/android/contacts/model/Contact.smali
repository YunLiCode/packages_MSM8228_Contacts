.class public Lcom/android/contacts/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/Contact$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private final mCustomRingtone:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/model/Contact$Status;

.field private mStatuses:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "lookupUri"    # Landroid/net/Uri;
    .param p4, "directoryId"    # J
    .param p6, "lookupKey"    # Ljava/lang/String;
    .param p7, "id"    # J
    .param p9, "nameRawContactId"    # J
    .param p11, "displayNameSource"    # I
    .param p12, "photoId"    # J
    .param p14, "photoUri"    # Ljava/lang/String;
    .param p15, "displayName"    # Ljava/lang/String;
    .param p16, "altDisplayName"    # Ljava/lang/String;
    .param p17, "phoneticName"    # Ljava/lang/String;
    .param p18, "starred"    # Z
    .param p19, "presence"    # Ljava/lang/Integer;
    .param p20, "sendToVoicemail"    # Z
    .param p21, "customRingtone"    # Ljava/lang/String;
    .param p22, "isUserProfile"    # Z

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v1, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 147
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 148
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 149
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    .line 150
    iput-wide p4, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 151
    iput-object p6, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 152
    iput-wide p7, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 156
    iput-wide p9, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    .line 157
    iput p11, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 158
    iput-wide p12, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 159
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 163
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 164
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 166
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 167
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 168
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "status"    # Lcom/android/contacts/model/Contact$Status;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 104
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 105
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 106
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 107
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    .line 108
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 109
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 110
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 111
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 112
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 113
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 114
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    .line 115
    iput v2, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 116
    iput-wide v3, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 117
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 122
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 123
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 124
    iput-boolean v2, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 125
    iput-object v1, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 126
    iput-boolean v2, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "from"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 174
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 175
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 176
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 177
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    .line 178
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 179
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 180
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 181
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    .line 182
    iget v0, p2, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 183
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 184
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 185
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 186
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 187
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 188
    iget-boolean v0, p2, Lcom/android/contacts/model/Contact;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 189
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 190
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 191
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 192
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 193
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 195
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 196
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 197
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 198
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 199
    iget v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    .line 201
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 203
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    .line 204
    iget-boolean v0, p2, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 205
    iget-object v0, p2, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 206
    iget-boolean v0, p2, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    .line 207
    return-void
.end method

.method public static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/model/Contact;
    .locals 2
    .param p0, "requestedUri"    # Landroid/net/Uri;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 130
    new-instance v0, Lcom/android/contacts/model/Contact;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 3
    .param p0, "requestedUri"    # Landroid/net/Uri;

    .prologue
    .line 134
    new-instance v0, Lcom/android/contacts/model/Contact;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v3, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 427
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot extract content values from an aggregated contact"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 431
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContact;

    .line 432
    .local v1, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 436
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-wide v3, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    if-eqz v3, :cond_1

    .line 437
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v0, "photo":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v3, "data15"

    iget-object v4, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 440
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v0    # "photo":Landroid/content/ContentValues;
    :cond_1
    return-object v2
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFirstWritableRawContactId(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, -0x1

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-wide v3

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact;

    .line 392
    .local v2, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v2, p1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 393
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 394
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0
.end method

.method public getGroupMetaData()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mId:J

    return-wide v0
.end method

.method public getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContacts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    return v0
.end method

.method public getStatuses()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getStreamItems()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public isSimAccountType(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    iget-object v5, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 469
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 470
    iget-object v5, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact;

    .line 471
    .local v2, "entity":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v2, p1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 472
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "com.android.sim"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    const/4 v5, 0x1

    .line 478
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "entity":Lcom/android/contacts/model/RawContact;
    .end local v4    # "type":Ljava/lang/String;
    :goto_1
    return v5

    .line 469
    .restart local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v2    # "entity":Lcom/android/contacts/model/RawContact;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "entity":Lcom/android/contacts/model/RawContact;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    return v0
.end method

.method public isWritableContact(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/Contact;->getFirstWritableRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "directoryType"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "exportSupport"    # I

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 216
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 217
    iput-object p4, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 218
    iput p5, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    .line 219
    return-void
.end method

.method setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "groups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/GroupMetaData;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 501
    return-void
.end method

.method setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "accountTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/account/AccountType;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 497
    return-void
.end method

.method setPhotoBinaryData([B)V
    .locals 0
    .param p1, "photoBinaryData"    # [B

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    .line 223
    return-void
.end method

.method setRawContacts(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/model/RawContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 489
    return-void
.end method

.method setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "statuses":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 493
    return-void
.end method

.method setStreamItems(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "streamItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/util/StreamItemEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStreamItems:Lcom/google/common/collect/ImmutableList;

    .line 505
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
