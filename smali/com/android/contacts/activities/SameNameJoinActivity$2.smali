.class Lcom/android/contacts/activities/SameNameJoinActivity$2;
.super Ljava/lang/Object;
.source "SameNameJoinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/SameNameJoinActivity;->showConfirmDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

.field final synthetic val$backPress:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/SameNameJoinActivity;Z)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/contacts/activities/SameNameJoinActivity$2;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    iput-boolean p2, p0, Lcom/android/contacts/activities/SameNameJoinActivity$2;->val$backPress:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 290
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity$2;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # invokes: Lcom/android/contacts/activities/SameNameJoinActivity;->cancelJoining()V
    invoke-static {v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$700(Lcom/android/contacts/activities/SameNameJoinActivity;)V

    .line 292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 293
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity$2;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    .line 294
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity$2;->val$backPress:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/contacts/activities/SameNameJoinActivity$2;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->finish()V

    .line 298
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method
