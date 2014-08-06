.class Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentClickListener"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    .line 246
    iput-object p2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    .line 247
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 254
    return-void
.end method
