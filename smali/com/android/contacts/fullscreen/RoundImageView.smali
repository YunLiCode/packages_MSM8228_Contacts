.class public Lcom/android/contacts/fullscreen/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private defaultColor:I

.field private defaultHeight:I

.field private defaultWidth:I

.field private mBorderInsideColor:I

.field private mBorderOutsideColor:I

.field private mBorderThickness:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    .line 30
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    .line 31
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    .line 33
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    .line 34
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    .line 38
    iput-object p1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    .line 30
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    .line 31
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    .line 33
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    .line 34
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    .line 43
    iput-object p1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p2}, Lcom/android/contacts/fullscreen/RoundImageView;->setCustomAttributes(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    .line 30
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    .line 31
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    .line 33
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    .line 34
    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    .line 49
    iput-object p1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0, p2}, Lcom/android/contacts/fullscreen/RoundImageView;->setCustomAttributes(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private drawCircleBorder(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "radius"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 202
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    iget v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, p2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    return-void
.end method

.method private setCustomAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/contacts/R$styleable;->roundImageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    .line 58
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    .line 61
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    .line 63
    return-void
.end method


# virtual methods
.method public getCroppedRoundBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 133
    mul-int/lit8 v7, p2, 0x2

    .line 136
    .local v7, "diameter":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 137
    .local v5, "bmpWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 138
    .local v4, "bmpHeight":I
    const/4 v14, 0x0

    .local v14, "squareWidth":I
    const/4 v13, 0x0

    .line 139
    .local v13, "squareHeight":I
    const/4 v15, 0x0

    .local v15, "x":I
    const/16 v16, 0x0

    .line 141
    .local v16, "y":I
    if-le v4, v5, :cond_1

    .line 142
    move v13, v5

    move v14, v5

    .line 143
    const/4 v15, 0x0

    .line 144
    sub-int v17, v4, v5

    div-int/lit8 v16, v17, 0x2

    .line 146
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1, v14, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 158
    .local v12, "squareBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v7, :cond_0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v7, :cond_3

    .line 160
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v12, v7, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 166
    .local v11, "scaledSrcBmp":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 168
    .local v8, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 171
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    .local v10, "rect":Landroid/graphics/Rect;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 176
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 177
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 178
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 181
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 182
    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    const/16 p1, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    const/4 v11, 0x0

    .line 190
    return-object v8

    .line 148
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "output":Landroid/graphics/Bitmap;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "scaledSrcBmp":Landroid/graphics/Bitmap;
    .end local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-ge v4, v5, :cond_2

    .line 149
    move v13, v4

    move v14, v4

    .line 150
    sub-int v17, v5, v4

    div-int/lit8 v15, v17, 0x2

    .line 151
    const/16 v16, 0x0

    .line 152
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1, v14, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 155
    .end local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v12, p1

    .restart local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 164
    :cond_3
    move-object v11, v12

    .restart local v11    # "scaledSrcBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/RoundImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/RoundImageView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/fullscreen/RoundImageView;->measure(II)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eq v1, v2, :cond_0

    .line 78
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/RoundImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    .line 84
    :cond_2
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    if-nez v0, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/RoundImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    .line 94
    :cond_3
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    if-eq v0, v2, :cond_5

    .line 96
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    :goto_1
    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 99
    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/contacts/fullscreen/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    .line 102
    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/contacts/fullscreen/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    .line 120
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/fullscreen/RoundImageView;->getCroppedRoundBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v3, v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 96
    :cond_4
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    goto :goto_1

    .line 104
    :cond_5
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    if-ne v0, v2, :cond_7

    .line 106
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    if-ge v0, v2, :cond_6

    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    :goto_3
    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    sub-int/2addr v0, v2

    .line 108
    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/contacts/fullscreen/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    goto :goto_2

    .line 106
    :cond_6
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    goto :goto_3

    .line 110
    :cond_7
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderInsideColor:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultColor:I

    if-eq v0, v2, :cond_9

    .line 112
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    if-ge v0, v2, :cond_8

    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    :goto_4
    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    sub-int/2addr v0, v2

    .line 114
    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderThickness:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/contacts/fullscreen/RoundImageView;->mBorderOutsideColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/contacts/fullscreen/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    goto :goto_2

    .line 112
    :cond_8
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    goto :goto_4

    .line 117
    :cond_9
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    iget v2, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    if-ge v0, v2, :cond_a

    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultWidth:I

    :goto_5
    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/android/contacts/fullscreen/RoundImageView;->defaultHeight:I

    goto :goto_5
.end method
