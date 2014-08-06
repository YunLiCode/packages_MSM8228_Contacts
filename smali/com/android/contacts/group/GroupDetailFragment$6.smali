.class Lcom/android/contacts/group/GroupDetailFragment$6;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupDetailFragment;->showChooseTargetDlg(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;

.field final synthetic val$memberList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$6;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/group/GroupDetailFragment$6;->val$memberList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$6;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->listAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$1500(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 615
    .local v0, "cur":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$6;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$6;->val$memberList:Ljava/util/ArrayList;

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x2

    # invokes: Lcom/android/contacts/group/GroupDetailFragment;->handleMembers(Ljava/util/ArrayList;JI)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/group/GroupDetailFragment;->access$1600(Lcom/android/contacts/group/GroupDetailFragment;Ljava/util/ArrayList;JI)V

    .line 618
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 619
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$6;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/group/GroupDetailFragment;->mChooseTargetDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$1702(Lcom/android/contacts/group/GroupDetailFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 620
    return-void
.end method
