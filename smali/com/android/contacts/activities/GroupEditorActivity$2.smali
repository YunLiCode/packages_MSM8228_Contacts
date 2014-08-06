.class Lcom/android/contacts/activities/GroupEditorActivity$2;
.super Ljava/lang/Object;
.source "GroupEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/GroupEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/contacts/activities/GroupEditorActivity$2;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$2;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    # getter for: Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$000(Lcom/android/contacts/activities/GroupEditorActivity;)Lcom/android/contacts/group/GroupEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->revert()Z

    .line 82
    return-void
.end method
