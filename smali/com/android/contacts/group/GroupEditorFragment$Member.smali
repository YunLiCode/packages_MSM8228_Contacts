.class public Lcom/android/contacts/group/GroupEditorFragment$Member;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContactId:J

.field private final mDisplayName:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mPhotoUri:Landroid/net/Uri;

.field private final mRawContactId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1076
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member$1;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member$1;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Member;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rawContactId"    # J
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "contactId"    # J
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "photoUri"    # Ljava/lang/String;

    .prologue
    .line 1011
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-wide p1, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    .line 1013
    iput-wide p4, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    .line 1014
    invoke-static {p4, p5, p3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    .line 1015
    iput-object p6, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    .line 1016
    if-eqz p7, :cond_0

    invoke-static {p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    .line 1017
    return-void

    .line 1016
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1068
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    .line 1070
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    .line 1071
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    .line 1072
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    .line 1073
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    .line 1074
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/group/GroupEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/contacts/group/GroupEditorFragment$1;

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1041
    instance-of v1, p1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1042
    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 1043
    .local v0, "otherMember":Lcom/android/contacts/group/GroupEditorFragment$Member;
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1045
    .end local v0    # "otherMember":Lcom/android/contacts/group/GroupEditorFragment$Member;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 1024
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 1020
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1061
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1062
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1063
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1064
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1066
    return-void
.end method
