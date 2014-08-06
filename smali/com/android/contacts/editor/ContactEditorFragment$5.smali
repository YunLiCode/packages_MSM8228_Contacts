.class Lcom/android/contacts/editor/ContactEditorFragment$5;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
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
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1980
    new-instance v0, Lcom/android/contacts/GroupMetaDataLoader;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 1976
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$5;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    .line 1985
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;
    invoke-static {v0, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1202(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1986
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1300(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 1987
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1976
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$5;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 1991
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
