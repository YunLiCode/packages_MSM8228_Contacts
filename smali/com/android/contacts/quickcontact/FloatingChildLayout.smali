.class public Lcom/android/contacts/quickcontact/FloatingChildLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingChildLayout.java"


# instance fields
.field private final mAnimationDuration:I

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundPhase:I

.field private mChild:Landroid/view/View;

.field private mFixedTopPosition:I

.field private mForegroundPhase:I

.field private mOutsideTouchListener:Landroid/view/View$OnTouchListener;

.field private mTargetScreen:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    .line 60
    iput v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    .line 62
    const-string v1, "backgroundColorAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 72
    iput v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 90
    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    .line 92
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x7f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/FloatingChildLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/contacts/quickcontact/FloatingChildLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return p1
.end method

.method private animateScale(ZLjava/lang/Runnable;)V
    .locals 6
    .param p1, "isExitAnimation"    # Z
    .param p2, "onAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v2, 0x3f800000

    .line 254
    iget-object v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 255
    iget-object v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 257
    if-eqz p1, :cond_1

    const v0, 0x10c0004

    .line 260
    .local v0, "scaleInterpolator":I
    :goto_0
    if-eqz p1, :cond_2

    const/high16 v1, 0x3f000000

    .line 262
    .local v1, "scaleTarget":F
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 285
    return-void

    .line 257
    .end local v0    # "scaleInterpolator":I
    .end local v1    # "scaleTarget":F
    :cond_1
    const v0, 0x10c0005

    goto :goto_0

    .restart local v0    # "scaleInterpolator":I
    :cond_2
    move v1, v2

    .line 260
    goto :goto_1
.end method

.method private static clampDimension(III)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "size"    # I
    .param p2, "max"    # I

    .prologue
    .line 170
    if-le p1, p2, :cond_0

    .line 171
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, p2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private createChildLayer()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 246
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 247
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 248
    return-void
.end method

.method private getTargetInWindow()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v1, "windowScreen":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 136
    .local v0, "target":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 137
    return-object v0
.end method

.method private static layoutChild(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 180
    return-void
.end method


# virtual methods
.method public fadeInBackground()V
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    .line 191
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->createChildLayer()V

    .line 193
    new-instance v0, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V

    invoke-static {p0, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 200
    :cond_0
    return-void
.end method

.method public fadeOutBackground()V
    .locals 3

    .prologue
    .line 203
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    .line 205
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v0, "backgroundColorAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f
        0x0
    .end array-data
.end method

.method public hideContent(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "onAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 231
    iget v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    .line 235
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->createChildLayer()V

    .line 237
    invoke-direct {p0, v0, p1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V

    .line 240
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentFullyVisible()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000

    .line 97
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 102
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 103
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    .line 144
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getTargetInWindow()Landroid/graphics/Rect;

    move-result-object v7

    .line 146
    .local v7, "target":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 147
    .local v4, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 149
    .local v1, "childHeight":I
    iget v8, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v2, v8, 0x2

    .line 152
    .local v2, "childLeft":I
    iget v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 153
    .local v3, "childTop":I
    invoke-static {v0, v2, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    .line 166
    :goto_0
    return-void

    .line 156
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, v4, 0x2

    sub-int v2, v8, v9

    .line 158
    .restart local v2    # "childLeft":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v9, v1

    const v10, 0x3eb33333

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 161
    .restart local v3    # "childTop":I
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWidth()I

    move-result v8

    invoke-static {v2, v4, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v5

    .line 162
    .local v5, "clampedChildLeft":I
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getHeight()I

    move-result v8

    invoke-static {v3, v1, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v6

    .line 164
    .local v6, "clampedChildTop":I
    invoke-static {v0, v5, v6}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 115
    const-string v0, "FloatingChildLayout"

    const-string v1, "don\'t setBackground(), it is managed internally"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public setBackgroundColorAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 184
    shl-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setBackgroundColor(I)V

    .line 185
    return-void
.end method

.method public setChildTargetScreen(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "targetScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->requestLayout()V

    .line 125
    return-void
.end method

.method public setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    .line 291
    return-void
.end method

.method public showContent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 220
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V

    .line 224
    :cond_0
    return-void
.end method
