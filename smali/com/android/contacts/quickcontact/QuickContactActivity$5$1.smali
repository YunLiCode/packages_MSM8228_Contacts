.class Lcom/android/contacts/quickcontact/QuickContactActivity$5$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$5;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$5;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$5;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$5$1$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5$1$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$5$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->showContent(Ljava/lang/Runnable;)V

    .line 548
    return-void
.end method
