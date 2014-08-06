.class Lcom/android/contacts/editor/EditorAnimator$2;
.super Ljava/lang/Object;
.source "EditorAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EditorAnimator;->slideAndFadeIn(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EditorAnimator;

.field final synthetic val$previousHeight:I

.field final synthetic val$target:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/contacts/editor/EditorAnimator$2;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    iput-object p2, p0, Lcom/android/contacts/editor/EditorAnimator$2;->val$target:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/android/contacts/editor/EditorAnimator$2;->val$previousHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    .line 98
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$2;->val$target:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/contacts/editor/EditorAnimator$2;->val$previousHeight:I

    sub-int v7, v2, v3

    .line 99
    .local v7, "offset":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$2;->val$target:Landroid/view/ViewGroup;

    # invokes: Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/editor/EditorAnimator;->access$000(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "viewsToMove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    neg-int v2, v7

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc8

    # invokes: Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/editor/EditorAnimator;->access$100(Ljava/util/List;Ljava/util/List;FFII)V

    .line 107
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$2;->val$target:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 109
    .local v6, "fadeInAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 111
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$2;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    # getter for: Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    invoke-static {v2}, Lcom/android/contacts/editor/EditorAnimator;->access$200(Lcom/android/contacts/editor/EditorAnimator;)Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;)V

    .line 114
    return-void

    .line 107
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
