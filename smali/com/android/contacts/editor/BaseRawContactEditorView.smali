.class public abstract Lcom/android/contacts/editor/BaseRawContactEditorView;
.super Landroid/widget/LinearLayout;
.source "BaseRawContactEditorView.java"


# instance fields
.field private mBody:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mExpanded:Z

.field private mHasPhotoEditor:Z

.field private mPhoto:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 62
    return-void
.end method


# virtual methods
.method public getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    return-object v0
.end method

.method public abstract getRawContactId()J
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    .line 69
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    .line 71
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    .line 72
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 73
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 76
    return-void
.end method

.method protected setHasPhotoEditor(Z)V
    .locals 2
    .param p1, "hasPhotoEditor"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 88
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setVisibility(I)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    return-void
.end method

.method public abstract setState(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end method
