.class public Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailFragmentCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

.field private mAllowedHorizontalScrollLength:I

.field private mCurrentPage:I

.field private mEnableSwipe:Z

.field private mLastScrollPosition:I

.field private mLowerThreshold:I

.field private mMinFragmentWidth:I

.field private final mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

.field private mUpperThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 49
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 55
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 61
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 188
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 93
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04000e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    invoke-virtual {p0, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdgeSmooth()V

    return-void
.end method

.method private calculateHorizontalOffset()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    goto :goto_0
.end method

.method private getDesiredPage()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v2, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid current page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :pswitch_0
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    if-le v2, v3, :cond_0

    .line 256
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 252
    goto :goto_0

    .line 256
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    if-ge v2, v3, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private snapToEdge()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->calculateHorizontalOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setScrollX(I)V

    .line 228
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 229
    return-void
.end method

.method private snapToEdgeSmooth()V
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->calculateHorizontalOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->smoothScrollTo(II)V

    .line 236
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 237
    return-void
.end method

.method private updateTouchInterceptors()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 206
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_0

    .line 207
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eq v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 212
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 207
    goto :goto_0

    :cond_3
    move v1, v2

    .line 210
    goto :goto_1
.end method


# virtual methods
.method public animateAppear()V
    .locals 4

    .prologue
    .line 278
    const v2, 0x3e199998

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 279
    .local v1, "x":I
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setTranslationX(F)V

    .line 280
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v2}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 281
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 282
    return-void
.end method

.method public enableSwipe(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eq v0, p1, :cond_0

    .line 165
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    .line 166
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    .line 169
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 172
    :cond_0
    return-void

    .line 167
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 103
    .local v2, "screenWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 107
    .local v1, "screenHeight":I
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 108
    const v3, 0x3f59999a

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 109
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 111
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 112
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 116
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "child":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eqz v3, :cond_3

    .line 122
    :cond_1
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 133
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    :goto_0
    invoke-static {v2, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setMeasuredDimension(II)V

    .line 136
    return-void

    .line 128
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 217
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 263
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getDesiredPage()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 268
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdgeSmooth()V

    move v0, v1

    .line 269
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdgeSmooth()V

    .line 182
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "pageIndex"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 145
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 146
    return-void
.end method

.method public setFragmentViews(Lcom/android/contacts/widget/FrameLayoutWithOverlay;Lcom/android/contacts/widget/FrameLayoutWithOverlay;)V
    .locals 2
    .param p1, "about"    # Lcom/android/contacts/widget/FrameLayoutWithOverlay;
    .param p2, "updates"    # Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .line 153
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .line 155
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method
