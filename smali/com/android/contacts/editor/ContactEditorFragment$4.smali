.class Lcom/android/contacts/editor/ContactEditorFragment$4;
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
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J
    invoke-static {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$702(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 1944
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$800(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 10
    .param p2, "data"    # Lcom/android/contacts/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1949
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1950
    .local v0, "loaderCurrentTime":J
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time needed for loading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J
    invoke-static {v8}, Lcom/android/contacts/editor/ContactEditorFragment;->access$700(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1953
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No contact found. Closing activity"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactNotFound()V

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1958
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v7, 0x1

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I
    invoke-static {v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1102(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 1959
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$802(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1960
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1961
    .local v4, "setDataStartTime":J
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v6, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->setData(Lcom/android/contacts/model/Contact;)V

    .line 1962
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1964
    .local v2, "setDataEndTime":J
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time needed for setting UI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1940
    check-cast p2, Lcom/android/contacts/model/Contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$4;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1969
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    return-void
.end method
