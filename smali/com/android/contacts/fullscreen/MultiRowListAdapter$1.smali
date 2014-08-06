.class Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;
.super Ljava/lang/Object;
.source "MultiRowListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/fullscreen/MultiRowListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

.field final synthetic val$ContactLookupUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/fullscreen/MultiRowListAdapter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    iput-object p2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;->val$ContactLookupUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;->this$0:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    # getter for: Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mListener:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;
    invoke-static {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->access$100(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;->val$ContactLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;->onItemClicked(Landroid/net/Uri;)V

    .line 119
    return-void
.end method
