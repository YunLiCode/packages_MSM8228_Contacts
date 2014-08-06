.class Lcom/android/contacts/quickcontact/QuickContactActivity$5;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
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
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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
    const/4 v3, 0x0

    .line 556
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 557
    const-string v0, "QuickContact"

    const-string v1, "Lookup uri wasn\'t initialized. Loader was started too early"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 4
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    const/4 v3, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v0

    const-string v1, "lf"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V
    invoke-static {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V

    .line 552
    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :goto_0
    return-void

    .line 515
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 520
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    const-string v0, "QuickContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/model/ContactLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v1, 0x7f09012d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V
    invoke-static {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V

    goto :goto_0

    .line 528
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Lcom/android/contacts/model/Contact;)V
    invoke-static {v0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V

    .line 530
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v0

    const-string v1, "bd"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 533
    const-string v0, "ContactsPerf"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    const-string v0, "ContactsPerf"

    const-string v1, "QuickContact shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$5$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$5;)V

    invoke-static {v0, v1}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 550
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v0

    const-string v1, "QuickContact"

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 551
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {}, Lcom/android/contacts/common/util/StopWatch;->getNullStopWatch()Lcom/android/contacts/common/util/StopWatch;

    move-result-object v1

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/common/util/StopWatch;
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$602(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/util/StopWatch;)Lcom/android/contacts/common/util/StopWatch;

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 503
    check-cast p2, Lcom/android/contacts/model/Contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

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
    .line 506
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    return-void
.end method
