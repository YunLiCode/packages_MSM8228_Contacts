.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/FrameLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# instance fields
.field private mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

.field private mEntry:Lcom/android/contacts/common/model/ValuesDelta;

.field private mFrameView:Landroid/view/View;

.field private mHasSetPhoto:Z

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mReadOnly:Z

.field private mTriangleAffordance:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/PhotoEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 59
    invoke-static {p1}, Lcom/android/internal/util/ColorfulPhotoUtils;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ColorfulPhotoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/PhotoEditorView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method


# virtual methods
.method public clearAllFields()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    .line 212
    return-void
.end method

.method public deleteEditor()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public editNewlyAddedField()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    .line 79
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method protected resetDefault()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    invoke-static {}, Lcom/android/contacts/common/util/UriUtils;->getUriForNewContact()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/ColorfulPhotoUtils;->getPhotoResId(Landroid/net/Uri;)I

    move-result v0

    .line 174
    .local v0, "photoResId":I
    if-lez v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    iput-boolean v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 181
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 182
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v4, 0x7f02002d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 179
    goto :goto_1
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/contacts/editor/Editor$EditorListener;

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 189
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 190
    .local v0, "isPushable":Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void

    .end local v0    # "isPushable":Z
    :cond_0
    move v0, v1

    .line 189
    goto :goto_0

    .restart local v0    # "isPushable":Z
    :cond_1
    move v2, v3

    .line 190
    goto :goto_1

    :cond_2
    move v1, v3

    .line 191
    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    if-nez p1, :cond_1

    .line 139
    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v5, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    iput-boolean v6, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 147
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v5}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/ValuesDelta;->setSuperPrimary(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v2

    .line 159
    .local v2, "size":I
    invoke-static {p1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "scaled":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 161
    .local v0, "compressed":[B
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoto([B)V

    goto :goto_0
.end method

.method public setSuperPrimary(Z)V
    .locals 3
    .param p1, "superPrimary"    # Z

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v2, "is_super_primary"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 169
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 5
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v4, 0x0

    .line 101
    iput-object p2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    .line 102
    iput-boolean p4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    .line 104
    invoke-virtual {p5, p3, p1, p2, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setId(I)V

    .line 106
    if-eqz p2, :cond_1

    .line 108
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 109
    .local v1, "photoBytes":[B
    if-eqz v1, :cond_0

    .line 110
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, "photo":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 116
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 123
    .end local v0    # "photo":Landroid/graphics/Bitmap;
    .end local v1    # "photoBytes":[B
    :goto_0
    return-void

    .line 118
    .restart local v1    # "photoBytes":[B
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0

    .line 121
    .end local v1    # "photoBytes":[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0
.end method
