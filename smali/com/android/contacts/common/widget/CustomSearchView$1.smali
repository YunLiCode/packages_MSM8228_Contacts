.class Lcom/android/contacts/common/widget/CustomSearchView$1;
.super Ljava/lang/Object;
.source "CustomSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/CustomSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/CustomSearchView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/CustomSearchView;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/common/widget/CustomSearchView$1;->this$0:Lcom/android/contacts/common/widget/CustomSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView$1;->this$0:Lcom/android/contacts/common/widget/CustomSearchView;

    invoke-virtual {v1}, Lcom/android/contacts/common/widget/CustomSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView$1;->this$0:Lcom/android/contacts/common/widget/CustomSearchView;

    # getter for: Lcom/android/contacts/common/widget/CustomSearchView;->mSearchView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/common/widget/CustomSearchView;->access$000(Lcom/android/contacts/common/widget/CustomSearchView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 132
    :cond_0
    return-void
.end method
