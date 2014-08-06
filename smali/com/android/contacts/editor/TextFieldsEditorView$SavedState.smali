.class Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;
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
            "Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHideOptional:Z

.field public mVisibilities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 369
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/editor/TextFieldsEditorView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/contacts/editor/TextFieldsEditorView$1;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 364
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 375
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 377
    return-void
.end method
