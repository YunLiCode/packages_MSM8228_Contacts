.class public abstract Lcom/android/contacts/common/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManager$1;,
        Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$ColorfulPhotoImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private static s180DipInPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    .line 149
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$ColorfulPhotoImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$ColorfulPhotoImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 151
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const-class v1, Lcom/android/contacts/common/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZ)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extent"    # I
    .param p2, "darkTheme"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 89
    sget v2, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    if-ne v2, v4, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    .local v1, "r":Landroid/content/res/Resources;
    const/high16 v2, 0x43340000

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    .line 95
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    if-eq p1, v4, :cond_1

    sget v2, Lcom/android/contacts/common/ContactPhotoManager;->s180DipInPixel:I

    if-le p1, v2, :cond_1

    .line 96
    .local v0, "hires":Z
    :goto_0
    invoke-static {v0, p2}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v2

    return v2

    .line 95
    .end local v0    # "hires":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAvatarResId(ZZ)I
    .locals 1
    .param p0, "hires"    # Z
    .param p1, "darkTheme"    # Z

    .prologue
    .line 100
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0x7f020026

    .line 103
    :goto_0
    return v0

    .line 101
    :cond_0
    if-eqz p0, :cond_1

    const v0, 0x7f020027

    goto :goto_0

    .line 102
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f02002c

    goto :goto_0

    .line 103
    :cond_2
    const v0, 0x7f02002d

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    .local v0, "applicationContext":Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/ContactPhotoManager;

    .line 157
    .local v1, "service":Lcom/android/contacts/common/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 158
    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    .line 159
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "darkTheme"    # Z

    .prologue
    .line 215
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 216
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z

    .prologue
    .line 207
    sget-object v5, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 208
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZ)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z

    .prologue
    .line 181
    sget-object v5, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 182
    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 258
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 268
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract resume()V
.end method
