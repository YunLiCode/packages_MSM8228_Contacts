.class Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;
.super Ljava/lang/Object;
.source "MultiChoiceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;
    .param p2, "x1"    # Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;-><init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    const-class v2, Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    iget-object v1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$RequestCancelListener;->this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    return-void
.end method
