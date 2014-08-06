.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;
.super Landroid/widget/ArrayAdapter;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "result":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "resId":I
    sparse-switch v0, :sswitch_data_0

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :goto_1
    return-object v1

    .line 102
    .end local v0    # "resId":I
    .end local v1    # "result":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04007b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 108
    .restart local v0    # "resId":I
    .restart local v1    # "result":Landroid/widget/TextView;
    :sswitch_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const v2, 0x7f0900e9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 115
    :sswitch_1
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const v2, 0x7f0900ea

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008f -> :sswitch_0
        0x7f0900eb -> :sswitch_1
    .end sparse-switch
.end method
