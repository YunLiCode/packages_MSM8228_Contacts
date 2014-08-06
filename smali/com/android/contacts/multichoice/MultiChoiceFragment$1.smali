.class Lcom/android/contacts/multichoice/MultiChoiceFragment$1;
.super Ljava/lang/Object;
.source "MultiChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiChoiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment$1;->this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment$1;->this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/multichoice/MultiChoiceFragment$1;->this$0:Lcom/android/contacts/multichoice/MultiChoiceFragment;

    iget-object v2, v2, Lcom/android/contacts/multichoice/MultiChoiceFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V

    .line 77
    return-void
.end method
