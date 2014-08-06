.class Lcom/android/contacts/common/list/ContactTileView$1;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTileView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    # getter for: Lcom/android/contacts/common/list/ContactTileView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileView;->access$000(Lcom/android/contacts/common/list/ContactTileView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-static {v2, v3}, Lcom/android/contacts/common/MoreContactUtils;->getTargetRectFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
