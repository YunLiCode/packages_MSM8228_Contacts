.class final Lcom/android/contacts/model/RawContactDelta$1;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDelta;
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
        "Lcom/android/contacts/model/RawContactDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 701
    new-instance v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    .line 702
    .local v0, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDelta;->readFromParcel(Landroid/os/Parcel;)V

    .line 703
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/RawContactDelta;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 707
    new-array v0, p1, [Lcom/android/contacts/model/RawContactDelta;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$1;->newArray(I)[Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    return-object v0
.end method
