.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
.super Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoEditorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V
    .locals 0

    .prologue
    .line 2042
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .param p2, "x1"    # Lcom/android/contacts/editor/ContactEditorFragment$1;

    .prologue
    .line 2042
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .param p1, "removedEditor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 2058
    return-void
.end method

.method public onPhotoSelected(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2300(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1602(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 2096
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2097
    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 0

    .prologue
    .line 2107
    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 3

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 2088
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2089
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2090
    return-void
.end method

.method public onRequest(I)V
    .locals 2
    .param p1, "request"    # I

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 6

    .prologue
    .line 2066
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2067
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2068
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2069
    .local v0, "childView":Landroid/view/View;
    instance-of v5, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 2070
    check-cast v2, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 2072
    .local v2, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    .line 2073
    .local v4, "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v5

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/contacts/editor/PhotoEditorView;->setSuperPrimary(Z)V

    .line 2067
    .end local v2    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v4    # "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2073
    .restart local v2    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .restart local v4    # "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 2076
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v4    # "photoEditor":Lcom/android/contacts/editor/PhotoEditorView;
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2077
    return-void
.end method
