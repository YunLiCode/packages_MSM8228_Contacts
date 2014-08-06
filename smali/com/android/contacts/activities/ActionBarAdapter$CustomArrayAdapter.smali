.class Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textResId"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 116
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 117
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 130
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0024

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 123
    return-object v0
.end method
