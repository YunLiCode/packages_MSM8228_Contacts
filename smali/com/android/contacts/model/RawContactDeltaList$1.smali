.class final Lcom/android/contacts/model/RawContactDeltaList$1;
.super Ljava/lang/Object;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDeltaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/model/RawContactDeltaList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 429
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    .line 430
    .local v0, "state":Lcom/android/contacts/model/RawContactDeltaList;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->readFromParcel(Landroid/os/Parcel;)V

    .line 431
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 436
    new-array v0, p1, [Lcom/android/contacts/model/RawContactDeltaList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList$1;->newArray(I)[Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method
