.class public Lcom/android/contacts/common/list/PinnedHeaderListView;
.super Lcom/android/contacts/common/list/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PinnedHeaderListView$1;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderPaddingStart:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/list/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    .line 103
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    .line 119
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "header"    # Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .param p3, "currentTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 500
    iget-boolean v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v3, :cond_0

    .line 501
    iget-wide v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v3, p3

    long-to-int v1, v3

    .line 502
    .local v1, "timeLeft":I
    if-gtz v1, :cond_3

    .line 503
    iget v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 504
    iget-boolean v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 505
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 511
    .end local v1    # "timeLeft":I
    :cond_0
    :goto_0
    iget-boolean v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_2

    .line 512
    iget-object v2, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 513
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 514
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    :goto_1
    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 517
    iget v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 518
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 519
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 521
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 522
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 524
    .end local v0    # "saveCount":I
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 507
    .restart local v1    # "timeLeft":I
    :cond_3
    iget v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    .line 514
    .end local v1    # "timeLeft":I
    .restart local v0    # "saveCount":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_4
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    int-to-float v3, v3

    goto :goto_1
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .param p1, "viewIndex"    # I

    .prologue
    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    .line 352
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 353
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 356
    .local v4, "widthSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 357
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 358
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 363
    .local v1, "heightSpec":I
    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 364
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 365
    .local v0, "height":I
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    .line 366
    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 368
    .end local v0    # "height":I
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "widthSpec":I
    :cond_0
    return-void

    .line 361
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "widthSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightSpec":I
    goto :goto_0
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 441
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidate()V

    .line 445
    :cond_0
    return-void

    .line 438
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5
    .param p1, "partition"    # I

    .prologue
    .line 419
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 420
    .local v3, "position":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 421
    const/4 v4, 0x0

    .line 433
    :goto_0
    return v4

    .line 424
    :cond_0
    const/4 v2, 0x0

    .line 425
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 426
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 427
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 428
    iget v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 425
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPositionFromTop(II)V

    .line 433
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 449
    iget-boolean v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 451
    .local v1, "currentTime":J
    :goto_0
    const/4 v7, 0x0

    .line 452
    .local v7, "top":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 453
    .local v0, "bottom":I
    const/4 v3, 0x0

    .line 454
    .local v3, "hasVisibleHeaders":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_4

    .line 455
    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 456
    .local v4, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_0

    .line 457
    const/4 v3, 0x1

    .line 458
    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_2

    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v8, v0, :cond_2

    .line 459
    iget v0, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 454
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 449
    .end local v0    # "bottom":I
    .end local v1    # "currentTime":J
    .end local v3    # "hasVisibleHeaders":Z
    .end local v4    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v5    # "i":I
    .end local v7    # "top":I
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 460
    .restart local v0    # "bottom":I
    .restart local v1    # "currentTime":J
    .restart local v3    # "hasVisibleHeaders":Z
    .restart local v4    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v5    # "i":I
    .restart local v7    # "top":I
    :cond_2
    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_0

    .line 461
    :cond_3
    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v9, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v6, v8, v9

    .line 462
    .local v6, "newTop":I
    if-le v6, v7, :cond_0

    .line 463
    move v7, v6

    goto :goto_2

    .line 469
    .end local v4    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v6    # "newTop":I
    :cond_4
    if-eqz v3, :cond_5

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 471
    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getWidth()I

    move-result v10

    invoke-virtual {v8, v9, v7, v10, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 472
    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 475
    :cond_5
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 477
    if-eqz v3, :cond_a

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 481
    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    .line 482
    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 483
    .restart local v4    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_6

    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_7

    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_6

    .line 484
    :cond_7
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_3

    .line 488
    .end local v4    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_8
    const/4 v5, 0x0

    :goto_4
    iget v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_a

    .line 489
    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 490
    .restart local v4    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_9

    iget v8, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_9

    .line 491
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    .line 488
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 496
    .end local v4    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_a
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 497
    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 245
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->pointToPosition(II)I

    move-result v0

    .line 389
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 396
    .end local v0    # "position":I
    :goto_0
    return v0

    .line 394
    .restart local v0    # "position":I
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 395
    if-gtz p1, :cond_0

    .line 396
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    .line 374
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 376
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 377
    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    .line 380
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 401
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    if-nez v3, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 403
    .local v2, "y":I
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 404
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v3, v1

    .line 405
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v3, v2, :cond_0

    iget v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 407
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v3

    .line 415
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v1    # "i":I
    .end local v2    # "y":I
    :goto_0
    return v3

    .line 409
    .restart local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v1    # "i":I
    .restart local v2    # "y":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v1    # "i":I
    .end local v2    # "y":I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 207
    .local v7, "height":I
    const/4 v11, 0x0

    .line 208
    .local v11, "windowTop":I
    move v10, v7

    .line 210
    .local v10, "windowBottom":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    .line 212
    .local v6, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_0

    .line 213
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v0, :cond_1

    .line 214
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    .line 210
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 216
    iget v10, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 222
    .end local v6    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 223
    .local v9, "selectedView":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 224
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v11, :cond_5

    .line 225
    invoke-virtual {p0, p3, v11}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 231
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 234
    :cond_4
    return-void

    .line 226
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 227
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 125
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/AutoScrollListView;->onLayout(ZIIII)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    .line 127
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    .line 128
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    .line 156
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 157
    .local v0, "count":I
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 158
    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .line 159
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    .line 160
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 168
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/common/list/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 163
    .local v1, "headers":[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 164
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 175
    .end local v1    # "headers":[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v2    # "i":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 176
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    .line 177
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 180
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    .line 181
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 183
    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 193
    iput p2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    .line 194
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 197
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 37
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 136
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 137
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 7
    .param p1, "viewIndex"    # I
    .param p2, "position"    # I
    .param p3, "fade"    # Z

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 308
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v6, p1

    .line 311
    .local v2, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 312
    const/4 v6, 0x2

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 313
    const/16 v6, 0xff

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 314
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v5

    .line 317
    .local v5, "top":I
    iput v5, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 318
    if-eqz p3, :cond_0

    .line 319
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v6, v5

    .line 320
    .local v0, "bottom":I
    iget v3, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    .line 321
    .local v3, "headerHeight":I
    if-ge v0, v3, :cond_0

    .line 322
    sub-int v4, v0, v3

    .line 323
    .local v4, "portion":I
    add-int v6, v3, v4

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v6, v3

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 324
    add-int v6, v5, v4

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .param p1, "viewIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 336
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 337
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 338
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 339
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 340
    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 343
    :cond_1
    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 344
    iget-wide v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 345
    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_2
    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 3
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 274
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 275
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 276
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 277
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 278
    iget-wide v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 279
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 280
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 296
    :goto_0
    return-void

    .line 281
    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    .line 282
    :cond_1
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 283
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 288
    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 289
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 290
    iget-wide v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 291
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 285
    :cond_2
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 286
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    .line 293
    :cond_3
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 294
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 257
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 258
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 259
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 260
    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 263
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 264
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 149
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 143
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    return-void
.end method
