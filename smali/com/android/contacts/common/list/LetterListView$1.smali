.class Lcom/android/contacts/common/list/LetterListView$1;
.super Ljava/lang/Object;
.source "LetterListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/LetterListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/LetterListView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/LetterListView;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/contacts/common/list/LetterListView$1;->this$0:Lcom/android/contacts/common/list/LetterListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/contacts/common/list/LetterListView$1;->this$0:Lcom/android/contacts/common/list/LetterListView;

    # getter for: Lcom/android/contacts/common/list/LetterListView;->mLetterTip:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/common/list/LetterListView;->access$000(Lcom/android/contacts/common/list/LetterListView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    return-void
.end method
