.class public final Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;
.super Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.source "PinnedHeaderListDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/PinnedHeaderListDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TestPinnedHeaderListAdapter"
.end annotation


# instance fields
.field private mHeaders:[Ljava/lang/String;

.field private mPinnedHeaderCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->mPinnedHeaderCount:I

    return p1
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 63
    const v1, 0x7f0b00cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "headerText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->mHeaders:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 76
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    .local v0, "text":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->mPinnedHeaderCount:I

    return v0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "viewIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040061

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 87
    return-object v1
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 71
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setHeaders([Ljava/lang/String;)V
    .locals 0
    .param p1, "headers"    # [Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListDemoActivity$TestPinnedHeaderListAdapter;->mHeaders:[Ljava/lang/String;

    .line 52
    return-void
.end method
