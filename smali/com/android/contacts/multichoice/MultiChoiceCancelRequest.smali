.class public Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;
.super Ljava/lang/Object;
.source "MultiChoiceCancelRequest.java"


# instance fields
.field public final mJobId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "jobId"    # I

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/android/contacts/multichoice/MultiChoiceCancelRequest;->mJobId:I

    .line 13
    return-void
.end method
