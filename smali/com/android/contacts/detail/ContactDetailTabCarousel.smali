.class public Lcom/android/contacts/detail/ContactDetailTabCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;,
        Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAboutTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mAboutTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

.field private mAllowedHorizontalScrollLength:I

.field private mAllowedVerticalScrollLength:I

.field private mCurrentTab:I

.field private mLastScrollPosition:I

.field private mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewOverlay:Landroid/view/View;

.field private mScrollScaleFactor:F

.field private mScrollToCurrentTab:Z

.field private mShadow:Landroid/view/View;

.field private mStatusPhotoView:Landroid/widget/ImageView;

.field private mStatusView:Landroid/widget/TextView;

.field private mTabAndShadowContainer:Landroid/view/View;

.field private mTabDisplayLabelHeight:I

.field private mTabDivider:Landroid/view/View;

.field private mTabHeightScreenWidthFraction:F

.field private mTabShadowHeight:I

.field private mTabWidthScreenWidthFraction:F

.field private mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mUpdatesTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

.field private final mYCoordinateArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    const/4 v2, 0x1

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v1, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 69
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    .line 82
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 83
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    .line 84
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 85
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 88
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    .line 234
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    invoke-direct {v1, p0, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;I)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    .line 237
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;I)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    .line 106
    invoke-virtual {p0, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    .line 111
    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabShadowHeight:I

    .line 113
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    .line 115
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailTabCarousel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    return-object v0
.end method

.method private updateAlphaLayers()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000

    .line 340
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 341
    .local v0, "alpha":F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/MoreMath;->clamp(FFF)F

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    .line 343
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    .line 344
    return-void
.end method


# virtual methods
.method public animateAppear(II)V
    .locals 22
    .param p1, "width"    # I
    .param p2, "scrollOffset"    # I

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v11, v19, v20

    .line 251
    .local v11, "photoHeight":F
    const/4 v13, 0x0

    .line 258
    .local v13, "pixelsToScrollVertically":I
    const/high16 v19, -0x80000000

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    .line 261
    const/4 v4, 0x0

    .line 273
    .local v4, "animateZoomAndFade":Z
    :goto_0
    if-eqz v13, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabAndShadowContainer:Landroid/view/View;

    move-object/from16 v19, v0

    neg-int v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationY(F)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabAndShadowContainer:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 279
    .local v5, "animator":Landroid/view/ViewPropertyAnimator;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 280
    const-wide/16 v19, 0x96

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 283
    .end local v5    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_0
    if-eqz v4, :cond_6

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_3

    const/16 v16, 0x1

    .line 295
    .local v16, "squarePicture":Z
    :goto_1
    if-eqz v16, :cond_4

    .line 296
    const/4 v7, 0x0

    .line 318
    .local v7, "firstTransitionTime":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/android/contacts/detail/CarouselTab;->fadeInLabelViewAnimator(IZ)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/android/contacts/detail/CarouselTab;->fadeInLabelViewAnimator(IZ)V

    .line 321
    const/high16 v19, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v19, v20

    .line 323
    .local v14, "pixelsToTranslate":F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v20, v0

    aput-object v20, v6, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDivider:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v6, v19

    .local v6, "arr$":[Landroid/view/View;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v9, :cond_5

    aget-object v18, v6, v8

    .line 324
    .local v18, "view":Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 325
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    .line 326
    .local v17, "translateAnimator":Landroid/view/ViewPropertyAnimator;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 327
    const-wide/16 v19, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 263
    .end local v4    # "animateZoomAndFade":Z
    .end local v6    # "arr$":[Landroid/view/View;
    .end local v7    # "firstTransitionTime":I
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v14    # "pixelsToTranslate":F
    .end local v16    # "squarePicture":Z
    .end local v17    # "translateAnimator":Landroid/view/ViewPropertyAnimator;
    .end local v18    # "view":Landroid/view/View;
    :cond_1
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v12, v19, p2

    .line 264
    .local v12, "pixelsOfPhotoLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v12, v0, :cond_2

    .line 266
    const/4 v13, 0x0

    .line 270
    :goto_4
    const/4 v4, 0x1

    .restart local v4    # "animateZoomAndFade":Z
    goto/16 :goto_0

    .line 268
    .end local v4    # "animateZoomAndFade":Z
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    move/from16 v19, v0

    sub-int v13, v19, v12

    goto :goto_4

    .line 292
    .end local v12    # "pixelsOfPhotoLeft":I
    .restart local v4    # "animateZoomAndFade":Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 301
    .restart local v16    # "squarePicture":Z
    :cond_4
    const/high16 v19, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    move/from16 v20, v0

    div-float v15, v19, v20

    .line 302
    .local v15, "revScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/contacts/detail/CarouselTab;->setScaleX(F)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/detail/CarouselTab;->setPivotX(F)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/detail/CarouselTab;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 305
    .local v3, "aboutAnimator":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v19, 0xc8

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 306
    const/high16 v19, 0x3f800000

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f000000

    mul-float v20, v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 312
    .local v10, "photoAnimator":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v19, 0xc8

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 313
    const/high16 v19, 0x3f800000

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 314
    const/16 v7, 0xc8

    .restart local v7    # "firstTransitionTime":I
    goto/16 :goto_2

    .line 332
    .end local v3    # "aboutAnimator":Landroid/view/ViewPropertyAnimator;
    .end local v10    # "photoAnimator":Landroid/view/ViewPropertyAnimator;
    .end local v15    # "revScale":F
    .restart local v6    # "arr$":[Landroid/view/View;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v14    # "pixelsToTranslate":F
    :cond_5
    if-eqz v16, :cond_6

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 337
    .end local v6    # "arr$":[Landroid/view/View;
    .end local v7    # "firstTransitionTime":I
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v14    # "pixelsToTranslate":F
    .end local v16    # "squarePicture":Z
    :cond_6
    return-void
.end method

.method public getAllowedHorizontalScrollLength()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method public getAllowedVerticalScrollLength()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    return v0
.end method

.method public getStoredYCoordinateForTab(I)F
    .locals 1
    .param p1, "tabIndex"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aget v0, v0, p1

    return v0
.end method

.method public loadData(Lcom/android/contacts/model/Contact;)V
    .locals 5
    .param p1, "contactData"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 473
    .local v0, "expandOnClick":Z
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, p1, v4, v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 476
    .local v1, "listener":Landroid/view/View$OnClickListener;
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoViewOverlay:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    invoke-static {v2, p1, v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 472
    .end local v0    # "expandOnClick":Z
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    .restart local v0    # "expandOnClick":Z
    .restart local v1    # "listener":Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoViewOverlay:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public moveToYCoordinate(IF)V
    .locals 0
    .param p1, "tabIndex"    # I
    .param p2, "y"    # F

    .prologue
    .line 404
    invoke-virtual {p0, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setY(F)V

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 406
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 122
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabAndShadowContainer:Landroid/view/View;

    .line 123
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 124
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDivider:Landroid/view/View;

    .line 129
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 130
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    const v2, 0x7f09010e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoViewOverlay:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 151
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 510
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 511
    .local v0, "interceptTouch":Z
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    .line 514
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 203
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 208
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 210
    new-instance v0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    invoke-static {p0, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000

    const/high16 v7, 0x3f800000

    .line 155
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 157
    .local v1, "screenWidth":I
    iget v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 161
    .local v4, "tabWidth":I
    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 166
    iget v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    if-nez v5, :cond_1

    .line 171
    iput v7, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    .line 172
    sget-object v5, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    const-string v6, "set scale-factor to 1.0 to avoid divide-by-zero"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    int-to-float v5, v1

    iget v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabShadowHeight:I

    add-int v3, v5, v6

    .line 180
    .local v3, "tabHeight":I
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 181
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "child":Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 188
    .local v2, "seperatorPixels":I
    mul-int/lit8 v5, v4, 0x2

    mul-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 195
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "seperatorPixels":I
    :cond_0
    iget v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabShadowHeight:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 196
    invoke-static {v1, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v5

    invoke-static {v3, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setMeasuredDimension(II)V

    .line 199
    return-void

    .line 174
    .end local v3    # "tabHeight":I
    :cond_1
    iget v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    div-int v5, v1, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .prologue
    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 354
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    if-ne v2, p1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 361
    :cond_0
    int-to-float v2, p1

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 362
    .local v1, "scaledL":I
    int-to-float v2, p3

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 363
    .local v0, "oldScaledL":I
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v2, v1, p2, v0, p4}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onScrollChanged(IIII)V

    .line 365
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    .line 366
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 505
    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 499
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchUp()V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->scrollTo(II)V

    .line 375
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->moveToYCoordinate(IF)V

    .line 377
    return-void
.end method

.method public restoreCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 388
    return-void
.end method

.method public restoreYCoordinate()V
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setY(F)V

    .line 397
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 444
    packed-switch p1, :pswitch_data_0

    .line 454
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tab position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 447
    .local v1, "selected":Lcom/android/contacts/detail/CarouselTab;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 456
    .local v0, "deselected":Lcom/android/contacts/detail/CarouselTab;
    :goto_0
    invoke-virtual {v1}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    .line 457
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/CarouselTab;->setOverlayClickable(Z)V

    .line 458
    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    .line 459
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/CarouselTab;->setOverlayClickable(Z)V

    .line 460
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 461
    return-void

    .line 450
    .end local v0    # "deselected":Lcom/android/contacts/detail/CarouselTab;
    .end local v1    # "selected":Lcom/android/contacts/detail/CarouselTab;
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 451
    .restart local v1    # "selected":Lcom/android/contacts/detail/CarouselTab;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 452
    .restart local v0    # "deselected":Lcom/android/contacts/detail/CarouselTab;
    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .line 493
    return-void
.end method

.method public storeYCoordinate(IF)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "y"    # F

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aput p2, v0, p1

    .line 413
    return-void
.end method
