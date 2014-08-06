.class public Lcom/android/contacts/common/widget/CustomSearchView;
.super Landroid/widget/LinearLayout;
.source "CustomSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/CustomSearchView$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/common/widget/CustomSearchView$Listener;

.field private mSearchClear:Landroid/widget/ImageView;

.field private mSearchView:Landroid/widget/EditText;

.field private mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/widget/CustomSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/widget/CustomSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance v3, Lcom/android/contacts/common/widget/CustomSearchView$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/widget/CustomSearchView$1;-><init>(Lcom/android/contacts/common/widget/CustomSearchView;)V

    iput-object v3, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 45
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04007a

    const/4 v4, 0x1

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "searchLayout":Landroid/view/View;
    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchView:Landroid/widget/EditText;

    .line 47
    iget-object v3, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    const v3, 0x7f0b0109

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchClear:Landroid/widget/ImageView;

    .line 49
    iget-object v3, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchClear:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v3, 0x7f0b010a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "addContactView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/widget/CustomSearchView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/widget/CustomSearchView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchView:Landroid/widget/EditText;

    return-object v0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/widget/CustomSearchView;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/widget/CustomSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CustomSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CustomSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "input":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchClear:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CustomSearchView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mListener:Lcom/android/contacts/common/widget/CustomSearchView$Listener;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mListener:Lcom/android/contacts/common/widget/CustomSearchView$Listener;

    invoke-interface {v1, v0}, Lcom/android/contacts/common/widget/CustomSearchView$Listener;->onSearchTextChanged(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchClear:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 80
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/widget/CustomSearchView;->setImeVisibility(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 100
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/contacts/common/widget/CustomSearchView;->setImeVisibility(Z)V

    goto :goto_0

    .line 104
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CustomSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0109
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 61
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 85
    return-void
.end method

.method public setListener(Lcom/android/contacts/common/widget/CustomSearchView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/widget/CustomSearchView$Listener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/contacts/common/widget/CustomSearchView;->mListener:Lcom/android/contacts/common/widget/CustomSearchView$Listener;

    .line 56
    return-void
.end method
