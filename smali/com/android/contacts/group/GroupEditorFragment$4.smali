.class Lcom/android/contacts/group/GroupEditorFragment$4;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
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
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$900(Lcom/android/contacts/group/GroupEditorFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/GroupMemberLoader;->constructLoaderForGroupEditorQuery(Landroid/content/Context;J)Lcom/android/contacts/GroupMemberLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$4;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 10
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v9, 0x2

    .line 936
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v8, "listExistingMembers":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 938
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 940
    .local v4, "contactId":J
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 941
    .local v1, "rawContactId":J
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "lookupKey":Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 943
    .local v6, "displayName":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 944
    .local v7, "photoUri":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    .end local v1    # "rawContactId":J
    .end local v3    # "lookupKey":Ljava/lang/String;
    .end local v4    # "contactId":J
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "photoUri":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->addExistingMembers(Ljava/util/List;)V
    invoke-static {v0, v8}, Lcom/android/contacts/group/GroupEditorFragment;->access$1000(Lcom/android/contacts/group/GroupEditorFragment;Ljava/util/List;)V

    .line 953
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$4;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 954
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 927
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 957
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
