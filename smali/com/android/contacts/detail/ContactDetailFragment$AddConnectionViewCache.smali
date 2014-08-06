.class Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddConnectionViewCache"
.end annotation


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final name:Landroid/widget/TextView;

.field public final primaryActionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    const v0, 0x7f0b0044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->name:Landroid/widget/TextView;

    .line 1539
    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->icon:Landroid/widget/ImageView;

    .line 1540
    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->primaryActionView:Landroid/view/View;

    .line 1541
    return-void
.end method
