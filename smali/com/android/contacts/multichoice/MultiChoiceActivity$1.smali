.class Lcom/android/contacts/multichoice/MultiChoiceActivity$1;
.super Ljava/lang/Object;
.source "MultiChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/multichoice/MultiChoiceActivity;->showActionBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiChoiceActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity$1;->this$0:Lcom/android/contacts/multichoice/MultiChoiceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity$1;->this$0:Lcom/android/contacts/multichoice/MultiChoiceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->setResult(I)V

    .line 201
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceActivity$1;->this$0:Lcom/android/contacts/multichoice/MultiChoiceActivity;

    invoke-virtual {v0}, Lcom/android/contacts/multichoice/MultiChoiceActivity;->finish()V

    .line 202
    return-void
.end method
