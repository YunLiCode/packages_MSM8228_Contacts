.class Lcom/android/contacts/editor/ContactEditorFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 320
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/editor/AggregationSuggestionView;

    .line 321
    .local v0, "suggestionView":Lcom/android/contacts/editor/AggregationSuggestionView;
    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->handleItemClickEvent()Z

    .line 322
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 323
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 324
    return-void
.end method
