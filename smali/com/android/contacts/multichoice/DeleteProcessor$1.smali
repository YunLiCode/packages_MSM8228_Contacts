.class Lcom/android/contacts/multichoice/DeleteProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "DeleteProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/DeleteProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/DeleteProcessor;


# direct methods
.method constructor <init>(Lcom/android/contacts/multichoice/DeleteProcessor;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/contacts/multichoice/DeleteProcessor$1;->this$0:Lcom/android/contacts/multichoice/DeleteProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/contacts/multichoice/DeleteProcessor$1;->this$0:Lcom/android/contacts/multichoice/DeleteProcessor;

    # invokes: Lcom/android/contacts/multichoice/DeleteProcessor;->getAirPlaneMode()V
    invoke-static {v1}, Lcom/android/contacts/multichoice/DeleteProcessor;->access$000(Lcom/android/contacts/multichoice/DeleteProcessor;)V

    .line 262
    :cond_0
    return-void
.end method
