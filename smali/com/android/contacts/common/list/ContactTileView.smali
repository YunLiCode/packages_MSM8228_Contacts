.class public abstract Lcom/android/contacts/common/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

.field private mHorizontalDivider:Landroid/view/View;

.field protected mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 55
    invoke-static {p1}, Lcom/android/internal/util/ColorfulPhotoUtils;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ColorfulPhotoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTileView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/ContactTileView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/android/contacts/common/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTileView$1;-><init>(Lcom/android/contacts/common/list/ContactTileView;)V

    return-object v0
.end method

.method protected abstract getApproximateImageSize()I
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected abstract isDarkTheme()Z
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 102
    if-eqz p1, :cond_b

    .line 103
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->lookupKey:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    .line 106
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 108
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v2, :cond_9

    .line 129
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mColorfulPhotoUtils:Lcom/android/internal/util/ColorfulPhotoUtils;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ColorfulPhotoUtils;->getAvatarResId(Landroid/net/Uri;)I

    move-result v0

    .line 130
    .local v0, "photoResId":I
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    .line 134
    .local v1, "photoView":Landroid/widget/ImageView;
    :goto_1
    if-eqz v1, :cond_8

    .line 135
    iget-object v2, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    if-nez v2, :cond_7

    if-lez v0, :cond_7

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .end local v0    # "photoResId":I
    .end local v1    # "photoView":Landroid/widget/ImageView;
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 148
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 155
    :cond_4
    :goto_3
    return-void

    .line 110
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 133
    .restart local v0    # "photoResId":I
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    goto :goto_1

    .line 138
    .restart local v1    # "photoView":Landroid/widget/ImageView;
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->getApproximateImageSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isDarkTheme()Z

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_2

    .line 141
    :cond_8
    sget-object v2, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v3, "Do not have photo view!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 144
    .end local v0    # "photoResId":I
    .end local v1    # "photoView":Landroid/widget/ImageView;
    :cond_9
    sget-object v2, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v3, "contactPhotoManager not set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_4

    .line 150
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 153
    :cond_b
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    const v1, 0x7f0b0075

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0b0074

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 64
    const v1, 0x7f0b007e

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0b007a

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0b0079

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    .line 69
    const v1, 0x7f0b0077

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 73
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 159
    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 94
    return-void
.end method
