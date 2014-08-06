.class Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupMembershipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/GroupMembershipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupMembershipAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/GroupMembershipView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/GroupMembershipView;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 96
    .local p0, "this":Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;, "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    .line 97
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 98
    return-void
.end method


# virtual methods
.method public getItemIsCheckable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    .local p0, "this":Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;, "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    .local p0, "this":Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;, "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItemIsCheckable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    .local p0, "this":Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;, "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "itemView":Landroid/view/View;
    move-object v0, v1

    .line 121
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 122
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItemIsCheckable(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;, "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method
