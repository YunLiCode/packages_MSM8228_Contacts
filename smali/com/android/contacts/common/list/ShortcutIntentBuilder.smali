.class public Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mBorderColor:I

.field private final mBorderWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    .line 73
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    .local v0, "am":Landroid/app/ActivityManager;
    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    .line 118
    iget v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    .line 122
    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    .line 124
    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderColor:I

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [B
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "bitmapData"    # [B

    .prologue
    .line 255
    invoke-direct {p0, p4}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->getPhotoBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    const-string v4, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v4, "mode"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v5, "exclude_mimes"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 276
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 287
    return-void

    .line 283
    :cond_0
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "bitmapData"    # [B
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "phoneType"    # I
    .param p6, "phoneLabel"    # Ljava/lang/String;
    .param p7, "shortcutAction"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 291
    invoke-direct {p0, p3}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->getPhotoBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    const-string v4, "tel"

    invoke-static {v4, p4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 297
    .local v2, "phoneUri":Landroid/net/Uri;
    const v4, 0x7f02000e

    invoke-direct {p0, v0, p5, p6, v4}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 311
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 314
    return-void

    .line 300
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneUri":Landroid/net/Uri;
    .end local v3    # "shortcutIntent":Landroid/content/Intent;
    :cond_0
    const-string v4, "smsto"

    invoke-static {v4, p4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 301
    .restart local v2    # "phoneUri":Landroid/net/Uri;
    const v4, 0x7f02000f

    invoke-direct {p0, v0, p5, p6, v4}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 318
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 319
    .local v0, "workPaint":Landroid/graphics/Paint;
    iget v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 323
    iget v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 324
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 325
    return-void
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "photo"    # Landroid/graphics/Bitmap;
    .param p2, "phoneType"    # I
    .param p3, "phoneLabel"    # Ljava/lang/String;
    .param p4, "actionResId"    # I

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 360
    .local v17, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v10, v5, Landroid/util/DisplayMetrics;->density:F

    .line 362
    .local v10, "density":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 366
    .local v15, "phoneIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 367
    .local v13, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 371
    .local v16, "photoPaint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 372
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 373
    new-instance v19, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 374
    .local v19, "src":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    .local v11, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v3, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 380
    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 382
    .local v4, "overlay":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 383
    new-instance v9, Landroid/text/TextPaint;

    const/16 v5, 0x101

    invoke-direct {v9, v5}, Landroid/text/TextPaint;-><init>(I)V

    .line 384
    .local v9, "textPaint":Landroid/text/TextPaint;
    const v5, 0x7f070010

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 385
    const v5, 0x7f060007

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 386
    const/high16 v5, 0x40800000

    const/4 v6, 0x0

    const/high16 v7, 0x40000000

    const v8, 0x7f060008

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 388
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 391
    .local v12, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 392
    .local v23, "workPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderColor:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 394
    const v5, 0x7f070011

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    .line 396
    .local v21, "textPadding":I
    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v21, 0x2

    add-int v20, v5, v6

    .line 397
    .local v20, "textBandHeight":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sub-int v6, v6, v20

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    move/from16 v24, v0

    sub-int v8, v8, v24

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    move-object/from16 v0, v23

    invoke-virtual {v3, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 401
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    int-to-float v0, v5

    move/from16 v18, v0

    .line 402
    .local v18, "sidePadding":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    mul-float v6, v6, v18

    sub-float/2addr v5, v6

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 404
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v22

    .line 405
    .local v22, "textWidth":F
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v7, v7

    sub-float v7, v7, v22

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v24, v0

    sub-int v8, v8, v24

    sub-int v8, v8, v21

    int-to-float v8, v8

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 410
    .end local v9    # "textPaint":Landroid/text/TextPaint;
    .end local v12    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v18    # "sidePadding":F
    .end local v20    # "textBandHeight":I
    .end local v21    # "textPadding":I
    .end local v22    # "textWidth":F
    .end local v23    # "workPaint":Landroid/graphics/Paint;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 411
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 412
    .local v14, "iconWidth":I
    const/high16 v5, 0x41a00000

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v14, v5

    const/4 v6, -0x1

    const/high16 v7, 0x41980000

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v11, v5, v6, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 414
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    neg-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mBorderWidth:I

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 415
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v15, v0, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 417
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 419
    return-object v13
.end method

.method private generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 330
    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 331
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 334
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 335
    .local v4, "photoPaint":Landroid/graphics/Paint;
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 336
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 337
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    .local v5, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v1, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
    .local v1, "dst":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v5, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 341
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 343
    iget-object v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10804b9

    iget v8, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 346
    .local v3, "overlay":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 347
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    return-object v2
.end method

.method private getPhotoBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmapData"    # [B

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    const/4 v1, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 247
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    iget v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 128
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method
