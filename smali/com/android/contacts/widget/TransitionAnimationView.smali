.class public Lcom/android/contacts/widget/TransitionAnimationView;
.super Landroid/widget/FrameLayout;
.source "TransitionAnimationView.java"


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mMaskingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/widget/TransitionAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/TransitionAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/widget/TransitionAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/TransitionAnimationView;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public setMaskVisibility(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startMaskTransition(ZI)V
    .locals 3
    .param p1, "showMask"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x2

    .line 77
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    if-eqz p1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 87
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 91
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mMaskingView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 82
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 85
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
