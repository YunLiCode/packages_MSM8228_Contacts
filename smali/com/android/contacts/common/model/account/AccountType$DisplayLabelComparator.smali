.class public Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;
.super Ljava/lang/Object;
.source "AccountType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayLabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/model/account/AccountType;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 612
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mCollator:Ljava/text/Collator;

    .line 615
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mContext:Landroid/content/Context;

    .line 616
    return-void
.end method

.method private getDisplayLabel(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 620
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "rhs"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->mCollator:Ljava/text/Collator;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->getDisplayLabel(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->getDisplayLabel(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p1, Lcom/android/contacts/common/model/account/AccountType;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/contacts/common/model/account/AccountType;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->compare(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)I

    move-result v0

    return v0
.end method
