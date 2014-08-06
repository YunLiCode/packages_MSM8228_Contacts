.class Lcom/android/contacts/group/GroupDetailFragment$4;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 357
    new-instance v0, Lcom/android/contacts/GroupMetaDataLoader;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J
    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$800(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/GroupDetailFragment;->access$1200(Lcom/android/contacts/group/GroupDetailFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mAccountNameString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/group/GroupDetailFragment;->access$1300(Lcom/android/contacts/group/GroupDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/GroupMetaDataLoader;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$4;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$4;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # invokes: Lcom/android/contacts/group/GroupDetailFragment;->updateMemberMoveable(Landroid/database/Cursor;)V
    invoke-static {v0, p2}, Lcom/android/contacts/group/GroupDetailFragment;->access$1400(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V

    .line 363
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 353
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
