.class Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTitleViewEntry"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 1258
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1259
    invoke-virtual {p2, p1}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1260
    invoke-virtual {p2, p1}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mLabel:Ljava/lang/CharSequence;

    .line 1261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 1262
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
