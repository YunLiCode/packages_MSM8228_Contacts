.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mIsDirectoryContact:Z

.field private final mPhotoMode:I

.field private final mPhotoPickSize:I

.field private final mPhotoView:Landroid/view/View;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mState:Lcom/android/contacts/model/RawContactDeltaList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/RawContactDeltaList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoView"    # Landroid/view/View;
    .param p3, "photoMode"    # I
    .param p4, "isDirectoryContact"    # Z
    .param p5, "state"    # Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    .line 77
    iput p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    .line 78
    iput-boolean p4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    .line 79
    iput-object p5, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 80
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/lang/String;)V

    return-void
.end method

.method private doCropPhoto(Ljava/lang/String;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 278
    :try_start_0
    invoke-static {p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "newPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "croppedPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 289
    invoke-direct {p0, v3, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 290
    .local v2, "intent":Landroid/content/Intent;
    const/16 v4, 0x3ea

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v0    # "croppedPath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "newPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string v5, "Cannot crop image"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f090131

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "inputPhotoPath"    # Ljava/lang/String;
    .param p2, "croppedPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 347
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    .local v1, "inputPhotoUri":Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 349
    .local v0, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v0, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 352
    return-object v2
.end method

.method private getPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "croppedPhotoPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 337
    .local v1, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v1, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 340
    return-object v2
.end method

.method private getPhotoPickSize()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 324
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 325
    return v0

    .line 327
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getTakePhotoIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "newPhotoPath":Ljava/lang/String;
    const-string v2, "output"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 362
    return-object v0
.end method

.method private getWritableEntityIndex()I
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private goToCropImage(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    iget v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v0, p3, v1}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 183
    const-string v1, "get-content"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string v1, "type-bits"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 186
    return-void
.end method

.method private isValidFile(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "fileName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "suffix":Ljava/lang/String;
    const-string v3, "jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "bmp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseFileToUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "filename"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v8

    .line 206
    :cond_1
    :goto_0
    return-object v0

    .line 198
    :cond_2
    const/4 v7, 0x0

    .line 200
    .local v7, "imageCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 202
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 204
    .local v6, "id":I
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 208
    if-eqz v7, :cond_1

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 208
    .end local v6    # "id":I
    :cond_3
    if-eqz v7, :cond_4

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    .line 206
    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_5
    throw v0
.end method

.method private startPickFromGalleryActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 317
    return-void
.end method

.method private startTakePhotoActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getTakePhotoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 306
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 85
    return-void
.end method

.method public getDeltaForAttachingPhotoToContact()Lcom/android/contacts/model/RawContactDeltaList;
    .locals 10

    .prologue
    .line 243
    sget-object v7, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string v8, "getDeltaForAttachingPhotoToContact()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v6

    .line 246
    .local v6, "writableEntityIndex":I
    sget-object v7, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writableEntityIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 249
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v7, v6}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 250
    .local v3, "delta":Lcom/android/contacts/model/RawContactDelta;
    sget-object v7, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delta: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 253
    .local v4, "entityValues":Landroid/content/ContentValues;
    const-string v7, "account_type"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "type":Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "dataSet":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 257
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    sget-object v7, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dataSet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-static {v3, v0, v7}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 260
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 261
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/ValuesDelta;->setSuperPrimary(Z)V

    .line 263
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 265
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "dataSet":Ljava/lang/String;
    .end local v3    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "entityValues":Landroid/content/ContentValues;
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public abstract getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.end method

.method protected getWritableEntityId()J
    .locals 3

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v0

    .line 230
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v1, -0x1

    .line 231
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public handlePhotoActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    sget-object v4, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePhotoActivityResult("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/detail/PhotoSelectionHandler;->isValidFile(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 152
    :goto_0
    return v4

    .line 122
    :cond_0
    sget-object v7, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data.getData(): "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p3, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    .line 124
    .local v1, "listener":Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 125
    packed-switch p1, :pswitch_data_0

    :cond_1
    move v4, v5

    .line 152
    goto :goto_0

    .line 122
    .end local v1    # "listener":Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 128
    .restart local v1    # "listener":Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    :pswitch_0
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 133
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/detail/PhotoSelectionHandler;->parseFileToUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 136
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v3, v4, v6}, Lcom/android/contacts/detail/PhotoSelectionHandler;->goToCropImage(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_3
    move v4, v5

    .line 140
    goto :goto_0

    .line 142
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/graphics/Bitmap;)V

    move v4, v6

    .line 143
    goto :goto_0

    .line 147
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "path":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/detail/PhotoSelectionHandler;->doCropPhoto(Ljava/lang/String;)V

    move v4, v6

    .line 148
    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    .line 92
    .local v0, "listener":Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    .line 96
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/android/contacts/detail/PhotoSelectionHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$1;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 105
    :cond_0
    return-void
.end method

.method protected abstract startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
.end method
