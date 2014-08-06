.class public Lcom/android/contacts/util/UiClosables;
.super Ljava/lang/Object;
.source "UiClosables.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/widget/ListPopupWindow;)Z
    .locals 1
    .param p0, "popup"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
