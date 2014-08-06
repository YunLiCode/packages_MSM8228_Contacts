.class Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;
.super Ljava/lang/Object;
.source "MultiChoiceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;->this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;
    .param p2, "x1"    # Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;-><init>(Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;->this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->finish()V

    .line 68
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity$CancelListener;->this$0:Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceConfirmActivity;->finish()V

    .line 73
    return-void
.end method
