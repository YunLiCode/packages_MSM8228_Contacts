.class Lcom/android/contacts/activities/JoinContactActivity$1;
.super Ljava/lang/Object;
.source "JoinContactActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/JoinContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/JoinContactActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity$1;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateNewContactAction()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 131
    return-void
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity$1;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 118
    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity$1;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 119
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    return-void
.end method
