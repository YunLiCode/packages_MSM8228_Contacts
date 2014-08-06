.class Lcom/android/contacts/detail/ContactDetailFragment$5;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

.field final synthetic val$popupItemListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$popupItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$popupItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1002
    return-void
.end method
