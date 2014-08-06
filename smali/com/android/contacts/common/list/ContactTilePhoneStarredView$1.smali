.class Lcom/android/contacts/common/list/ContactTilePhoneStarredView$1;
.super Ljava/lang/Object;
.source "ContactTilePhoneStarredView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTilePhoneStarredView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTilePhoneStarredView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTilePhoneStarredView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTilePhoneStarredView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneStarredView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTilePhoneStarredView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneStarredView;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTilePhoneStarredView;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTilePhoneStarredView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneStarredView;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTilePhoneStarredView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
