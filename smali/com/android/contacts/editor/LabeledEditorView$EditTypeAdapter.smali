.class Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LabeledEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/LabeledEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/model/account/AccountType$EditType;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasCustomSelection:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mTextColor:I

.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    .line 525
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 526
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 527
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColor:I

    .line 529
    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 532
    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "customText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 534
    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->add(Ljava/lang/Object;)V

    .line 535
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    .line 539
    .end local v0    # "customText":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->addAll(Ljava/util/Collection;)V

    .line 540
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I

    .prologue
    .line 562
    if-nez p2, :cond_1

    .line 563
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p4, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 564
    .local v1, "textView":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 565
    const v3, 0x800015

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 566
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/editor/LabeledEditorView;->access$700(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030046

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 567
    iget v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    const v3, 0x1090008

    if-ne p4, v3, :cond_0

    .line 570
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 579
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 581
    .local v2, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    sget-object v3, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    if-ne v2, v3, :cond_2

    .line 582
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v3}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "text":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    return-object v1

    .line 572
    .end local v0    # "text":Ljava/lang/String;
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_0
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    move-object v1, p2

    .line 576
    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 584
    .restart local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 554
    const v0, 0x1090009

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 548
    const v0, 0x1090008

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomSelection()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    return v0
.end method
