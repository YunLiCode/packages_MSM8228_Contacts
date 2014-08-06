.class Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTitleViewCache"
.end annotation


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1523
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->name:Landroid/widget/TextView;

    .line 1525
    const v0, 0x7f0b005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->icon:Landroid/widget/ImageView;

    .line 1526
    return-void
.end method
