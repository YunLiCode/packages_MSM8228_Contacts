.class Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewEntryDimensions"
.end annotation


# instance fields
.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mWidePaddingLeft:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 2338
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2339
    const v0, 0x7f070003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    .line 2341
    const v0, 0x7f070036

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    .line 2343
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    const v1, 0x7f070035

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f070012

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mWidePaddingLeft:I

    .line 2346
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingRight:I

    .line 2347
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingBottom:I

    .line 2348
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 2367
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 2355
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 2359
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 2363
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    return v0
.end method

.method public getWidePaddingLeft()I
    .locals 1

    .prologue
    .line 2351
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mWidePaddingLeft:I

    return v0
.end method
