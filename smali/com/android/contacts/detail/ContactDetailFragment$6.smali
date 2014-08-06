.class Lcom/android/contacts/detail/ContactDetailFragment$6;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->val$onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 1147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->val$onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 1149
    return-void
.end method
