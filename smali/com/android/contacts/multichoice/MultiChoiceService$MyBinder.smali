.class public Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;
.super Landroid/os/Binder;
.source "MultiChoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/multichoice/MultiChoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/multichoice/MultiChoiceService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/multichoice/MultiChoiceService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;->this$0:Lcom/android/contacts/multichoice/MultiChoiceService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/contacts/multichoice/MultiChoiceService;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/multichoice/MultiChoiceService$MyBinder;->this$0:Lcom/android/contacts/multichoice/MultiChoiceService;

    return-object v0
.end method
