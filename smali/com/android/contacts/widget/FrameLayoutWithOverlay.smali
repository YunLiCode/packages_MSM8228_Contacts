.class public Lcom/android/contacts/widget/FrameLayoutWithOverlay;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutWithOverlay.java"


# instance fields
.field private final mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-direct {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    .line 38
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->bringToFront()V

    .line 46
    return-void
.end method

.method protected setAlphaLayer(Landroid/view/View;)V
    .locals 1
    .param p1, "layer"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setAlphaLayer(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setAlphaLayerValue(F)V

    .line 61
    return-void
.end method

.method public setOverlayClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setOverlayClickable(Z)V

    .line 71
    return-void
.end method

.method public setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
