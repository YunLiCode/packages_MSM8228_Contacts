.class Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field private mScrollingState:I

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 1

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->mScrollingState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p2, "x1"    # Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method

.method private renderSelectedRectangle(IF)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 637
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 638
    .local v1, "width":I
    int-to-float v2, p1

    add-float/2addr v2, p2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 639
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 626
    iput p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->mScrollingState:I

    .line 627
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 631
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->renderSelectedRectangle(IF)V

    .line 632
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 614
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    invoke-static {v1, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    .line 615
    .local v0, "actionView":Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v2, v5}, Landroid/widget/HorizontalScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 618
    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->mScrollingState:I

    if-nez v1, :cond_0

    .line 619
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->renderSelectedRectangle(IF)V

    .line 621
    :cond_0
    return-void
.end method
