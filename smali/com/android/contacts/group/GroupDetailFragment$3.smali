.class Lcom/android/contacts/group/GroupDetailFragment$3;
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
    .line 330
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$800(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/GroupMemberLoader;->constructLoaderForGroupDetailQuery(Landroid/content/Context;J)Lcom/android/contacts/GroupMemberLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$3;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 339
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    if-nez p2, :cond_1

    const/4 v0, -0x1

    :goto_0
    # invokes: Lcom/android/contacts/group/GroupDetailFragment;->updateSize(I)V
    invoke-static {v1, v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$600(Lcom/android/contacts/group/GroupDetailFragment;I)V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$100(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 341
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$1000(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # getter for: Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$900(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 342
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    # invokes: Lcom/android/contacts/group/GroupDetailFragment;->startGroupsMetadataLoader()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$1100(Lcom/android/contacts/group/GroupDetailFragment;)V

    .line 343
    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 346
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
