.class final Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SameNameJoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/SameNameJoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/SameNameJoinActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/SameNameJoinActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    .line 418
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 419
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 423
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    const/4 v1, 0x3

    # invokes: Lcom/android/contacts/activities/SameNameJoinActivity;->setStatus(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$600(Lcom/android/contacts/activities/SameNameJoinActivity;I)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/SameNameJoinActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/SameNameJoinActivity;

    # invokes: Lcom/android/contacts/activities/SameNameJoinActivity;->startJoin(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/contacts/activities/SameNameJoinActivity;->access$800(Lcom/android/contacts/activities/SameNameJoinActivity;Landroid/database/Cursor;)V

    goto :goto_0
.end method
