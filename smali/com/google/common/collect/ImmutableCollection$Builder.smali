.class public abstract Lcom/google/common/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    .local p0, "this":Lcom/google/common/collect/ImmutableCollection$Builder;, "Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/google/common/collect/ImmutableCollection$Builder;, "Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    .line 326
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/google/common/collect/ImmutableCollection$Builder;, "Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    .line 345
    :cond_0
    return-object p0
.end method
