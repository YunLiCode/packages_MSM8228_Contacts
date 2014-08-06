.class Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddConnectionViewEntry"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1282
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1285
    const v0, 0x7f090152

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mLabel:Ljava/lang/CharSequence;

    .line 1286
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 1288
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/view/View$OnClickListener;
    .param p3, "x2"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 1276
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;
    .param p2, "fragmentListener"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
