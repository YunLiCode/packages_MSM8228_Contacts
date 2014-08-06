.class Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
.super Ljava/lang/Object;
.source "StructuredNameEditorView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/StructuredNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChanged:Z

.field public mSnapshot:Landroid/content/ContentValues;

.field public mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 263
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    .line 266
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    .line 267
    return-void

    .line 265
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/editor/StructuredNameEditorView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/contacts/editor/StructuredNameEditorView$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    .line 259
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 273
    iget-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 275
    return-void

    :cond_0
    move v0, v1

    .line 273
    goto :goto_0
.end method
