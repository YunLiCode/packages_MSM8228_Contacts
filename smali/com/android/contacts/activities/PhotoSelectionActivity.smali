.class public Lcom/android/contacts/activities/PhotoSelectionActivity;
.super Landroid/app/Activity;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;,
        Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimationPending:Z

.field private mBackdrop:Landroid/view/View;

.field private mCloseActivityWhenCameBackFromSubActivity:Z

.field private mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

.field private mCurrentPhotoFile:Ljava/lang/String;

.field private mExpandPhoto:Z

.field private mExpandedPhotoSize:I

.field private mHeightOffset:I

.field private mIsDirectoryContact:Z

.field private mIsProfile:Z

.field private mLookupUri:Landroid/net/Uri;

.field mOriginalPos:Landroid/graphics/Rect;

.field private mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

.field private mPhotoAnimator:Landroid/animation/ObjectAnimator;

.field private mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

.field private mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoUri:Landroid/net/Uri;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mState:Lcom/android/contacts/model/RawContactDeltaList;

.field private mSubActivityInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    .line 586
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->displayPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhotoOpen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/activities/PhotoSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    return-void
.end method

.method private animateAwayBackground()V
    .locals 5

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 476
    return-void
.end method

.method private animateInBackground()V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 471
    return-void

    .line 469
    :array_0
    .array-data 4
        0x0
        0x3f000000
    .end array-data
.end method

.method private animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "to"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    .line 465
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 466
    return-void
.end method

.method private animatePhotoOpen()V
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$4;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 433
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 434
    return-void
.end method

.method private attachPhotoHandler()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 511
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v4, 0x4

    .line 516
    .local v4, "mode":I
    :goto_0
    and-int/lit8 v4, v4, -0x3

    .line 518
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .line 520
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$800(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I
    invoke-static {v2}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$900(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$1000(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    .line 523
    iput-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    .line 534
    :goto_1
    return-void

    .line 511
    .end local v4    # "mode":I
    :cond_0
    const/16 v4, 0xe

    goto :goto_0

    .line 527
    .restart local v4    # "mode":I
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/activities/PhotoSelectionActivity$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$6;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v0, v1}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/Contact;Z)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "photoBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "photoBytes"    # [B
    .param p4, "photoBounds"    # Landroid/graphics/Rect;
    .param p5, "delta"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p6, "contactData"    # Lcom/android/contacts/model/Contact;
    .param p7, "expandPhotoOnClick"    # Z

    .prologue
    .line 299
    invoke-virtual/range {p6 .. p6}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v7

    invoke-virtual/range {p6 .. p6}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/android/contacts/activities/PhotoSelectionActivity;->buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Lcom/android/contacts/model/RawContactDeltaList;ZZLandroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Lcom/android/contacts/model/RawContactDeltaList;ZZLandroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 285
    const-string v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    :cond_0
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 288
    const-string v1, "entity_delta_list"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    const-string v1, "is_profile"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v1, "is_directory_contact"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    const-string v1, "expand_photo"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    const-string v1, "contact_lookup_uri"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    return-object v0
.end method

.method private closePhotoAndFinish()V
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$5;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 453
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 454
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateAwayBackground()V

    .line 455
    return-void
.end method

.method private displayPhoto()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 323
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 324
    .local v3, "pos":[I
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 325
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget v6, v3, v8

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 328
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    aget v6, v3, v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 329
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 330
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 331
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 333
    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 334
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 338
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    .local v2, "photoWidth":I
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 341
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v2, v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 352
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/contacts/activities/PhotoSelectionActivity$3;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$3;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 376
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->attachPhotoHandler()V

    .line 377
    return-void

    .line 343
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ColorfulPhotoUtils;->getAvatarResId(Landroid/net/Uri;)I

    move-result v1

    .line 344
    .local v1, "photoResId":I
    if-lez v1, :cond_1

    .line 345
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-static {p0, v2, v8}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(Landroid/content/Context;IZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private finishImmediatelyWithNoAnimation()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 306
    return-void
.end method

.method private getAdjustedExpandedPhotoSize(Landroid/view/View;I)I
    .locals 7
    .param p1, "enclosingView"    # Landroid/view/View;
    .param p2, "heightOffset"    # I

    .prologue
    .line 223
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 225
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 226
    .local v3, "boundsWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v4, p2

    .line 229
    .local v2, "boundsHeight":I
    int-to-float v4, v2

    iget v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 231
    .local v0, "alpha":F
    const/high16 v4, 0x3f800000

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 233
    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 235
    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    goto :goto_0
.end method

.method private getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 387
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_1

    .line 388
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 389
    iget-boolean v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    if-eqz v3, :cond_1

    .line 390
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getAdjustedExpandedPhotoSize(Landroid/view/View;I)I

    move-result v0

    .line 392
    .local v0, "adjustedPhotoSize":I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v2, v0, v3

    .line 393
    .local v2, "widthDelta":I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v1, v0, v3

    .line 394
    .local v1, "heightDelta":I
    if-ge v2, v6, :cond_0

    if-lt v1, v6, :cond_1

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 397
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 400
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 402
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 403
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 407
    .end local v0    # "adjustedPhotoSize":I
    .end local v1    # "heightDelta":I
    .end local v2    # "widthDelta":I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v3
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->closePhotoAndFinish()V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_2

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 489
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    .line 505
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    if-eqz v0, :cond_1

    .line 495
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 503
    :cond_2
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;-><init>(IILandroid/content/Intent;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v1, 0x7f04006c

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->setContentView(I)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    const-string v1, "currentphotofile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    .line 172
    const-string v1, "subinprogress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 175
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ColorfulPhotoUtils;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ColorfulPhotoUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    .line 179
    const-string v1, "entity_delta_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDeltaList;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 180
    const-string v1, "is_profile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    .line 181
    const-string v1, "is_directory_contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    .line 182
    const-string v1, "expand_photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    .line 183
    const-string v1, "contact_lookup_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mLookupUri:Landroid/net/Uri;

    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    .line 191
    const v1, 0x7f0b00e9

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    .line 192
    const v1, 0x7f0b002c

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    .line 196
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateInBackground()V

    .line 199
    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$1;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$2;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v1, v2}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 313
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->destroy()V

    .line 317
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .line 319
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 481
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "subinprogress"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    return-void
.end method
