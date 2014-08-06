.class Lcom/android/contacts/editor/RawContactEditorView$3;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$3;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$3;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/editor/RawContactEditorView;->mIsPopupMenuShowing:Z
    invoke-static {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$402(Lcom/android/contacts/editor/RawContactEditorView;Z)Z

    .line 603
    return-void
.end method
