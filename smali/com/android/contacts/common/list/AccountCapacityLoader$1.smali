.class Lcom/android/contacts/common/list/AccountCapacityLoader$1;
.super Landroid/os/Handler;
.source "AccountCapacityLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/AccountCapacityLoader;->loadAccountCapacity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$1;->this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

    iput-object p2, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$1;->val$view:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
