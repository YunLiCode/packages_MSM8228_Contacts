.class public Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.super Lcom/android/contacts/util/ImageViewDrawableSetter;
.source "ContactDetailPhotoSetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    .line 47
    return-void
.end method

.method private setupClickListener(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/graphics/Bitmap;Z)Landroid/view/View$OnClickListener;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactData"    # Lcom/android/contacts/model/Contact;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "expandPhotoOnClick"    # Z

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->getTarget()Landroid/widget/ImageView;

    move-result-object v6

    .line 103
    .local v6, "target":Landroid/widget/ImageView;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->getCompressedImage()[B

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;-><init>(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/graphics/Bitmap;[BZ)V

    goto :goto_0
.end method


# virtual methods
.method public setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactData"    # Lcom/android/contacts/model/Contact;
    .param p3, "photoView"    # Landroid/widget/ImageView;
    .param p4, "expandPhotoOnClick"    # Z

    .prologue
    .line 41
    invoke-virtual {p0, p3}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setTarget(Landroid/widget/ImageView;)V

    .line 42
    iput-object p2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactData:Lcom/android/contacts/model/Contact;

    .line 43
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setCompressedImage([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupClickListener(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/graphics/Bitmap;Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    return-object v1
.end method
