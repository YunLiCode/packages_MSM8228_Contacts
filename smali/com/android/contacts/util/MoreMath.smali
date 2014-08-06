.class public Lcom/android/contacts/util/MoreMath;
.super Ljava/lang/Object;
.source "MoreMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "input"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .prologue
    .line 38
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 40
    .end local p1    # "lowerBound":F
    :goto_0
    return p1

    .line 39
    .restart local p1    # "lowerBound":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 40
    goto :goto_0
.end method
