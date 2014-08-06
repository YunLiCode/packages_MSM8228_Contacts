.class Lcom/android/contacts/common/ContactPhotoManager$ColorfulPhotoImageProvider;
.super Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorfulPhotoImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/ContactPhotoManager$1;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$ColorfulPhotoImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZ)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "extent"    # I
    .param p3, "darkTheme"    # Z

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ColorfulPhotoUtils;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ColorfulPhotoUtils;

    move-result-object v2

    const v1, 0x7f0b0013

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/ColorfulPhotoUtils;->getPhotoResId(Landroid/net/Uri;)I

    move-result v0

    .line 127
    .local v0, "photoResId":I
    if-lez v0, :cond_0

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(Landroid/content/Context;IZ)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
