.class public Lcom/android/contacts/common/list/ContactTileStarredView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTileStarredView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-interface {v0}, Lcom/android/contacts/common/list/ContactTileView$Listener;->getApproximateTileWidth()I

    move-result v0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
