.class Lcom/android/contacts/list/ContactTileListFragment$1;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
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
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 149
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment$3;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createFrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    .line 166
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 167
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # invokes: Lcom/android/contacts/list/ContactTileListFragment;->getEmptyStateText()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$400(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # invokes: Lcom/android/contacts/list/ContactTileListFragment;->invalidateOptionsMenuIfNeeded()V
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$500(Lcom/android/contacts/list/ContactTileListFragment;)V

    .line 172
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 175
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
