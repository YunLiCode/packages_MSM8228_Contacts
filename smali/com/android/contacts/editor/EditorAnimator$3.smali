.class Lcom/android/contacts/editor/EditorAnimator$3;
.super Ljava/lang/Object;
.source "EditorAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EditorAnimator;->expandOrganization(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EditorAnimator;

.field final synthetic val$addOrganizationButton:Landroid/view/View;

.field final synthetic val$organizationSectionViewContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/editor/EditorAnimator$3;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    iput-object p2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$organizationSectionViewContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$addOrganizationButton:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const-wide/16 v9, 0xc8

    .line 129
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$organizationSectionViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$addOrganizationButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v8, v2, v3

    .line 131
    .local v8, "offset":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$addOrganizationButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 136
    .local v7, "fadeOutAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 137
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$organizationSectionViewContainer:Landroid/view/ViewGroup;

    # invokes: Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/editor/EditorAnimator;->access$000(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "viewsToMove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    neg-int v2, v8

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc8

    # invokes: Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/editor/EditorAnimator;->access$100(Ljava/util/List;Ljava/util/List;FFII)V

    .line 143
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$organizationSectionViewContainer:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 145
    .local v6, "fadeInAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 146
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 147
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    # getter for: Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    invoke-static {v2}, Lcom/android/contacts/editor/EditorAnimator;->access$200(Lcom/android/contacts/editor/EditorAnimator;)Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;)V

    .line 150
    return-void

    .line 134
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 143
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
