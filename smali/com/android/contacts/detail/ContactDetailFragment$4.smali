.class Lcom/android/contacts/detail/ContactDetailFragment$4;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->val$popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 989
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->val$popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/MoreContactUtils;->getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    .line 994
    :cond_0
    return-void
.end method
