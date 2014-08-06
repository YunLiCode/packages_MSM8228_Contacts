.class public Lcom/android/contacts/common/list/LetterListView;
.super Landroid/widget/ListView;
.source "LetterListView.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mCachedBitmap:Landroid/graphics/Bitmap;

.field private static sLetters:[Ljava/lang/String;


# instance fields
.field private mFadeInRunnable:Ljava/lang/Runnable;

.field private mFadeOutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsAttachedToWindow:Z

.field private volatile mIsLetterBarEnabled:Z

.field private mLetterTip:Landroid/widget/TextView;

.field private mLettersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPreFastScrollAlwaysVisible:Z

.field private mPreFastScrollEnabled:Z

.field private mPrePosition:I

.field private mPreVerticalScrollBarEnabled:Z

.field private mSections:[Ljava/lang/Object;

.field private mWindowManager:Landroid/view/WindowManager;

.field private sectionOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/common/list/LetterListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/list/LetterListView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/LetterListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/LetterListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPrePosition:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mHandler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/LetterListView;->sectionOffset:I

    .line 363
    new-instance v0, Lcom/android/contacts/common/list/LetterListView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/LetterListView$1;-><init>(Lcom/android/contacts/common/list/LetterListView;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mFadeInRunnable:Ljava/lang/Runnable;

    .line 372
    new-instance v0, Lcom/android/contacts/common/list/LetterListView$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/LetterListView$2;-><init>(Lcom/android/contacts/common/list/LetterListView;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mFadeOutRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 78
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mLettersMap:Ljava/util/HashMap;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/LetterListView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/LetterListView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView;->mLetterTip:Landroid/widget/TextView;

    return-object v0
.end method

.method private clearSections()V
    .locals 6

    .prologue
    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 274
    .local v0, "found":I
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/contacts/common/list/LetterListView;->sectionOffset:I

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 276
    move v2, v0

    .local v2, "j":I
    :goto_1
    sget-object v4, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 277
    sget-object v4, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    iget-object v4, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v0, v2, 0x1

    .line 284
    :cond_0
    if-nez v0, :cond_1

    .line 285
    iget v4, p0, Lcom/android/contacts/common/list/LetterListView;->sectionOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/contacts/common/list/LetterListView;->sectionOffset:I

    .line 275
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    .end local v2    # "j":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    .line 289
    return-void
.end method

.method private disableScrollBar()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/LetterListView;->setVerticalScrollBarEnabled(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/LetterListView;->setFastScrollEnabled(Z)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/LetterListView;->setFastScrollAlwaysVisible(Z)V

    .line 119
    return-void
.end method

.method private drawLetterBar(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "parentCanvas"    # Landroid/graphics/Canvas;

    .prologue
    const v12, 0x3f99999a

    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getVerticalScrollbarWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    sput-object v9, Lcom/android/contacts/common/list/LetterListView;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 149
    new-instance v1, Landroid/graphics/Canvas;

    sget-object v9, Lcom/android/contacts/common/list/LetterListView;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->getSectionsFromIndexer()V

    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getVerticalScrollbarWidth()I

    move-result v9

    int-to-float v3, v9

    .line 153
    .local v3, "freeWidth":F
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v2, v9

    .line 154
    .local v2, "freeHeight":F
    sget-object v9, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    array-length v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v12

    const/high16 v10, 0x3f800000

    add-float/2addr v9, v10

    div-float v9, v2, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 156
    .local v8, "textSize":F
    iget-object v9, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    const/high16 v9, 0x40000000

    div-float v0, v3, v9

    .line 159
    .local v0, "START_X":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v9, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_2

    .line 160
    sget-object v9, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    aget-object v6, v9, v4

    .line 161
    .local v6, "letter":Ljava/lang/String;
    const/4 v5, 0x0

    .line 162
    .local v5, "isExists":Z
    iget-object v9, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    invoke-static {v9, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 163
    const/4 v5, 0x1

    .line 165
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_1

    const v9, -0x777778

    :goto_1
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    int-to-float v9, v4

    mul-float/2addr v9, v12

    const/high16 v10, 0x3fc00000

    add-float/2addr v9, v10

    mul-float v7, v8, v9

    .line 168
    .local v7, "startY":F
    iget-object v9, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v0, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    iget-object v9, p0, Lcom/android/contacts/common/list/LetterListView;->mLettersMap:Ljava/util/HashMap;

    sget-object v10, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    .end local v7    # "startY":F
    :cond_1
    const v9, -0x333334

    goto :goto_1

    .line 172
    .end local v5    # "isExists":Z
    .end local v6    # "letter":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/android/contacts/common/list/LetterListView;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getVerticalScrollbarWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getTop()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/contacts/common/list/LetterListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 293
    .local v0, "adapter":Landroid/widget/Adapter;
    sget-object v1, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSectionFromIndexer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-nez v0, :cond_0

    .line 295
    iput-object v4, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    .line 297
    :cond_0
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_1

    .line 298
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 300
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_2

    .line 301
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    .line 302
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->clearSections()V

    .line 306
    :goto_0
    sget-object v1, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 304
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    iput-object v4, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private initLetterTip()V
    .locals 7

    .prologue
    const/4 v1, -0x2

    .line 322
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mWindowManager:Landroid/view/WindowManager;

    .line 323
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 325
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040060

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mLetterTip:Landroid/widget/TextView;

    .line 326
    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mLetterTip:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-boolean v2, p0, Lcom/android/contacts/common/list/LetterListView;->mIsAttachedToWindow:Z

    if-nez v2, :cond_0

    .line 330
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 337
    .local v0, "wmlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 340
    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 341
    const v1, 0x7f0d0006

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 343
    iget-object v1, p0, Lcom/android/contacts/common/list/LetterListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mLetterTip:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/LetterListView;->mIsAttachedToWindow:Z

    .line 349
    .end local v0    # "wmlp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v1, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    const-string v2, "Ohh... letterTip had been attached to window!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onFastScrollTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mLettersMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/LetterListView;->pointToPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 203
    .local v0, "position":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 206
    iget v2, p0, Lcom/android/contacts/common/list/LetterListView;->mPrePosition:I

    if-eq v2, v0, :cond_0

    .line 210
    iput v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPrePosition:I

    .line 211
    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mLetterTip:Landroid/widget/TextView;

    sget-object v3, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    iget v4, p0, Lcom/android/contacts/common/list/LetterListView;->mPrePosition:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/common/list/LetterListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v1, p0, Lcom/android/contacts/common/list/LetterListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v1, p0, Lcom/android/contacts/common/list/LetterListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    iget-object v1, p0, Lcom/android/contacts/common/list/LetterListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mFadeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    sget-object v1, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/common/list/LetterListView;->mPrePosition:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/LetterListView;->scrollToPosition(Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pointToPosition(Landroid/view/MotionEvent;)I
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 261
    .local v0, "POINT_Y":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/android/contacts/common/list/LetterListView;->mLettersMap:Ljava/util/HashMap;

    sget-object v4, Lcom/android/contacts/common/list/LetterListView;->sLetters:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 263
    .local v1, "START_Y":F
    cmpg-float v3, v0, v1

    if-gtz v3, :cond_0

    .line 267
    .end local v1    # "START_Y":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 261
    .restart local v1    # "START_Y":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "START_Y":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private removeLetterTip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-boolean v1, p0, Lcom/android/contacts/common/list/LetterListView;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/list/LetterListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/LetterListView;->mLetterTip:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iput-boolean v3, p0, Lcom/android/contacts/common/list/LetterListView;->mIsAttachedToWindow:Z

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    const-string v2, "remove letter tip failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    iput-boolean v3, p0, Lcom/android/contacts/common/list/LetterListView;->mIsAttachedToWindow:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcom/android/contacts/common/list/LetterListView;->mIsAttachedToWindow:Z

    throw v1
.end method

.method private resetScrollBar()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPreVerticalScrollBarEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/LetterListView;->setVerticalScrollBarEnabled(Z)V

    .line 123
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPreFastScrollEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/LetterListView;->setFastScrollEnabled(Z)V

    .line 124
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPreFastScrollAlwaysVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/LetterListView;->setFastScrollAlwaysVisible(Z)V

    .line 125
    return-void
.end method

.method private restoreScrollBarInfo()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->isFastScrollEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPreFastScrollEnabled:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPreVerticalScrollBarEnabled:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mPreFastScrollAlwaysVisible:Z

    .line 113
    return-void
.end method

.method private scrollToPosition(Ljava/lang/String;)V
    .locals 8
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/4 v4, 0x0

    .line 233
    .local v4, "sectionIndex":I
    const/4 v2, 0x0

    .line 234
    .local v2, "isHit":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/contacts/common/list/LetterListView;->mSections:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 236
    const/4 v2, 0x1

    .line 243
    :cond_2
    if-eqz v2, :cond_0

    .line 244
    sget-boolean v5, Lcom/android/contacts/common/list/LetterListView;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 245
    sget-object v5, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "letter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sectionIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 248
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v5, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_4

    .line 249
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 251
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    instance-of v5, v0, Landroid/widget/SectionIndexer;

    if-eqz v5, :cond_0

    .line 253
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    iget v5, p0, Lcom/android/contacts/common/list/LetterListView;->sectionOffset:I

    add-int/2addr v5, v4

    invoke-interface {v0, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v3

    .line 254
    .local v3, "position":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/LetterListView;->setSelection(I)V

    goto :goto_0

    .line 239
    .end local v3    # "position":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getVerticalScrollbarWidth()I
    .locals 3

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-super {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42000000

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->dipToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/contacts/common/list/LetterListView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    const-string v1, "layoutChildren()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/LetterListView;->setLetterBarEnabled(Z)V

    .line 133
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 134
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 312
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->initLetterTip()V

    .line 313
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 318
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->removeLetterTip()V

    .line 319
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/contacts/common/list/LetterListView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/LetterListView;->drawLetterBar(Landroid/graphics/Canvas;)V

    .line 144
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/LetterListView;->onFastScrollTouchEvent(Landroid/view/MotionEvent;)Z

    .line 191
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setLetterBarEnabled(Z)V
    .locals 3
    .param p1, "letterBarEnabled"    # Z

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/contacts/common/list/LetterListView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/contacts/common/list/LetterListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLetterBarEnabled(new<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "old<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    if-ne v0, p1, :cond_3

    .line 91
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/LetterListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->disableScrollBar()V

    .line 107
    :cond_2
    :goto_0
    return-void

    .line 97
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    if-nez v0, :cond_4

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->restoreScrollBarInfo()V

    .line 101
    :cond_4
    iput-boolean p1, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    .line 102
    iget-boolean v0, p0, Lcom/android/contacts/common/list/LetterListView;->mIsLetterBarEnabled:Z

    if-eqz v0, :cond_5

    .line 103
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->disableScrollBar()V

    goto :goto_0

    .line 105
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/common/list/LetterListView;->resetScrollBar()V

    goto :goto_0
.end method
