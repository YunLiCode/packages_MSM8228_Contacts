.class public Lcom/android/contacts/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttribute(Landroid/content/res/Resources$Theme;I)I
    .locals 2
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;
    .param p1, "attrId"    # I

    .prologue
    .line 30
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 31
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 32
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I
    .locals 1
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 39
    const v0, 0x101030e

    invoke-static {p0, v0}, Lcom/android/contacts/util/ThemeUtils;->getAttribute(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    return v0
.end method
