.class final Lcom/android/contacts/group/GroupEditorFragment$Member$1;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment$Member;
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
        "Lcom/android/contacts/group/GroupEditorFragment$Member;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1076
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/group/GroupEditorFragment$Member;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1079
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(Landroid/os/Parcel;Lcom/android/contacts/group/GroupEditorFragment$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$Member$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/group/GroupEditorFragment$Member;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1084
    new-array v0, p1, [Lcom/android/contacts/group/GroupEditorFragment$Member;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$Member$1;->newArray(I)[Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v0

    return-object v0
.end method
