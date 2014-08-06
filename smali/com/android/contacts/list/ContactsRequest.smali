.class public Lcom/android/contacts/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionCode:I

.field private mContactUri:Landroid/net/Uri;

.field private mDirectorySearchEnabled:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibilityMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRedirectIntent:Landroid/content/Intent;

.field private mSearchMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/android/contacts/list/ContactsRequest$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 126
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 133
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactsRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactsRequest;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    .line 155
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 156
    iget v0, p1, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 157
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 158
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 159
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 160
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 161
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    .line 162
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 163
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 164
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 165
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setActionCode(I)Lcom/android/contacts/list/ContactsRequest;
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 237
    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 225
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 290
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 270
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 246
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 213
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactsRequest:mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRedirectIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSearchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mQueryString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIncludeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLegacyCompatibilityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDirectorySearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 195
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 191
    goto :goto_0

    :cond_1
    move v0, v2

    .line 195
    goto :goto_1

    :cond_2
    move v0, v2

    .line 197
    goto :goto_2

    :cond_3
    move v0, v2

    .line 198
    goto :goto_3

    :cond_4
    move v1, v2

    .line 199
    goto :goto_4
.end method
