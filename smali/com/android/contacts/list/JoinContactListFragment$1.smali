.class Lcom/android/contacts/list/JoinContactListFragment$1;
.super Ljava/lang/Object;
.source "JoinContactListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
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
.field final synthetic this$0:Lcom/android/contacts/list/JoinContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/JoinContactListFragment;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 72
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No loader for ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_1
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J
    invoke-static {v3}, Lcom/android/contacts/list/JoinContactListFragment;->access$000(Lcom/android/contacts/list/JoinContactListFragment;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-object v0

    .line 64
    :pswitch_2
    new-instance v8, Lcom/android/contacts/list/JoinContactLoader;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/contacts/list/JoinContactLoader;-><init>(Landroid/content/Context;)V

    .line 65
    .local v8, "loader":Lcom/android/contacts/list/JoinContactLoader;
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/JoinContactListAdapter;

    .line 66
    .local v7, "adapter":Lcom/android/contacts/list/JoinContactListAdapter;
    if-eqz v7, :cond_0

    .line 67
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v8, v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    :cond_0
    move-object v0, v8

    .line 69
    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 77
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/contacts/list/JoinContactListFragment;->showTargetContactName(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/contacts/list/JoinContactListFragment;->access$100(Lcom/android/contacts/list/JoinContactListFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object v2, p2

    .line 85
    check-cast v2, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    iget-object v1, v2, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    .local v1, "suggestionsCursor":Landroid/database/Cursor;
    move-object v2, p2

    .line 86
    check-cast v2, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    iget-object v0, v2, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->rawContactsCountMap:Ljava/util/HashMap;

    .line 87
    .local v0, "countMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # invokes: Lcom/android/contacts/list/JoinContactListFragment;->onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/HashMap;)V
    invoke-static {v2, v1, p2, v0}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/HashMap;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 95
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
