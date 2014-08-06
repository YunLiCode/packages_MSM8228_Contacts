.class final Lcom/android/contacts/editor/PhotoActionPopup$1;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$listPopupWindow:Landroid/widget/ListPopupWindow;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    iput-object p3, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 111
    .local v0, "choice":Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-static {v1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 127
    return-void

    .line 113
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onUseAsPrimaryChosen()V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
